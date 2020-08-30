<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/4
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改仪器信息</title>
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
    <form class="layui-form"  id="f_auto" action="/updateSalary" method="post">
        <input type="hidden" value="${sessionScope.sa2.salaryId}" name="salaryId" id="salaryId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="salaryNo" class="layui-form-label">
                <span class="">员工号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="salaryNo" name="salaryNo"
                       autocomplete="off" value="${sessionScope.sa2.salaryNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="salaryName" class="layui-form-label">
                <span class="">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="salaryName" name="salaryName"
                       autocomplete="off" value="${sessionScope.sa2.salaryName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="salaryMoney" class="layui-form-label">
                <span class="">工资</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="salaryMoney" name="salaryMoney"
                       autocomplete="off" value="${sessionScope.sa2.salaryMoney}" class="layui-input">
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
