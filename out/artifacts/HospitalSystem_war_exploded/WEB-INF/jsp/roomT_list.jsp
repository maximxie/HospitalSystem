<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/6
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="com.xie.pojo.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>后台登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>

    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="./js/jquery-1.3.2.min.js"></script>
    <script src="lib/layui/layui.js"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>

    <style type="text/css">
        .layui-table{
            text-align: center;
        }
        .layui-table th{
            text-align: center;
        }
    </style>
</head>

<body>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="/findRoomT">房间病床</a>

      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findRoomT" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findRoomT" >
            <input class="layui-input" placeholder="请输入房间号" name="roomNo" id="roomNo">

            <button class="layui-btn" lay-submit lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <%--表格数据--%>
    <table class="layui-table" id="tb">
        <thead>
        <tr>
            <th>房间号</th>
            <th>房间状态</th>
            <th>病床号</th>
            <th>病床状态</th>
            <th>病人姓名</th>
        </thead>
        <tbody>
        <c:forEach items="${beds}" var="c">
            <c:set value="${c.room}" var="cc" />
            <c:set value="${c.paitient}" var="pp" />
                <tr>
                    <td>${cc.roomNo}</td>
                    <td>${cc.roomJudge}</td>
                    <td>${c.bedNo}</td>
                    <td>${c.bedJudge}</td>
                    <td>${pp.paitientName}</td>
                </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
