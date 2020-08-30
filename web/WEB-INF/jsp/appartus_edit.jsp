<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/3
  Time: 14:40
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
    <form class="layui-form"  id="f_auto" action="/updateAppartus" method="post">
        <input type="hidden" value="${sessionScope.ap2.appartusId}" name="appartusId" id="appartusId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="appartusNo" class="layui-form-label">
                <span class="">仪器号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="appartusNo" name="appartusNo"
                       autocomplete="off" value="${sessionScope.ap2.appartusNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="appartusName" class="layui-form-label">
                <span class="">名称</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="appartusName" name="appartusName"
                       autocomplete="off" value="${sessionScope.ap2.appartusName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="appartusPrice" class="layui-form-label">
                <span class="">价格</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="appartusPrice" name="appartusPrice"
                       autocomplete="off" value="${sessionScope.ap2.appartusPrice}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="appartusQuantity" class="layui-form-label">
                <span class="">库存数量</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="appartusQuantity" name="appartusQuantity"
                       autocomplete="off" value="${sessionScope.ap2.appartusQuantity}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="appartusRen" class="layui-form-label">
                <span class="">备注</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="appartusRen" name="appartusRen"
                       autocomplete="off" value="${sessionScope.ap2.appartusRen}" class="layui-input">
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

