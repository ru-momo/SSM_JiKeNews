<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/12
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>文档列表 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/style.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="${pageContext.request.contextPath}/end/index"><img src="${pageContext.request.contextPath}/static/images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item"> <a href="${pageContext.request.contextPath}/end/index"><i class="mdi mdi-home"></i> 后台首页</a> </li>
                        <li class="nav-item nav-item-has-subnav active open">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i> 示例页面</a>
                            <ul class="nav nav-subnav">
                                <li class="active"> <a href="${pageContext.request.contextPath}/end/pagesImg">文档列表</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesGallery">图库列表</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesConfig">网站配置</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesRabc">设置权限</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesAdd_doc">新增文档</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesGuide">表单向导</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesLogin">登录页面</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesError">错误页面</a> </li>
                            </ul>
                        </li>
                    </ul>
                </nav>

            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 示例页面 - 文档列表 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/static/images/users/avatar.jpg" alt="笔下光年" />
                                <span>笔下光年 <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="${pageContext.request.contextPath}/end/pagesProfileLogin"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesEditPwd"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
                                <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                <li class="divider"></li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesLogin"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title">
                                    <p>主题</p>
                                </li>
                                <li class="drop-skin-li clearfix">
                    <span class="inverse">
                      <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                      <label for="site_theme_1"></label>
                    </span>
                                    <span>
                      <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                      <label for="site_theme_2"></label>
                    </span>
                                    <span>
                      <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                      <label for="site_theme_3"></label>
                    </span>
                                </li>
                                <li class="drop-title">
                                    <p>LOGO</p>
                                </li>
                                <li class="drop-skin-li clearfix">
                    <span class="inverse">
                      <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                      <label for="logo_bg_1"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                      <label for="logo_bg_2"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                      <label for="logo_bg_3"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                      <label for="logo_bg_4"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                      <label for="logo_bg_5"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                      <label for="logo_bg_6"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                      <label for="logo_bg_7"></label>
                    </span>
                                    <span>
                      <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                      <label for="logo_bg_8"></label>
                    </span>
                                </li>
                                <li class="drop-title">
                                    <p>头部</p>
                                </li>
                                <li class="drop-skin-li clearfix">
                    <span class="inverse">
                      <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                      <label for="header_bg_1"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                      <label for="header_bg_2"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                      <label for="header_bg_3"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                      <label for="header_bg_4"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                      <label for="header_bg_5"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                      <label for="header_bg_6"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                      <label for="header_bg_7"></label>
                    </span>
                                    <span>
                      <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                      <label for="header_bg_8"></label>
                    </span>
                                </li>
                                <li class="drop-title">
                                    <p>侧边栏</p>
                                </li>
                                <li class="drop-skin-li clearfix">
                    <span class="inverse">
                      <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                      <label for="sidebar_bg_1"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                      <label for="sidebar_bg_2"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                      <label for="sidebar_bg_3"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                      <label for="sidebar_bg_4"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                      <label for="sidebar_bg_5"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                      <label for="sidebar_bg_6"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                      <label for="sidebar_bg_7"></label>
                    </span>
                                    <span>
                      <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                      <label for="sidebar_bg_8"></label>
                    </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">


                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-toolbar clearfix">
