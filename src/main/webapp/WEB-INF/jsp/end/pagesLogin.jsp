<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/12
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>登录页面 - 光年(Light Year Admin)后台管理系统模板</title>
    <link rel="icon" href="${pageContext.request.contextPath}/static/backEnd/favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/backEnd/css/style.min.css" rel="stylesheet">
    <style>
        .lyear-wrapper {
            position: relative;
        }
        .lyear-login {
            display: flex !important;
            min-height: 100vh;
            align-items: center !important;
            justify-content: center !important;
        }
        .login-center {
            background: #fff;
            min-width: 38.25rem;
            padding: 2.14286em 3.57143em;
            border-radius: 5px;
            margin: 2.85714em 0;
        }
        .login-header {
            margin-bottom: 1.5rem !important;
        }
        .login-center .has-feedback.feedback-left .form-control {
            padding-left: 38px;
            padding-right: 12px;
        }
        .login-center .has-feedback.feedback-left .form-control-feedback {
            left: 0;
            right: auto;
            width: 38px;
            height: 38px;
            line-height: 38px;
            z-index: 4;
            color: #dcdcdc;
        }
        .login-center .has-feedback.feedback-left.row .form-control-feedback {
            left: 15px;
        }
    </style>
</head>

<body>
<div class="row lyear-wrapper">
    <div class="lyear-login">
        <div class="login-center">
            <div class="login-header text-center">
                <a href="${pageContext.request.contextPath}/end/index"> <img alt="light year admin" src="${pageContext.request.contextPath}/static/backEnd/images/logo-sidebar.png"> </a>
            </div>
            <form>
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入您的用户名" class="form-control" name="username" id="username" />
                    <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password" />
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group">
                    <button class="btn btn-block btn-primary" type="button" onclick="login()">立即登录</button>
                </div>
            </form>
            <hr>
            <footer class="col-sm-12 text-center">
                <p class="m-b-0">Copyright © 2020 <a href="#">IT书包</a>. All right reserved</p>
            </footer>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/backEnd/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var user = '<%=session.getAttribute("user")%>';
    if (users === 'null' || users === ''){
    }else {
        window.location.href = "http://localhost:8080/SSM_JIKENews_war_exploded/end/index";
    }

    function login() {
        var name = $("#username").val();
        var pass = $("#password").val();
        $.ajax({
            url:"login",
            type:"post",
            data:{username:name,password:pass},
            success:function (data) {
                if(data.code == 200){
                    window.location.href = "http://localhost:8080/SSM_JIKENews_war_exploded/end/index";
                }else {
                    alert(data.data);
                }
            }
        })
    }
</script>
</body>
</html>