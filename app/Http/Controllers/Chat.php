<?php

namespace App\Http\Controllers;

use App\Model\Multi_message;
use App\Model\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class Chat extends Controller
{
    public function index(Request $request){
        $username = session('loginUser')['username'];
        $datas = Redis::lrange(date('Y-m-d'),0,-1);
        $records = [];
        foreach ($datas as $data){
            $data = unserialize($data);
            if(in_array($username,[$data['username'],$data['to_username']]) || $data['to_username'] == '所有人'){
                array_unshift($records,$data);
            }
        }
//        $records = Multi_message::query()
//            ->whereBetween('created_at',[date('Y-m-d 00:00:00'),date('Y-m-d 23:59:59')])
//            ->where(function ($query)use ($username){
//                $query->where('username', $username)
//                    ->orWhere('to_username',$username);
//            })
//            ->orWhere('to_username','所有人')
//            ->orderBy('created_at')->get();
        return view('index',['records'=>$records]);
    }

    public function login(Request $request){
        if($request->ajax()){
            if(empty($username = $request->post('username'))) return json_encode(['info'=>'用户名不能为空','code'=>0]);
            if(empty($password = $request->post('password'))) return json_encode(['info'=>'密码不能为空','code'=>0]);
            if(!preg_match('/^[a-zA-Z0-9_]{2,20}$/',$username)){
                return json_encode(['info'=>'用户名格式错误[数字、字母、下划线，且2-20位]','code'=>0]);
            }
            if(!preg_match('/^[A-Za-z0-9_]{6,20}$/',$password)){
                return json_encode(['info'=>'密码格式错误[数字、字母、下划线，且6-20位]','code'=>0]);
            }

            $record  = User::query()->where('username',$username)->first();
            if($request->post('type') == 'login'){
                if($record['password'] != $password){
                    return json_encode(['info'=>'密码错误','code'=>0]);
                }
                session(['loginUser' => $record]);
                return json_encode(['info'=>'登录成功','code'=>1]);
            }
            if(!empty($record)) return json_encode(['info'=>'用户已存在','code'=>0]);
            User::insert([['username'=>$username,'password'=>$password]]);
            $record  = User::query()->where('username',$username)->first();
            session(['loginUser' => $record]);
            return json_encode(['info'=>'注册成功','code'=>1]);
        }

        return view('login');
    }

    public function messages(Request $request){
        $loginUser = session('loginUser');
        $data = [
            'uid'=>$loginUser['id'],
            'username'=>$loginUser['username'],
            'to_username'=>$request->post('to_client_name'),
            'content'=>$request->post('content'),
            'created_at'=>date('Y-m-d H:i:s'),
        ];

        Redis::lpush(date('Y-m-d'),serialize($data));
//        Multi_message::create();
        return json_encode(['info'=>'ok','code'=>1]);
    }

    public function loginOut(Request $request){
        $request->session()->forget('loginUser');
        return json_encode(['info'=>'ok','code'=>1]);
    }

}
