<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/6
  Time: 20:14
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
        <a href="/findPaitient">病人列表</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findPaitient" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findPaitient" >
            <input class="layui-input" placeholder="请输入ID号" name="paitientId" id="paitientId" value="${sessionScope.u}">
            <input class="layui-input" placeholder="请输入病人姓名" name="paitientName" id="paitientName" value="${sessionScope.t}">
<%--            <input class="layui-input" placeholder="请输入病人性别" name="paitientGender" id="paitientGender" >--%>
            <div class="layui-input-inline">
                <select name="paitientGender" id="paitientGender" lay-verify="required" lay-search="">
                    <option value="">选择病人性别</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>
            <input class="layui-input" type="hidden" name="pageIndex" value="1">
            <input class="layui-input" type="hidden" name="pageSize" value="3">
            <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <xblock>
        <button id="addAppartusBtn" class="layui-btn layui-btn-normal"> <i class="layui-icon">&#xe654;</i>添加</button>
        <button class="layui-btn layui-btn-warm" lay-filter="toolbarDemo" lay-submit=""><i class="layui-icon">&#xe67c;</i>导出</button>
        <span class="x-right" style="line-height:40px">共有数据：${pa.totalCount} 条</span>
    </xblock>

    <%--表格数据--%>
    <table class="layui-table" >
        <thead>
        <tr>
            <th>ID</th>
            <th>姓名</th>
            <th>性别</th>
            <th>入院时间</th>
            <th>所属科室</th>
            <th>状况</th>
            <th>主治医生</th>
            <th>医生姓名</th>
            <th>房间号</th>
            <th>床位号</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${pa.list}" var="pa">
            <c:set value="${pa.personnel}" var="pp" />
            <tr>
                <td class="myid">${pa.paitientId}</td>
                <td>${pa.paitientName}</td>
                <td>${pa.paitientGender}</td>
                <td>${pa.paitientDateStart}</td>
                <td>${pa.paitientDept}</td>
                <td>${pa.paitientState}</td>
                <td>${pa.paitientDoc}</td>
                <td>${pp.empName}</td>
                <td>${pa.paitientRoom}</td>
                <td>${pa.paitientBed}</td>
                <td class="td-manage">
                    <a title="编辑" class="updateEdit" href="#">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="member_del(this,'${pa.paitientId}')" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
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
                    <label class="layui-form-label">姓名：</label>
                    <div class="layui-input-block">
                        <input type="text" name="paitientName" class="layui-input" placeholder="请输入病人姓名">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">性别：</label>
                    <div class="layui-input-block">
                        <input type="radio" name="paitientGender" value="男" title="男" checked="">
                        <input type="radio" name="paitientGender" value="女" title="女">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">入院时间：</label>
                    <div class="layui-input-block">
                        <input type="date" name="paitientDateStart" class="layui-input" placeholder="请输入时间">
                    </div>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">所属科室：</label>
                    <div class="layui-input-block">
                        <input type="text" lay-verify="required" name="paitientDept"  class="layui-input" placeholder="请输入所属科室">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">状况：</label>
                    <div class="layui-input-block">
                        <input type="text" name="paitientState" class="layui-input" placeholder="请输入病人状况">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">主治医生：</label>
                    <div class="layui-input-block">
                        <input type="text" name="paitientDoc" class="layui-input" placeholder="请输入医生号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">房间号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="paitientRoom" class="layui-input" placeholder="请输入房间号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">病床号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="paitientBed" class="layui-input" placeholder="请输入病床号">
                    </div>
                </div>

                <div class="layui-form-item" style="text-align: center">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="" >
        <input type="hidden" id="totalPageCount" value="${pa.pageTotalCount}"/>
        <c:import url="pageBtn.jsp">
            <c:param name="totalCount" value="${pa.totalCount}"/>
            <c:param name="currentPageNo" value="${pa.pageIndex}"/>
            <c:param name="totalPageCount" value="${pa.pageTotalCount}"/>
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
                url: '/exportPaitientlist',
                type: 'post',
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    console.log(data);

                    // 1. 如果需要调整顺序，请执行梳理函数
                    var dt = excel.filterExportData(data, [
                        'paitientId'
                        ,'paitientName'
                        ,'paitientGender'
                        ,'paitientDateStart'
                        ,'paitientDept'
                        ,'paitientState'
                        ,'paitientDoc'
                        ,'paitientRoom'
                        ,'paitientBed'
                    ]);

                    // 2. 数组头部新增表头
                    dt.unshift({paitientId: 'ID', paitientName: '姓名', paitientGender: '性别', paitientDateStart: '入院时间', paitientDept: '所属科室', paitientState: '状况',
                        paitientDoc: '主治医生', paitientRoom: '房间号', paitientBed: '病床号'});

                    // 意思是：A列40px，B列60px(默认)，C列120px，D、E、F等均未定义
                    var colConf = excel.makeColConfig({
                        'A': 40,
                        'D': 90
                    }, 60);

                    var timestart = Date.now();
                    // 3. 执行导出函数，系统会弹出弹框
                    excel.exportExcel({
                        sheet1: dt
                    }, '病人列表.xlsx', 'xlsx', {
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
                    setTimeout(function () {window.location.href='/findPaitient';},2000);
                }
            });
        });


        /*添加弹出框*/
        $("#addAppartusBtn").click(function () {
            // alert("hello");
            layer.open({
                type:1,
                title:"添加病人",
                skin:"myclass",
                area:["500px","400px"],
                anim:2,
                content:$("#test3").html()
            });
            $("#addEmployeeForm")[0].reset();
            form.on('submit(formDemo)', function(data) {
                // layer.msg('aaa',{icon:1,time:3000});
                var param=data.field;
                //console.log(JSON.stringify(param));
                $.ajax({
                    url: '/addPaitient',
                    type: "post",
                    data:JSON.stringify(param),
                    contentType: "application/json; charset=utf-8",
                    success:function(da){
                        console.log(da);
                        layer.msg('添加成功', {icon: 1, time: 2000});
                        setTimeout(function () {window.location.href='/findPaitient';},2000);

                    },
                    error:function(){
                        layer.msg('添加失败',{icon:0,time:2000});
                        setTimeout(function () {window.location.href='/findPaitient';},2000);
                    }
                });
            });
        });

    });


    /*编辑*/
    $(".updateEdit").click(function () {
        var myid = $(this).parent("td").parent("tr").children(".myid").html();
        var tmsPower = ${sessionScope.ad.tmsPower};
        if(tmsPower != "1"){
            layer.alert("对不起，您没有权限:(");
        }else {
            <%--window.location.href = "/findAdminById?a_id=${ai.a_id}";--%>
            window.location.href = "/findPaitientById?paitientId=" + myid;
        }
    });


    /*删除*/
    function member_del(obj,paitientId){

        var tmsPower = "${sessionScope.ad.tmsPower}";
        if(tmsPower != "1"){
            layer.alert("对不起，您没有权限:(");
        }
        else {
            layer.confirm('确认要删除吗？',function(index){
                //发异步删除数据
                $.get("/deletePaitient",{"paitientId":paitientId},function (data) {
                    if(data = true){
                        layer.msg('删除成功!',{icon:1,time:2000});
                        setTimeout(function () {window.location.href='/findPaitient';},2000);

                    }else {
                        layer.msg('删除失败!',{icon:1,time:2000});
                        setTimeout(function () {window.location.href='/findPaitient';},2000);
                    }
                });
            });
        }

    }

    window.onload = function(){
        $("#paitientGender").find("option[value = '"+"${sessionScope.g}"+"']").attr("selected","selected");
    }

</script>


</body>


</html>
