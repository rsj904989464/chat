<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>登录</title>
    <link href="/layui/css/layui.css" rel="stylesheet">
    <script type="text/javascript" src="/layui/layui.js"></script>
</head>
<body>
<form class="layui-form" action="" id="form">
    @csrf
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="username" autocomplete="off" placeholder="请输入用户名" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="text" name="password" autocomplete="off" placeholder="请输入密码" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="login">登录</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-submit="" lay-filter="register">注册</button>
        </div>
    </div>

    <script type="text/javascript">
        layui.use(['form'], function() {
            var form = layui.form
                ,$ = layui.$
                , layer = layui.layer;

            //监听提交
            form.on('submit(login)', function(data){
                $.post('{{route('login')}}',$('#form').serialize()+'&type=login',function (res) {
                    var res = JSON.parse(res);
                    if(!res.code){
                        layer.msg(res.info);
                        return;
                    }
                    layer.msg(res.info);
                    setTimeout(function () {
                        parent.window.location.reload();
                    },200);
                });
                return false;
            });

            form.on('submit(register)', function(data){
                $.post('{{route('login')}}',$('#form').serialize()+'&type=register',function (res) {
                    var res = JSON.parse(res);
                    if(!res.code){
                        layer.msg(res.info);
                        return;
                    }
                    layer.msg(res.info);
                    setTimeout(function () {
                        parent.window.location.reload();
                    },200);
                });
                return false;
            });


        });
    </script>

</form>
</body>
</html>
