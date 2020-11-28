<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/index/login.js"></script>

</head>
<body>
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="${pageContext.request.contextPath}" class="navbar-brand"></a>
        </div>
        <label for="toggle-checkbox" id="toggle-label" class="visible-xs-inline-block">菜单</label>
        <input type="checkbox" class="hidden" id="toggle-checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}">首页</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/front/login">登陆</a></li>
                <li><a href="${pageContext.request.contextPath}/front/signup">注册</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container container-small">
    <h1>登录
        <small>没有帐号？<a href="${pageContext.request.contextPath}/front/signup">注册</a></small>
    </h1>
    <form id="form">
        <div class="form-group">
            <label>用户名</label>
            <input id="name" type="text" name="userName" required  lay-verify="required" autocomplete="off" placeholder="请输入用户" class="form-control">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input id="password" type="password" name="password" required  lay-verify="required" autocomplete="off" placeholder="请输入密码" class="form-control">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">登录</button>
        </div>

    </form>
</div>
<div class="footer">
    Copyright © 2020 | 极客开发者2020版
</div>
</body>
</html>