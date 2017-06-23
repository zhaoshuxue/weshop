<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/view/common/com.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>注册 - 微商城</title>
    <link rel="stylesheet" type="text/css" href="/js/login/style/register-login.css">
</head>

<body>
<div id="box"><canvas class="particles-js-canvas-el" width="1600" height="499" style="width: 100%; height: 100%;"></canvas></div>
<div class="cent-box register-box">
    <div class="cent-box-header">
        <h1 class="main-title hide">微商城</h1>
        <h2 class="sub-title">我为人人 - 人人为我</h2>
    </div>

    <div class="cont-main clearfix">
        <div class="index-tab">
            <div class="index-slide-nav">
                <a href="/login/login">登录</a>
                <a href="/login/register" class="active">注册</a>
                <div class="slide-bar slide-bar1"></div>
            </div>
        </div>

        <div class="login form">
            <div class="group">
                <div class="group-ipt email">
                    <input type="email" name="email" id="email" class="ipt" placeholder="邮箱地址" required="">
                </div>
                <div class="group-ipt user">
                    <input type="text" name="user" id="user" class="ipt" placeholder="选择一个用户名" required="">
                </div>
                <div class="group-ipt password">
                    <input type="password" name="password" id="password" class="ipt" placeholder="设置登录密码" required="">
                </div>
                <div class="group-ipt password1">
                    <input type="password" name="password1" id="password1" class="ipt" placeholder="重复密码" required="">
                </div>
                <div class="group-ipt verify">
                    <input type="text" name="verify" id="verify" class="ipt" placeholder="输入验证码" required="">
                    <img src="https://console.heweather.com/verify?w=110&h=35&l=4&t=_1498236608585" class="imgcode">
                </div>
            </div>
        </div>

        <div class="button">
            <button type="submit" class="login-btn register-btn" id="button">注册</button>
        </div>
    </div>
</div>

<div class="footer">
    <p>微商城 - V1.0</p>
    <p>Designed By ZSX &amp;
        <a href="#" >联系我</a> 2017
    </p>
</div>

<script src="/js/login/js/particles.js" type="text/javascript"></script>
<script src="/js/login/js/background.js" type="text/javascript"></script>
<script src="/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/js/layer/layer.js" type="text/javascript"></script>
<script src="/js/login/js/index.js" type="text/javascript"></script>
<script>
    $('.imgcode').hover(function() {
        layer.tips("看不清？点击更换", '.verify', {
            time: 6000,
            tips: [2, "#3c3c3c"]
        })
    }, function() {
        layer.closeAll('tips');
    }).click(function() {
        $(this).attr('src', 'https://console.heweather.com/verify?w=110&h=35&l=4&t=_' + Math.random());
    })

    $(".login-btn").click(function() {
        var email = $("#email").val();
        var password = $("#password").val();
        var verify = $("#verify").val();
        // $.ajax({
        // url: 'http://www.zrong.me/home/index/userLogin',
        // type: 'post',
        // jsonp: 'jsonpcallback',
        //       jsonpCallback: "flightHandler",
        // async: false,
        // data: {
        // 	'email':email,
        // 	'password':password,
        // 	'verify':verify
        // },
        // success: function(data){
        // 	info = data.status;
        // 	layer.msg(info);
        // }
        // })

    })
    $("#remember-me").click(function() {
        var n = document.getElementById("remember-me").checked;
        if(n) {
            $(".zt").show();
        } else {
            $(".zt").hide();
        }
    })
</script>

</body>

</html>
