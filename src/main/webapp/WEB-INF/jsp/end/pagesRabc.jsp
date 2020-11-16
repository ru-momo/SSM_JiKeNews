<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/12
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>设置权限 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="${pageContext.request.contextPath}/static/backEnd/favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/style.min.css" rel="stylesheet">
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.html"><img src="${pageContext.request.contextPath}/static/backEnd/images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item"> <a href="${pageContext.request.contextPath}/end/index"><i class="mdi mdi-home"></i> 后台首页</a> </li>
                        <li class="nav-item nav-item-has-subnav active open">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i> 示例页面</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="${pageContext.request.contextPath}/end/pagesDoc">文档列表</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesGallery">图库列表</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesConfig">网站配置</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesRabc">设置权限</a> </li>
                                <li> <a href="${pageContext.request.contextPath}/end/pagesAddDoc">新增文档</a> </li>
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
                        <span class="navbar-page-title"> 示例页面 - 设置权限 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/static/backEnd/images/users/avatar.jpg" alt="笔下光年" />
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
                            <div class="card-header">
                                <h4>设置权限</h4>
                            </div>
                            <div class="card-body">

                                <form action="#!" method="post">
                                    <div class="form-group">
                                        <label for="example-text-input">角色名称</label>
                                        <input class="form-control" type="text" name="role-input" placeholder="角色名称">
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
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent" dataid="id-1" value="1">
                                                        <span> 系统管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-5" value="5">
                                                        <span> 网站设置</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-6" value="6">
                                                        <span> 配置管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-6-20"
                                                               value="20">
                                                        <span> 添加配置</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-6-21"
                                                               value="21">
                                                        <span> 编辑配置</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-6-44"
                                                               value="44">
                                                        <span> 删除配置</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-6-45"
                                                               value="45">
                                                        <span> 禁用/启用配置</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-6-46"
                                                               value="46">
                                                        <span> 设置配置值</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-7" value="7">
                                                        <span> 导航管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-7-51"
                                                               value="51">
                                                        <span> 添加导航菜单</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-7-52"
                                                               value="52">
                                                        <span> 编辑导航菜单</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-7-53"
                                                               value="53">
                                                        <span> 删除导航菜单</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-8" value="8">
                                                        <span> 栏目管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-8-40"
                                                               value="40">
                                                        <span> 添加栏目</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-8-41"
                                                               value="41">
                                                        <span> 编辑栏目</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-8-42"
                                                               value="42">
                                                        <span> 删除栏目</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-9" value="9">
                                                        <span> 权限列表</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-9-36"
                                                               value="36">
                                                        <span> 添加规则</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-9-37"
                                                               value="37">
                                                        <span> 编辑规则</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-9-38"
                                                               value="38">
                                                        <span> 删除规则</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-1-9-39"
                                                               value="39">
                                                        <span> 禁用/启用规则</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-1-73" value="73">
                                                        <span> 后台首页</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent" dataid="id-2" value="2">
                                                        <span> 用户管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-2-10" value="10">
                                                        <span> 角色管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-10-31"
                                                               value="31">
                                                        <span> 添加角色</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-10-33"
                                                               value="33">
                                                        <span> 编辑角色</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-10-34"
                                                               value="34">
                                                        <span> 删除角色</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-10-35"
                                                               value="35">
                                                        <span> 禁用/启用角色</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-2-12" value="12">
                                                        <span> 用户管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-62"
                                                               value="62">
                                                        <span> 添加用户</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-63"
                                                               value="63">
                                                        <span> 编辑用户</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-64"
                                                               value="64">
                                                        <span> 删除用户</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-2-12-65"
                                                               value="65">
                                                        <span> 启用/禁用用户</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent" dataid="id-3" value="3">
                                                        <span> 内容管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-3-13" value="13">
                                                        <span> 单页管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-13-58"
                                                               value="58">
                                                        <span> 添加单页</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-13-59"
                                                               value="59">
                                                        <span> 编辑单页</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-13-60"
                                                               value="60">
                                                        <span> 删除单页</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-3-14" value="14">
                                                        <span> 文章管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-3-15" value="15">
                                                        <span> 文档管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label
                                                            class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-15-16"
                                                               value="16">
                                                        <span> 添加文档</span>
                                                    </label>
                                                    <label
                                                            class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-15-61"
                                                               value="61">
                                                        <span> 删除文档</span>
                                                    </label>
                                                    <label
                                                            class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-15-75"
                                                               value="75">
                                                        <span> 编辑文档</span>
                                                    </label>
                                                    <label
                                                            class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-3-15-79"
                                                               value="79">
                                                        <span> 启用/禁用文档</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-3-72" value="72">
                                                        <span> 下载管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent" dataid="id-4" value="4">
                                                        <span> 扩展管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-4-17" value="17">
                                                        <span> 广告管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-17-27"
                                                               value="27">
                                                        <span> 添加广告</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-17-28"
                                                               value="28">
                                                        <span> 编辑广告</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-17-29"
                                                               value="29">
                                                        <span> 删除广告</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-17-30"
                                                               value="30">
                                                        <span> 禁用/启用广告</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-4-19" value="19">
                                                        <span> 友情链接</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-19-47"
                                                               value="47">
                                                        <span> 添加友情链接</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-19-48"
                                                               value="48">
                                                        <span> 编辑友情链接</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-19-49"
                                                               value="49">
                                                        <span> 删除友情链接</span>
                                                    </label>
                                                    <label class="lyear-checkbox checkbox-primary checkbox-inline">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-19-50"
                                                               value="50">
                                                        <span> 禁用/启用友情链接</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-20">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-parent checkbox-child"
                                                               dataid="id-4-66" value="66">
                                                        <span> 附件管理</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="p-l-40">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input name="rules[]" type="checkbox" class="checkbox-child" dataid="id-4-66-67"
                                                               value="67">
                                                        <span> 上传图片</span>
                                                    </label>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/main.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/chosen.jquery.min.js"></script>
<script type="text/javascript">
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