<%--                                <form class="pull-right search-bar" method="get" action="#!" role="form">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <input type="hidden" name="search_field" id="search-field" value="title">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown"
                                                    type="button" aria-haspopup="true" aria-expanded="false">
                                                标题 <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li> <a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a> </li>
                                                <li> <a tabindex="-1" href="javascript:void(0)" data-field="cat_name">栏目</a> </li>
                                            </ul>
                                        </div>
                                        <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
                                    </div>
                                </form>--%>
                                <div class="toolbar-btn-action">
                                    <a data-toggle="modal" data-target="#myModal" class="btn btn-primary m-r-5" ><i class="mdi mdi-plus"></i> 新增</a>
                                    <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
                                    <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>
                                    <a class="btn btn-danger" title="删除" href="javascript:void(0)" onclick="del()" id="delSelected"><i class="mdi mdi-window-close"></i> 批量删除</a>
                                </div>
                            </div>
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>
                                                <label class="lyear-checkbox checkbox-primary">
                                                    <input type="checkbox" id="all"><span></span>
                                                </label>
                                            </th>
                                            <th>序号</th>
                                            <th>新闻编号</th>
                                            <th>图片链接</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                       <%-- <%
                                            System.out.println(pageContext.getAttribute("page"));
                                        %>--%>
                                        <c:forEach items="${page.rows}" var="page">
                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input type="checkbox" name="id" value="${page.id}" ><span></span>
                                                    </label>
                                                </td>
                                                <td>${page.id}</td>
                                                <td>${page.newsId}</td>
                                                <td><a href="${page.img}">${page.img}</a> </td>
                                                <td>
                                                    <font class="text-success">正常</font>
                                                </td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a class="btn btn-xs btn-default" href="javascript:void(0)" onclick="delInfo(${page.id})" title="删除" data-toggle="tooltip"><i
                                                                class="mdi mdi-window-close"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ul class="pagination">
                                    <li><a href='pagesImg?pageNum=${page.page+1}&name=${name}' ${page.page == page.total ? "style='visibility: hidden;'" : ""} onclick="return click(this)">下一页</a></li>
                                    <c:forEach begin="1" end="${page.total}" var="num">
                                       <c:if test="${page.page == num}">
                                           <li class="active"><span>${num}</span></li>
                                       </c:if>
                                        <c:if test="${page.page != num}">
                                            <li><a href='pagesImg?pageNum=${num}&name=${name}'>${num}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <li><a href='pagesImg?pageNum=${page.total}'&name='${name}'>最后一页</a></li>
                                </ul>


                                <!-- 模态框（Modal） -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                    &times;
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    新增图片信息
                                                </h4>
                                            </div>
                                            <div class="modal-body">
                                                <form id="frm" enctype="multipart/form-data" method="post" onsubmit="return sumbit_sure()">

                                                    <label for="newsId">
                                                        新闻编号:<input type="text" name="newsId" id="newsId" />
                                                    </label>
                                                    <br />
                                                    <label for="img">
                                                        图片:<input type="file" name="img" id="img" />
                                                    </label>
                                                    <br />
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                                </button>
                                                <button type="button" id="btnComm" class="btn btn-primary" >
                                                    添加
                                                </button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal -->
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('.search-bar .dropdown-menu a').click(function () {
            var field = $(this).data('field') || '';
            $('#search-field').val(field);
            $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
        });
    });
    
    
    function delInfo(id) {
        if(confirm("确定要删除吗？")){
            $.ajax({
                url:"delInfo?id=" + id,
                type:"get",
                success:function (data) {
                    if(data.code == 200){
                        alert("删除成功");
                        window.location.href="pagesImg";
                    }else {
                        alert(data.data);
                    }
                }
            })
        }
    }


    $(function(){
        $("#btnComm").click(function(){
            //alert("11111")
            //表单内容序列化  参数名=参数值& 参数名=参数值
            var data = $("#frm").serialize();
            var formData = new FormData($("#frm")[0])
            console.log(data);
            alert(data)
            $.ajax({
                url:"addInfo",
                type:"post",
                data:formData,
                contentType: "json", //必须
                processData: false, //必须
                success:function(data){
                    alert("更新成功")
                    console.log(data)
                    // window.location.reload();
                }
            });
        });
    });



    //全选
    var oall=document.getElementById("all");
    var oid=document.getElementsByName("id");
    oall.onclick=function(){//勾选全选时
        for(var i=0;i<oid.length;i++){
            //所有的选择框和全选一致
            oid[i].checked=oall.checked;
        }
    };
    //点击复选框
    for(var i=0;i<oid.length;i++){
        oid[i].onclick=function(){
            //判断是否全部选中,遍历集合
            for(var j=0;j<oid.length;j++){
                if(oid[j].checked==false){
                    oall.checked=false;
                    break;
                }else{
                    oall.checked=true;
                }
            }
        };
    }
    //批量删除
    function del(){
        var r=confirm("是否确认删除选中的信息？");
        if(r==true){
            //确认删除
            var ids="";
            var n=0;
            for(var i=0;i<oid.length;i++){
                if(oid[i].checked==true){//选中为true
                    var id=oid[i].value;
                    if(n==0){
                        ids+="ids="+id;
                    }else{
                        ids+="&ids="+id;
                    }
                    n++;
                }
            }

            $.get("deleteByIds",ids,function(data){
                if(data=="ok"){
                    alert("删除成功!");
                    //删除成功后，调用action方法刷新页面信息
                    location.reload();
                    $("input[name=id]").removeAttr("checked");
                }else{
                    alert("请选中要删除的信息!");
                }
            });
            return true;
        }else{
            //不删除
            return false;
        }
    }


</script>


</body>

</html>
