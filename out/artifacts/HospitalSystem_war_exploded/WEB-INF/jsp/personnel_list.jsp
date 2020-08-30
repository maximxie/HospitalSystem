<%--
  Created by IntelliJ IDEA.
  User: 飘花
  Date: 2020/6/3
  Time: 19:53
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
        <a href="/findPersonnel">员工信息</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findPersonnel" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i>
    </a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findPersonnel" >
            <input class="layui-input" placeholder="请输入员工号" name="empNo" id="empNo" value="${sessionScope.u}">
            <input class="layui-input" placeholder="请输入员工姓名" name="empName" id="empName" value="${sessionScope.t}">

            <input class="layui-input" type="hidden" name="pageIndex" value="1">
            <input class="layui-input" type="hidden" name="pageSize" value="3">
            <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <xblock>
        <button id="addAppartusBtn" class="layui-btn layui-btn-normal"> <i class="layui-icon">&#xe654;</i>添加</button>
        <button class="layui-btn layui-btn-warm" lay-filter="toolbarDemo" lay-submit=""><i class="layui-icon">&#xe67c;</i>导出</button>
        <span class="x-right" style="line-height:40px">共有数据：${pe.totalCount} 条</span>
    </xblock>

    <%--表格数据--%>
    <table class="layui-table" >
        <thead>
        <tr>
            <th>ID</th>
            <th>员工号</th>
            <th>员工姓名</th>
            <th>所在部门号</th>
            <th>职务</th>
            <th>学历</th>
            <th>性别</th>
            <th>生日</th>
            <th>籍贯</th>
            <th>国籍</th>
            <th>名族</th>
            <th>身份证</th>
            <th>婚姻状况</th>
            <th>健康状况</th>
            <th>参加工作时间</th>
            <th>员工状态</th>
            <th>家庭地址</th>
            <th>联系电话</th>
            <th>联系email地址</th>
            <th>工作岗位</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${pe.list}" var="pe">
            <tr>
                <td class="myid">${pe.empId}</td>
                <td>${pe.empNo}</td>
                <td>${pe.empName}</td>
                <td>${pe.empDeptId}</td>
                <td>${pe.empDuty}</td>
                <td>${pe.empXl}</td>
                <td>${pe.empGender}</td>
                <td>${pe.empBirthday}</td>
                <td>${pe.empHometown}</td>
                <td>${pe.empCountry}</td>
                <td>${pe.empNation}</td>
                <td>${pe.empIdCard}</td>
                <td>${pe.empMarriage}</td>
                <td>${pe.empHealth}</td>
                <td>${pe.empStartWork}</td>
                <td>${pe.empState}</td>
                <td>${pe.empHomeAddress}</td>
                <td>${pe.empTeleNo}</td>
                <td>${pe.empEmail}</td>
                <td>${pe.empJobId}</td>
                <td class="td-manage">
                    <a title="编辑" class="updateEdit" href="#">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="member_del(this,'${pe.empId}')" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%--添加模态框--%>
    <div class="layui-row" id="test4" style="display: none">
        <div class="layui-col-md10" style="padding: 20px">
            <form class="layui-form" id="addEmployeeForm">


                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">员工号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empNo" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入员工号">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">姓名</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empName" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入姓名">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">所在部门号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empDeptId" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入所在部门号">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">职务</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empDuty" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入职务">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">学历</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empXl" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入学历">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">性别</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empGender" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入性别">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">生日</label>
                        <div class="layui-input-inline">
                            <input type="date" name="empBirthday" id="empBirthday" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">籍贯</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empHometown" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入籍贯">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">国籍</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empCountry" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入国籍">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">民族</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empNation" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入民族">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">身份证</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empIdCard" lay-verify="identity" autocomplete="off" class="layui-input" placeholder="请输入身份证号">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">婚姻状况</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empMarriage" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入婚姻状况">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">健康状况</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empHealth" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入健康状况">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">参加工作时间</label>
                        <div class="layui-input-inline">
                            <input type="date" name="empStartWork" id="empStartWork" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">员工状态</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empState" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入员工状态">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">家庭住址</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empHomeAddress" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入家庭住址">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">联系电话</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empTeleNo" lay-verify="phone" autocomplete="off" class="layui-input" placeholder="请输入联系电话">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">email地址</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empEmail" lay-verify="email" autocomplete="off" class="layui-input" placeholder="请输入email地址">
                        </div>
                    </div>

                </div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">工作岗位号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="empJobId" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入工作岗位号">
                        </div>
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
        <input type="hidden" id="totalPageCount" value="${pe.pageTotalCount}"/>
        <c:import url="pageBtn.jsp">
            <c:param name="totalCount" value="${pe.totalCount}"/>
            <c:param name="currentPageNo" value="${pe.pageIndex}"/>
            <c:param name="totalPageCount" value="${pe.pageTotalCount}"/>
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
        // laydate.render({
        //     elem: '#start' //指定元素
        // });
        // //日期
        // laydate.render({
        //     elem: '#empBirthday'
        // });
        // laydate.render({
        //     elem: '#empStartWork'
        // });
        form.render();

        form.on('submit(toolbarDemo)', function(){

            $.ajax({
                url: '/exportPersonnel',
                type: 'post',
                dataType: 'json',
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    console.log(data);

                    // 1. 如果需要调整顺序，请执行梳理函数
                    var dt = excel.filterExportData(data, [
                        'empId'
                        ,'empNo'
                        ,'empName'
                        ,'empDeptId'
                        ,'empDuty'
                        ,'empXl'
                        ,'empGender'
                        ,'empBirthday'
                        ,'empHometown'
                        ,'empCountry'
                        ,'empNation'
                        ,'empIdCard'
                        ,'empMarriage'
                        ,'empHealth'
                        ,'empStartWork'
                        ,'empState'
                        ,'empHomeAddress'
                        ,'empTeleNo'
                        ,'empEmail'
                        ,'empJobId'
                    ]);

                    // 2. 数组头部新增表头
                    dt.unshift({empId: 'ID', empNo: '员工号', empName: '姓名', empDeptId: '所在部门号', empDuty: '职务',
                        empXl: '学历', empGender: '性别', empBirthday: '生日', empHometown: '籍贯', empCountry: '国籍', empNation: '名族',
                        empIdCard: '身份证', empMarriage: '婚姻状况', empHealth: '健康状况', empStartWork: '参加工作时间', empState: '员工状态',
                        empHomeAddress: '家庭住址', empTeleNo: '手机号', empEmail: 'email地址', empJobId: '岗位号'});

                    // 意思是：A列40px，B列60px(默认)，C列120px，D、E、F等均未定义
                    var colConf = excel.makeColConfig({
                        'A': 40,
                        'D': 90
                    }, 60);

                    var timestart = Date.now();
                    // 3. 执行导出函数，系统会弹出弹框
                    excel.exportExcel({
                        sheet1: dt
                    }, '员工数据.xlsx', 'xlsx', {
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
                    setTimeout(function () {window.location.href='/findPersonnel';},2000);
                }
            });
        });


        /*添加弹出框*/
        $("#addAppartusBtn").click(function () {
            // alert("hello");
            layer.open({
                type:1,
                title:"添加员工",
                skin:"myclass",
                area:["860px","500px"],
                anim:2,
                content:$("#test4").html()
            });
            $("#addEmployeeForm")[0].reset();
            form.on('submit(formDemo)', function(data) {
                // layer.msg('aaa',{icon:1,time:3000});
                var param=data.field;
                //console.log(JSON.stringify(param));
                $.ajax({
                    url: '/addPersonnel',
                    type: "post",
                    data:JSON.stringify(param),
                    contentType: "application/json; charset=utf-8",
                    success:function(da){
                        console.log(da);
                        layer.msg('添加成功,记得去工资报表添加对应的员工工资哦！', {icon: 1, time: 2000});
                        setTimeout(function () {window.location.href='/findPersonnel';},2000);

                    },
                    error:function(){
                        layer.msg('添加失败',{icon:0,time:2000});
                        setTimeout(function () {window.location.href='/findPersonnel';},2000);
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
            window.location.href = "/findPersonnelById?empId=" + myid;
        }
    });


    /*删除*/
    function member_del(obj,empId){

        var tmsPower = ${sessionScope.ad.tmsPower};
        if(tmsPower != "1"){
            layer.alert("对不起，您没有权限:(");
        }
        else {
            layer.confirm('确认要删除吗？',function(index){
                $.get("/deletePersonnel",{"empId":empId},function (data) {
                    if(data = true){
                        layer.msg('删除成功!',{icon:1,time:2000});
                        setTimeout(function () {window.location.href='/findPersonnel';},2000);

                    }else {
                        layer.msg('删除失败!',{icon:1,time:2000});
                        setTimeout(function () {window.location.href='/findPersonnel';},2000);
                    }
                });
            });
        }

    }

</script>


</body>


</html>
