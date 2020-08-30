<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/3
  Time: 22:02
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
    <form class="layui-form"  id="f_auto" action="/updatePersonnel" method="post">

        <input type="hidden" value="${sessionScope.pe2.empId}" name="empId" id="empId" class="layui-input"/>

<%--        <div class="layui-form-item">--%>
<%--            <div class="layui-inline">--%>
<%--                <label for="empNo" class="layui-form-label">--%>
<%--                    <span class="">员工号</span>--%>
<%--                </label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <input type="text" id="empNo" name="empNo"--%>
<%--                           autocomplete="off" value="${sessionScope.pe2.empNo}" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="layui-inline">--%>
<%--                <label for="empName" class="layui-form-label">--%>
<%--                    <span class="">姓名</span>--%>
<%--                </label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <input type="text" id="empName" name="empName"--%>
<%--                           autocomplete="off" value="${sessionScope.pe2.empName}" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>



        <div class="layui-form-item">
            <label for="empNo" class="layui-form-label">
                <span class="">员工号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empNo" name="empNo"
                       autocomplete="off" value="${sessionScope.pe2.empNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empName" class="layui-form-label">
                <span class="">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empName" name="empName"
                       autocomplete="off" value="${sessionScope.pe2.empName}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empDeptId" class="layui-form-label">
                <span class="">所在部门号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empDeptId" name="empDeptId"
                       autocomplete="off" value="${sessionScope.pe2.empDeptId}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empDuty" class="layui-form-label">
                <span class="">职务</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empDuty" name="empDuty"
                       autocomplete="off" value="${sessionScope.pe2.empDuty}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empXl" class="layui-form-label">
                <span class="">学历</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empXl" name="empXl"
                       autocomplete="off" value="${sessionScope.pe2.empXl}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empGender" class="layui-form-label">
                <span class="">性别</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empGender" name="empGender"
                       autocomplete="off" value="${sessionScope.pe2.empGender}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empBirthday" class="layui-form-label">
                <span class="">生日</span>
            </label>
            <div class="layui-input-inline">
                <input type="date" id="empBirthday" name="empBirthday" lay-verify="date"
                       autocomplete="off" value="${sessionScope.pe2.empBirthday}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empHometown" class="layui-form-label">
                <span class="">籍贯</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empHometown" name="empHometown"
                       autocomplete="off" value="${sessionScope.pe2.empHometown}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empCountry" class="layui-form-label">
                <span class="">国籍</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empCountry" name="empCountry"
                       autocomplete="off" value="${sessionScope.pe2.empCountry}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empNation" class="layui-form-label">
                <span class="">民族</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empNation" name="empNation"
                       autocomplete="off" value="${sessionScope.pe2.empNation}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empIdCard" class="layui-form-label">
                <span class="">身份证</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empIdCard" name="empIdCard" lay-verify="identity"
                       autocomplete="off" value="${sessionScope.pe2.empIdCard}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empMarriage" class="layui-form-label">
                <span class="">婚姻状况</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empMarriage" name="empMarriage"
                       autocomplete="off" value="${sessionScope.pe2.empMarriage}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empHealth" class="layui-form-label">
                <span class="">健康状况</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empHealth" name="empHealth"
                       autocomplete="off" value="${sessionScope.pe2.empHealth}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empStartWork" class="layui-form-label">
                <span class="">参加工作时间</span>
            </label>
            <div class="layui-input-inline">
                <input type="date" id="empStartWork" name="empStartWork" lay-verify="date"
                       autocomplete="off" value="${sessionScope.pe2.empStartWork}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empState" class="layui-form-label">
                <span class="">员工状态</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empState" name="empState"
                       autocomplete="off" value="${sessionScope.pe2.empState}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empHomeAddress" class="layui-form-label">
                <span class="">家庭住址</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empHomeAddress" name="empHomeAddress"
                       autocomplete="off" value="${sessionScope.pe2.empHomeAddress}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empTeleNo" class="layui-form-label">
                <span class="">联系电话</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empTeleNo" name="empTeleNo" lay-verify="phone"
                       autocomplete="off" value="${sessionScope.pe2.empTeleNo}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empEmail" class="layui-form-label">
                <span class="">email地址</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empEmail" name="empEmail" lay-verify="email"
                       autocomplete="off" value="${sessionScope.pe2.empEmail}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="empJobId" class="layui-form-label">
                <span class="">工作岗位号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="empJobId" name="empJobId"
                       autocomplete="off" value="${sessionScope.pe2.empJobId}" class="layui-input">
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
