<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/11
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>设置权限 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
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
                                <li> <a href="${pageContext.request.contextPath}/end/userinfo">用户管理</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesnews">新闻管理</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesImg">新闻图片管理</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesAddDoc">添加新闻</a> </li>
                                <li class="active"> <a href="${pageContext.request.contextPath}/end/pagesRabc">用户权限</a> </li>
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
                        <span class="navbar-page-title"> 示例页面 - 设置权限 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/static/images/users/avatar.jpg" alt="笔下光年" />
                                <span><%=session.getAttribute("user")%> <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="${pageContext.request.contextPath}/end/pagesProfileLogin"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesEditPwd"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
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
                            <div class="card-header">
                                <h4>设置权限</h4>
                            </div>
                            <div class="card-body">

                                <form action="getName" method="post">
                                    <div class="form-group">
                                        <label for="example-text-input">权限编号</label>
                                        <%--                                        <input class="form-control" type="text" name="role-input" placeholder="请输入权限编号" >--%>
                                        <select class="form-control" name="role-input" id="area">

                                            <option>1</option>

                                        </select>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="checkbox" type="checkbox" id="check-all">
                                                        <span> 全选</span>
                                                    </label>
                                                </th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent" dataid="id-2" value="2" >
                                                        <span> 权限管理</span>
                                                    </label>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-62"
                                                               value="62" >
                                                        <span> 查看用户权限</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-63"
                                                               value="63" >
                                                        <span> 查看新闻权限</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-64"
                                                               value="64" >
                                                        <span> 管理用户权限</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-65"
                                                               value="65" >
                                                        <span> 管理新闻权限</span>
                                                    </label>
                                                </td>
                                            </tr>


                                            </tbody>
                                        </table>
                                    </div>
                                    <input type="submit" value="提交">
                                </form>

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

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/chosen.jquery.min.js"></script>
<script type="text/javascript">
    window.onload = function(){
        $.ajax({
            url:"list",
            type:"get",
            success:function (data) {
                var list = data.data;
                console.log(list);
                $("#area").empty();
                var html  = "";
                $.each(list, function(index, item){
                    html += "<option value='"+item.id+"'>"+item.id+"</option>"
                });
                $("#area").append(html);
            }
        });
    }

    $(document).ready(function(){

    })



    $(function () {
        //动态选择框，上下级选中状态变化
        $('input.checkbox-parent').on('change', function () {
            var dataid = $(this).attr("dataid");
            $('input[dataid^=' + dataid + '-]').prop('checked', $(this).is(':checked'));
        });
        $('input.checkbox-child').on('change', function () {
            var dataid = $(this).attr("dataid");
            dataid = dataid.substring(0, dataid.lastIndexOf("-"));
            var parent = $('input[dataid=' + dataid + ']');
            if ($(this).is(':checked')) {
                parent.prop('checked', true);
                //循环到顶级
                while (dataid.lastIndexOf("-") != 2) {
                    dataid = dataid.substring(0, dataid.lastIndexOf("-"));
                    parent = $('input[dataid=' + dataid + ']');
                    parent.prop('checked', true);
                }
            } else {
                //父级
                if ($('input[dataid^=' + dataid + '-]:checked').length == 0) {
                    parent.prop('checked', false);
                    //循环到顶级
                    while (dataid.lastIndexOf("-") != 2) {
                        dataid = dataid.substring(0, dataid.lastIndexOf("-"));
                        parent = $('input[dataid=' + dataid + ']');
                        if ($('input[dataid^=' + dataid + '-]:checked').length == 0) {
                            parent.prop('checked', false);
                        }
                    }
                }
            }
        });
    });
</script>
</body>

</html>

