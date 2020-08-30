<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/7
  Time: 9:42
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
        <a href="/findPP">医生病人</a>

      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findPP" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findPP" >
            <input class="layui-input" placeholder="请输入医生员工号" name="empNo" id="empNo">
            <input class="layui-input" placeholder="请输入医生姓名" name="empName" id="empName">

            <button class="layui-btn" lay-submit lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <%--表格数据--%>
    <table class="layui-table" id="tb">
        <thead>
        <tr>
            <th>医生号</th>
            <th>医生姓名</th>
            <th>病人ID</th>
            <th>病人姓名</th>
            <th>病人性别</th>
            <th>病人状况</th>
            <th>病人入院时间</th>
        </thead>
        <tbody>
        <c:forEach items="${pas}" var="p">
            <c:set value="${p.personnel}" var="pp" />
            <tr>
                <td>${pp.empNo}</td>
                <td>${pp.empName}</td>
                <td>${p.paitientId}</td>
                <td>${p.paitientName}</td>
                <td>${p.paitientGender}</td>
                <td>${p.paitientState}</td>
                <td>${p.paitientDateStart}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
