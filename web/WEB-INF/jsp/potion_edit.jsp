<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/3
  Time: 15:34
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
    <form class="layui-form"  id="f_auto" action="/updatePotion" method="post">
        <input type="hidden" value="${sessionScope.po2.potionId}" name="potionId" id="potionId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="potionNo" class="layui-form-label">
                <span class="">药物号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="potionNo" name="potionNo"
                       autocomplete="off" value="${sessionScope.po2.potionNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="potionName" class="layui-form-label">
                <span class="">名称</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="potionName" name="potionName"
                       autocomplete="off" value="${sessionScope.po2.potionName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="potionPrice" class="layui-form-label">
                <span class="">价格</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="potionPrice" name="potionPrice"
                       autocomplete="off" value="${sessionScope.po2.potionPrice}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="potionQuantity" class="layui-form-label">
                <span class="">库存数量</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="potionQuantity" name="potionQuantity"
                       autocomplete="off" value="${sessionScope.po2.potionQuantity}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="potionRen" class="layui-form-label">
                <span class="">备注</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="potionRen" name="potionRen"
                       autocomplete="off" value="${sessionScope.po2.potionRen}" class="layui-input">
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
