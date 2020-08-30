<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/4
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="com.xie.pojo.Appartus" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>后台登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>

    <link rel="icon" href="/images/favicon.ico" sizes="32x32" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
    <script src="/lib/layui/layui.js"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script src="/layui_exts/excel.js"></script>

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
        <a href="/findDept">部门查询</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findDept" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findDept" >
            <input class="layui-input" placeholder="请输入部门号" name="deptNo" id="deptNo" value="${sessionScope.u}">
            <input class="layui-input" placeholder="请输入部门名称" name="deptName" id="deptName" value="${sessionScope.t}">

            <input class="layui-input" type="hidden" name="pageIndex" value="1">
            <input class="layui-input" type="hidden" name="pageSize" value="3">
            <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <xblock>
        <button id="addAppartusBtn" class="layui-btn layui-btn-normal"> <i class="layui-icon">&#xe654;</i>添加</button>
        <button class="layui-btn layui-btn-warm" lay-filter="toolbarDemo" lay-submit=""><i class="layui-icon">&#xe67c;</i>导出</button>
        <span class="x-right" style="line-height:40px">共有数据：${de.totalCount} 条</span>
    </xblock>

    <%--表格数据--%>
    <table class="layui-table" >
        <thead>
        <tr>
            <th>ID</th>
            <th>部门号</th>
            <th>部门名称</th>
            <th>部门主任号</th>
            <th>部门副主任号</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${de.list}" var="de">
            <tr>
                <td class="myid">${de.deptId}</td>
                <td>${de.deptNo}</td>
                <td>${de.deptName}</td>
                <td>${de.deptManager}</td>
                <td>${de.deptViceManager}</td>
                <td class="td-manage">
                    <a title="编辑" class="updateEdit" href="#">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%--添加模态框--%>
    <div class="layui-row" id="test3" style="display: none">
        <div class="layui-col-md10" style="padding: 20px">
            <form class="layui-form" id="addEmployeeForm">
                <div class="layui-form-item">
                    <label class="layui-form-label">部门号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptNo" class="layui-input" placeholder="请输入部门号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">部门名称：</label>
                    <div class="layui-input-block">
                        <input type="text" lay-verify="required" name="deptName"  class="layui-input" placeholder="请输入部门名称">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">部门主任号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptManager" class="layui-input" placeholder="请输入部门主任号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">部门副主任号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptViceManager" class="layui-input" placeholder="请输入部门副主任号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="" >
        <input type="hidden" id="totalPageCount" value="${de.pageTotalCount}"/>
        <c:import url="pageBtn.jsp">
            <c:param name="totalCount" value="${de.totalCount}"/>
            <c:param name="currentPageNo" value="${de.pageIndex}"/>
            <c:param name="totalPageCount" value="${de.pageTotalCount}"/>
        </c:import>
    </div>
</div>
<script>

    layui.config({
        base: 'layui_exts/',
    }).extend({
        excel: 'excel',
    });

    layui.use(['jquery', 'excel', 'form','layer','laydate'], function(){
        var form = layui.form,
            $ = layui.jquery,
            laydate = layui.laydate;
        var excel = parent.layui.excel;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        form.render();

        form.on('submit(toolbarDemo)', function(){

            $.ajax({
                url: '/exportDeptlist',
                type: 'post',
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    console.log(data);

                    // 1. 如果需要调整顺序，请执行梳理函数
                    var dt = excel.filterExportData(data, [
                        'deptId'
                        ,'deptNo'
                        ,'deptName'
                        ,'deptManager'
                        ,'deptViceManager'
                    ]);

                    // 2. 数组头部新增表头
                    dt.unshift({deptId: 'ID', deptNo: '部门号', deptName: '名称', deptManager: '部门主任号', deptViceManager: '部门副主任号'});

                    // 意思是：A列40px，B列60px(默认)，C列120px，D、E、F等均未定义
                    var colConf = excel.makeColConfig({
                        'A': 40,
                        'D': 90
                    }, 60);

                    var timestart = Date.now();
                    // 3. 执行导出函数，系统会弹出弹框
                    excel.exportExcel({
                        sheet1: dt
                    }, '部门列表.xlsx', 'xlsx', {
                        extend: {
                            '!cols': colConf
                        }
                    });
                    var timeend = Date.now();

                    var spent = (timeend - timestart) / 1000;
                    layer.alert('导出耗时 '+spent+' s');
                    //setTimeout(function () {window.location.href='/findAdmin';},2000);
                },

                error: function () {
                    //console.log(data);
                    setTimeout(function () {window.location.href='/findDept';},2000);
                }
            });
        });


        /*添加弹出框*/
        $("#addAppartusBtn").click(function () {
            // alert("hello");
            layer.open({
                type:1,
                title:"添加部门",
                skin:"myclass",
                area:["390px","380px"],
                anim:2,
                content:$("#test3").html()
            });
            $("#addEmployeeForm")[0].reset();
            form.on('submit(formDemo)', function(data) {
                // layer.msg('aaa',{icon:1,time:3000});
                var param=data.field;
                //console.log(JSON.stringify(param));
                $.ajax({
                    url: '/addDept',
                    type: "post",
                    data:JSON.stringify(param),
                    contentType: "application/json; charset=utf-8",
                    success:function(da){
                        console.log(da);
                        layer.msg('添加成功', {icon: 1, time: 2000});
                        setTimeout(function () {window.location.href='/findDept';},2000);

                    },
                    error:function(){
                        layer.msg('添加失败',{icon:0,time:2000});
                        setTimeout(function () {window.location.href='/findDept';},2000);
                    }
                });
                // return false;
            });
        });

    });


    /*编辑*/
    $(".updateEdit").click(function () {
        var myid = $(this).parent("td").parent("tr").children(".myid").html();
        var tmsPower = "${sessionScope.ad.tmsPower}";
        if(tmsPower != "1"){
            layer.alert("对不起，您没有权限:(");
        }else {
            <%--window.location.href = "/findAdminById?a_id=${ai.a_id}";--%>
            window.location.href = "/findDeptById?deptId=" + myid;
        }
    });


</script>


</body>


</html>
