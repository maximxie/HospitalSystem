<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/4
  Time: 18:26
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
    <form class="layui-form"  id="f_auto" action="/updateBed" method="post">
        <input type="hidden" value="${sessionScope.be2.bedId}" name="bedId" id="bedId" class="layui-input"/>
        <div class="layui-form-item">
            <label for="bedNo" class="layui-form-label">
                <span class="">病床号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="bedNo" name="bedNo"
                       autocomplete="off" value="${sessionScope.be2.bedNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="bedRoomId" class="layui-form-label">
                <span class="">房间号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="bedRoomId" name="bedRoomId"
                       autocomplete="off" value="${sessionScope.be2.bedRoomId}" class="layui-input">
            </div>
        </div>

<%--        <div class="layui-form-item">--%>
<%--            <label for="bedJudge" class="layui-form-label">--%>
<%--                <span class="">病床状态</span>--%>
<%--            </label>--%>
<%--            <div class="layui-input-inline">--%>
<%--                <input type="text" id="bedJudge" name="bedJudge"--%>
<%--                       autocomplete="off" value="${sessionScope.be2.bedJudge}" class="layui-input">--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="layui-form-item">
                <label class="layui-form-label">
                    <span class="">病床状态</span>
                </label>
                <div class="layui-input-inline">
                    <input type="radio" id="zy" name="bedJudge" value="占用" title="占用">
                    <input type="radio" id="wzy" name="bedJudge" value="未占用" title="未占用">
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
        var d = "${sessionScope.be2.bedJudge}";
        var ele;
        if (d == "占用"){
            ele = document.querySelector("input[type='radio'][id='zy']");
        } else if (d == "未占用"){
            ele = document.querySelector("input[type='radio'][id='wzy']");
        }
        if (ele){
            ele.checked = true;
        }
    }
</script>
</body>
</html>
