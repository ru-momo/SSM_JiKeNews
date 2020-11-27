<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/21
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>修改用户信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户信息</small>
                </h1>
            </div>
        </div>
    </div>
<%--${userInfo}--%>
    <form action="${pageContext.request.contextPath}/end/updataUser" method="post">

        <input type="hidden" name="id" value="${userInfo.id}">
        用户名：<input type="text" name="userName" value="${userInfo.userName}" ><br><br><br>
        密码：<input type="password" name="password" value="${userInfo.password}"><br><br><br>
        姓名：<input type="text" name="name" value="${userInfo.name}" ><br><br><br>
        邮箱：<input type="text" name="email" value="${userInfo.email}" ><br><br><br>
        信息：<input type="text" name="information" value="${userInfo.information}" ><br><br><br>
        手机号：<input type="text" name="telphone" value="${userInfo.telphone}" ><br><br><br>
        <input class="btn btn-primary m-r-5" href="#!" type="submit" value="修改">
    </form>

</div>

