<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/main.css">

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
    <form>
        <div class="form-group">
            <label>用户名/手机/邮箱</label>
            <input type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input type="password" class="form-control">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">登录</button>
        </div>
        <div class="form-group">
            <a href="#">忘记密码？</a>
        </div>
    </form>
</div>
<div class="footer">
    Copyright © 2020 jkdev.cn | 极客开发者2020版
</div>
</body>
</html>