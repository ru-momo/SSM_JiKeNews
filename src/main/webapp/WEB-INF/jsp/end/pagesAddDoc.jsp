<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/12
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>新增文档 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="${pageContext.request.contextPath}/static/backEnd/favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/materialdesignicons.min.css" rel="stylesheet">
    <!--标签插件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/backEnd/js/jquery-tags-input/jquery.tagsinput.min.css">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/style.min.css" rel="stylesheet">
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="${pageContext.request.contextPath}/end/index"><img src="${pageContext.request.contextPath}/static/backEnd/images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
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
                                <li class="active"> <a href="${pageContext.request.contextPath}/end/pagesAddDoc">新增文档</a> </li>
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
                        <span class="navbar-page-title"> 示例页面 - 新增文档 </span>
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
                            <div class="card-body">

                                <form action="#!" method="post" class="row">
                                    <div class="form-group col-md-12">
                                        <label for="type">栏目</label>
                                        <div class="form-controls">
                                            <select name="type" class="form-control" id="type">
                                                <option value="1">小说</option>
                                                <option value="2">古籍</option>
                                                <option value="3">专辑</option>
                                                <option value="4">自传</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="title">标题</label>
                                        <input type="text" class="form-control" id="title" name="title" value="" placeholder="请输入标题" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="seo_keywords">关键词</label>
                                        <input type="text" class="form-control" id="seo_keywords" name="seo_keywords" value=""
                                               placeholder="关键词" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="seo_description">描述</label>
                                        <textarea class="form-control" id="seo_description" name="seo_description" rows="5" value=""
                                                  placeholder="描述"></textarea>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label>多图上传</label>
                                        <div class="form-controls">

                                            <ul class="list-inline clearfix lyear-uploads-pic" id="imgAll">
                                                <!-- <li class="col-xs-4 col-sm-3 col-md-2">
                                                  <figure>
                                                    <img src="images/gallery/15.jpg" alt="图片一">
                                                    <figcaption>
                                                      <a class="btn btn-round btn-square btn-primary" href="#!"><i
                                                          class="mdi mdi-eye"></i></a>
                                                      <a class="btn btn-round btn-square btn-danger" href="#!"><i
                                                          class="mdi mdi-delete"></i></a>
                                                    </figcaption>
                                                  </figure>
                                                </li>
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                  <figure>
                                                    <img src="images/gallery/16.jpg" alt="图片二">
                                                    <figcaption>
                                                      <a class="btn btn-round btn-square btn-primary" href="#!"><i
                                                          class="mdi mdi-eye"></i></a>
                                                      <a class="btn btn-round btn-square btn-danger" href="#!"><i
                                                          class="mdi mdi-delete"></i></a>
                                                    </figcaption>
                                                  </figure>
                                                </li>
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                  <figure>
                                                    <img src="images/gallery/17.jpg" alt="图片三">
                                                    <figcaption>
                                                      <a class="btn btn-round btn-square btn-primary" href="#!"><i
                                                          class="mdi mdi-eye"></i></a>
                                                      <a class="btn btn-round btn-square btn-danger" href="#!"><i
                                                          class="mdi mdi-delete"></i></a>
                                                    </figcaption>
                                                  </figure>
                                                </li> -->
                                                <li class="col-xs-4 col-sm-3 col-md-2" id="nodelast">
                                                    <a class="pic-add" id="add-pic-btn" href="#!" title="点击上传" onclick="pull()"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="content">内容</label>
                                        <p>HTML编辑器这里就不做演示了</p>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="tags">标签</label>
                                        <input class="js-tags-input form-control" type="text" id="tags" name="tags" value="" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="sort">排序</label>
                                        <input type="text" class="form-control" id="sort" name="sort" value="0" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="status">状态</label>
                                        <div class="clearfix">
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="status" value="0"><span>禁用</span>
                                            </label>
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="status" value="1" checked><span>启用</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
                                        <button type="button" class="btn btn-default"
                                                onclick="javascript:history.back(-1);return false;">返 回</button>
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
<!--标签插件-->
<script src="${pageContext.request.contextPath}/static/backEnd/js/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/main.min.js"></script>

<script type="text/javascript">
    function pull() {
        var html = "<li class='col-xs-4 col-sm-3 col-md-2' id='node2' style='display: none;'>" +
            "<figure>" +
            "<img src='${pageContext.request.contextPath}/static/backEnd/images/gallery/17.jpg' alt='图片二'>" +
            "<figcaption>" +
            "<a class='btn btn-round btn-square btn-primary' href='#!''><i class='mdi mdi-eye'></i></a>" +
            "<a class='btn btn-round btn-square btn-danger' href='#!''><i class='mdi mdi-delete'></i></a>" +
            "<input type='file' style='display: none;' id='pullfile2'> " +
            "</figcaption>" +
            "</figure></li>";

        $("#nodelast").before(html);

        document.getElementById("pullfile2").click();

        document.getElementById("pullfile2").addEventListener("change", function () {
            $("#node2").attr("style", "display: inline;");
        });

    }




</script>
</body>

</html>
