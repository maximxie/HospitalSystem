<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/6
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改病人信息</title>
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
    <form class="layui-form"  id="f_auto" action="/updatePaitient" method="post">
        <input type="hidden" value="${sessionScope.pa2.paitientId}" name="paitientId" id="paitientId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="paitientName" class="layui-form-label">
                <span class="">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientName" name="paitientName"
                       autocomplete="off" value="${sessionScope.pa2.paitientName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">
                <span class="">性别</span>
            </label>
            <div class="layui-input-inline">
                <input type="radio" id="zy" name="paitientGender" value="男" title="男">
                <input type="radio" id="wzy" name="paitientGender" value="女" title="女">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="paitientDateStart" class="layui-form-label">
                <span class="">入院时间</span>
            </label>
            <div class="layui-input-inline">
                <input type="date" id="paitientDateStart" name="paitientDateStart"
                       autocomplete="off" value="${sessionScope.pa2.paitientDateStart}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="paitientDept" class="layui-form-label">
                <span class="">所属科室</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientDept" name="paitientDept"
                       autocomplete="off" value="${sessionScope.pa2.paitientDept}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="paitientState" class="layui-form-label">
                <span class="">状况</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientState" name="paitientState"
                       autocomplete="off" value="${sessionScope.pa2.paitientState}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="paitientDoc" class="layui-form-label">
                <span class="">主治医生</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientDoc" name="paitientDoc"
                       autocomplete="off" value="${sessionScope.pa2.paitientDoc}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="paitientRoom" class="layui-form-label">
                <span class="">房间号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientRoom" name="paitientRoom"
                       autocomplete="off" value="${sessionScope.pa2.paitientRoom}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="paitientBed" class="layui-form-label">
                <span class="">病床号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="paitientBed" name="paitientBed"
                       autocomplete="off" value="${sessionScope.pa2.paitientBed}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" id="btn_xg">
            <button  class="layui-btn" id="btn_on"  lay-submit="" lay-filter="">
                修改
            </button>
        </div>
    </form>
</div>

   <script>
    window.onload = function(){
        var d = "${sessionScope.pa2.paitientGender}";
        var ele;
        if (d == "男"){
            ele = document.querySelector("input[type='radio'][id='zy']");
        } else if (d == "女"){
            ele = document.querySelector("input[type='radio'][id='wzy']");
        }
        if (ele){
            ele.checked = true;
        }
    }
</script>
</body>
</html>
