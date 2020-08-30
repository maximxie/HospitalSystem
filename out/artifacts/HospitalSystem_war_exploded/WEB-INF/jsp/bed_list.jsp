<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/4
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="com.xie.pojo.Bed" %>
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
        <a href="/findBed">病床浏览</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findBed" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findBed" >
            <input class="layui-input" placeholder="请输入病床号" name="bedNo" id="bedNo" value="${sessionScope.u}">
            <input class="layui-input" placeholder="请输入房间号" name="bedRoomId" id="bedRoomId" value="${sessionScope.t}">

            <input class="layui-input" type="hidden" name="pageIndex" value="1">
            <input class="layui-input" type="hidden" name="pageSize" value="3">
            <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <xblock>
        <button id="addAppartusBtn" class="layui-btn layui-btn-normal"> <i class="layui-icon">&#xe654;</i>添加</button>
        <button class="layui-btn layui-btn-warm" lay-filter="toolbarDemo" lay-submit=""><i class="layui-icon">&#xe67c;</i>导出</button>
        <span class="x-right" style="line-height:40px">共有数据：${be.totalCount} 条</span>
    </xblock>

    <%--表格数据--%>
    <table class="layui-table" >
        <thead>
        <tr>
            <th>ID</th>
            <th>病床号</th>
            <th>所在房间号</th>
            <th>病床状态</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${be.list}" var="de">
            <tr>
                <td class="myid">${de.bedId}</td>
                <td>${de.bedNo}</td>
                <td>${de.bedRoomId}</td>
                <td>${de.bedJudge}</td>
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
                    <label class="layui-form-label">病床号：</label>
                    <div class="layui-input-block">
                        <input type="text" name="bedNo" class="layui-input" placeholder="请输入病床号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">房间号：</label>
                    <div class="layui-input-block">
                        <input type="text" lay-verify="required" name="bedRoomId"  class="layui-input" placeholder="请输入所在房间号">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">病床状态：</label>
                    <div class="layui-input-block">
                        <input type="radio" name="bedJudge" value="占用" title="占用">
                        <input type="radio" name="bedJudge" value="未占用" title="未占用" checked="">
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
        <input type="hidden" id="totalPageCount" value="${be.pageTotalCount}"/>
        <c:import url="pageBtn.jsp">
            <c:param name="totalCount" value="${be.totalCount}"/>
            <c:param name="currentPageNo" value="${be.pageIndex}"/>
            <c:param name="totalPageCount" value="${be.pageTotalCount}"/>
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
                url: '/exportBedlist',
                type: 'post',
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    console.log(data);

                    // 1. 如果需要调整顺序，请执行梳理函数
                    var dt = excel.filterExportData(data, [
                        'bedId'
                        ,'bedNo'
                        ,'bedRoomId'
                        ,'bedJudge'
                    ]);

                    // 2. 数组头部新增表头
                    dt.unshift({bedId: 'ID', bedNo: '病床号', bedRoomId: '所在房间号', bedJudge: '病床状态'});

                    // 意思是：A列40px，B列60px(默认)，C列120px，D、E、F等均未定义
                    var colConf = excel.makeColConfig({
                        'A': 40,
                        'D': 90
                    }, 60);

                    var timestart = Date.now();
                    // 3. 执行导出函数，系统会弹出弹框
                    excel.exportExcel({
                        sheet1: dt
                    }, '病床列表.xlsx', 'xlsx', {
                        extend: {
                            '!cols': colConf
                        }
                    });
                    var timeend = Date.now();

                    var spent = (timeend - timestart) / 1000;
                    layer.alert('导出耗时 '+spent+' s');
                },

                error: function () {
                    setTimeout(function () {window.location.href='/findBed';},2000);
                }
            });
        });


        /*添加弹出框*/
        $("#addAppartusBtn").click(function () {
            // alert("hello");
            layer.open({
                type:1,
                title:"添加病床",
                skin:"myclass",
                area:["400px","300px"],
                anim:2,
                content:$("#test3").html()
            });
            $("#addEmployeeForm")[0].reset();
            form.on('submit(formDemo)', function(data) {
                // layer.msg('aaa',{icon:1,time:3000});
                var param=data.field;
                //console.log(JSON.stringify(param));
                $.ajax({
                    url: '/addBed',
                    type: "post",
                    data:JSON.stringify(param),
                    contentType: "application/json; charset=utf-8",
                    success:function(da){
                        console.log(da);
                        layer.msg('添加成功', {icon: 1, time: 2000});
                        setTimeout(function () {window.location.href='/findBed';},2000);

                    },
                    // error:function(XMLHttpRequest, textStatus, errorThrown) {
                    //     alert("请求对象XMLHttpRequest: " + XMLHttpRequest);
                    //     alert("错误类型textStatus: " + textStatus);
                    //     alert("异常对象errorThrown: " + errorThrown);
                    // }
                    error:function(XMLHttpRequest){
                        alert(XMLHttpRequest.readyState);
                        alert(XMLHttpRequest.status);
                        layer.msg('添加失败',{icon:0,time:2000});
                        setTimeout(function () {window.location.href='/findBed';},2000);
                    }
                });
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
            window.location.href = "/findBedById?bedId=" + myid;
        }
    });


</script>


</body>


</html>
