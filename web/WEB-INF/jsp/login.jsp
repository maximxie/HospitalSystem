<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/5/29
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>医院管理系统登录</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/reset.css"/>
    <link rel="stylesheet" href="/css/usersLogin.css">
    <link rel="icon" href="/images/favicon03.ico" sizes="32x32" />
    <script src="/js/jquery-1.3.2.min.js"></script>
    <script src="/js/login.js"></script>
</head>
<body>

<div id="particles-js">
    <div class="login">
        <form id="myform" action="/login" method="post">
            <div class="login-top">登录</div>
            <div class="login-center clearfix">
                <div class="login-center-img"><img src="/img/name.png"/></div>
                <div class="login-center-input">
                    <input type="text" id="tmsUser" name="tmsUser" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'" required/>
                    <div class="login-center-input-text">用户名</div>
                </div>
            </div>
            <div class="login-center clearfix">
                <div class="login-center-img"><img src="/img/password.png"/></div>
                <div class="login-center-input">
                    <input type="password" id="tmsPswd" name="tmsPswd" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'" required/>
                    <div class="login-center-input-text">密码</div>
                </div>
            </div>
<%--            <div class="login-button" id="clickme">登录</div>--%>
            <div class="login-button">
                <input type="submit" class="login-button2">登录</input>
            </div>
        </form>
    </div>
    <div class="sk-rotating-plane"></div>
</div>
<input id="judge" style="display: none" value="${msg}"/>
<!-- scripts -->
<script src="/js/particles.min.js"></script>
<script src="/js/app.js"></script>
<script>
    window.onload = function(){
        var msg = $('#judge').val();
        if(msg == "error"){
            alert("账号不存在或密码错误！");
            var v=$('#judge').val("");//清空文本框防止退出账号时出现上条语句
        }
    }
    // $("#clickme").click(function(){
    //     // alert("ssss");
    //     var u = $('#tmsUser').val();
    //     var p = $('#tmsPswd').val();
    //     if(u !="" && p !=""){
    //         document.getElementById('myform').submit();
    //     }else{
    //         alert("账号和密码不为空！");
    //     }
    // });
</script>
<div style="text-align:center;">
    <p>@Copyright © 2020-2022 版权所有 </p>
</div>
</body>
</html>





<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <link rel="stylesheet" href="/css/usersLogin.css">--%>
<%--    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />--%>
<%--    <script src="/js/jquery-1.3.2.min.js"></script>--%>
<%--    <script src="js/login.js"></script>--%>

<%--    <title>登录首页</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="header">--%>

<%--</div>--%>

<%--<div class="body">--%>
<%--    <div class="panel">--%>
<%--        <div class="top">--%>
<%--            <p>账户登陆</p>--%>
<%--        </div>--%>

<%--        <div class="middle">--%>
<%--            <form action="/login" method="post">--%>
<%--                <%--%>
<%--                    session.setAttribute("msg", "请输入您的账号和密码：");--%>
<%--                %>--%>
<%--                <span class="erro">${msg}</span>--%>
<%--                <span class="s1"></span>--%>
<%--                <span class="s2"></span>--%>
<%--                <input type="text" name="tmsUser" class="iputs" required/>--%>
<%--                <input type="password" name="tmsPswd" class="iputs" required/>--%>
<%--                <input type="submit" value="登陆"/>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="footer">--%>
<%--    <span>@Copyright © 2019-2020 版权所有 </span>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
