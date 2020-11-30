<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/11
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/frontEnd/index/signup.js"></script>
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
    <h1>注册
        <small>已有帐号，<a href="${pageContext.request.contextPath}/front/login">登录</a></small>
    </h1>
    <form id="form">
        <div class="form-group">
            <label>用户名</label>
            <input id="name" type="text" class="form-control">
        </div>
        <div class="form-group">
            <label>密码</label>
            <input id="pass" type="password" class="form-control">
        </div>
        <div class="form-group">
            <label>确认密码</label>
            <input id="ipass" type="password" class="form-control">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">注册</button>
        </div>
        <div class="form-group">
            注册极客开发者头条即代表您同意<a href="#">极客开发者服务条款</a>
        </div>
    </form>
</div>
<div class="footer">
    Copyright © 2020 | 极客开发者2020版
</div>
</body>
</html>
