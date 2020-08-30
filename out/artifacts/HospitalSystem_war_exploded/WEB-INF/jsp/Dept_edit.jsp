<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/4
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改部门信息</title>
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
    <form class="layui-form"  id="f_auto" action="/updateDept" method="post">
        <input type="hidden" value="${sessionScope.de2.deptId}" name="deptId" id="deptId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="deptNo" class="layui-form-label">
                <span class="">部门号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="deptNo" name="deptNo"
                       autocomplete="off" value="${sessionScope.de2.deptNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="deptName" class="layui-form-label">
                <span class="">部门名称</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="deptName" name="deptName"
                       autocomplete="off" value="${sessionScope.de2.deptName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="deptManager" class="layui-form-label">
                <span class="">部门主任号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="deptManager" name="deptManager"
                       autocomplete="off" value="${sessionScope.de2.deptManager}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="deptViceManager" class="layui-form-label">
                <span class="">部门副主任号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="deptViceManager" name="deptViceManager"
                       autocomplete="off" value="${sessionScope.de2.deptViceManager}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="">
                修改
            </button>
        </div>
    </form>
</div>
</body>
</html>
