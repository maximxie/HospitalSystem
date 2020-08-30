<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改信息</title>
    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/pg_btn.css">
    <script type="text/javascript" src="./js/jquery-1.3.2.min.js"></script>
    <script src="lib/layui/layui.js"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
</head>

<body>

<div class="x-body">
    <%--把表单封装成一个Admin对象传给服务端--%>
    <form class="layui-form"  id="f_auto" action="/updateAdmin" method="post">
        <input type="hidden" value="${sessionScope.a.tmsId}" name="tmsId" id="tmsId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="tmsUser" class="layui-form-label">
                <span class="">员工号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="tmsUser" name="tmsUser"
                       autocomplete="off" value="${sessionScope.a.tmsUser}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="tmsPswd" class="layui-form-label">
                <span class="">密码</span>
            </label>
            <div class="layui-input-inline">
                <input type="password" id="tmsPswd" name="tmsPswd"
                       autocomplete="off" value="${sessionScope.a.tmsPswd}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="tmsName" class="layui-form-label">
                <span class="">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="tmsName" name="tmsName"
                       autocomplete="off" value="${sessionScope.a.tmsName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="tmsPower" class="layui-form-label">
                <span class="">级别</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="tmsPower" name="tmsPower"
                       autocomplete="off" value="${sessionScope.a.tmsPower}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="tmsDescribe" class="layui-form-label">
                <span class="">级别描述</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="tmsDescribe" name="tmsDescribe"
                       autocomplete="off" value="${sessionScope.a.tmsDescribe}" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="updateAdmin">
                修改
            </button>
        </div>
    </form>
</div>

<script>

</script>
</body>
</html>
