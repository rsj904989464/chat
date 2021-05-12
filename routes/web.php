<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('chat', 'Chat@index')->name('chat');
Route::match(['get', 'post'], 'login', 'Chat@login')->name('login');
Route::post('loginOut', 'Chat@loginOut')->name('loginOut');
Route::match(['post'], 'messages', 'Chat@messages')->name('messages');
