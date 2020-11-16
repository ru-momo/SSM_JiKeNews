<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/11
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>极客开发者</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/frontEnd/css/main.css">
</head>
<body>

<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="index.jsp" class="navbar-brand"></a>
        </div>
        <!-- class="visible-xs-inline-block"：在超小屏幕上显示-->
        <label for="toggle-checkbox" id="toggle-label" class="visible-xs-inline-block">菜单</label>
        <input type="checkbox" class="hidden" id="toggle-checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <li class="active"><a href="front/index">首页</a></li>
                <li><a href="front/internal">国内</a></li>
                <li><a href="front/external">国际</a></li>
                <li><a href="front/fastRead">速读</a></li>
                <li><a href="front/society">社会</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="front/login">登陆</a></li>
                <li><a href="front/signup">注册</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <div class="list-group side-bar hidden-xs">
                <a href="#" class="list-group-item active">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
                <a href="#" class="list-group-item">综合</a>
            </div>
        </div>
        <div class="col-sm-7">
            <div class="news-list">
                <div class="news-list-item clearfix">
                    <div class="col-xs-5">
                        <img src="static/frontEnd/img/002.jpg">
                    </div>
                    <div class="col-xs-7">
                        <a href="front/news" class="title">医保异地结算已实现：只需4步，一分钟看懂怎么办</a>
                        <div class="info">
                            <span class="avatar"><img src="static/frontEnd/img/logo.png"></span>
                            <span>王花花</span>•
                            <span>25k评论</span>•
                            <span>10分钟前</span>
                        </div>
                    </div>
                </div>
                <div class="news-list-item clearfix">
                    <div class="col-xs-5">
                        <img src="static/frontEnd/img/003.jpg">
                    </div>
                    <div class="col-xs-7">
                        <a href="front/news" class="title">医保异地结算已实现：只需4步，一分钟看懂怎么办</a>
                        <div class="info">
                            <span class="avatar"><img src="/static/frontEnd/img/logo.png"></span>
                            <span>王花花</span>•
                            <span>25k评论</span>•
                            <span>10分钟前</span>
                        </div>
                    </div>
                </div>
                <div class="news-list-item clearfix">
                    <div class="col-xs-5">
                        <img src="static/frontEnd/img/004.jpg">
                    </div>
                    <div class="col-xs-7">
                        <a href="front/news" class="title">医保异地结算已实现：只需4步，一分钟看懂怎么办</a>
                        <div class="info">
                            <span class="avatar"><img src="static/frontEnd/img/logo.png"></span>
                            <span>王花花</span>•
                            <span>25k评论</span>•
                            <span>10分钟前</span>
                        </div>
                    </div>
                </div>
                <div class="news-list-item clearfix">
                    <div class="col-xs-5">
                        <img src="static/frontEnd/img/005.jpg">
                    </div>
                    <div class="col-xs-7">
                        <a href="front/news" class="title">医保异地结算已实现：只需4步，一分钟看懂怎么办</a>
                        <div class="info">
                            <span class="avatar"><img src="static/frontEnd/img/logo.png"></span>
                            <span>王花花</span>•
                            <span>25k评论</span>•
                            <span>10分钟前</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="search-bar">
                <input type="search" class="form-control" placeholder="搜一下">
            </div>
            <div class="side-bar-card flag clearfix">
                <div class="col-xs-5">
                    <img src="static/frontEnd/img/1-1.png">
                </div>
                <div class="col-xs-7">
                    <div class="text-lg">有害信息举报专区</div>
                    <div>举报电话：12377</div>
                </div>
            </div>
            <div class="side-bar-card">
                <div class="card-title">24小时热闻</div>
                <div class="card-body">
                    <div class="list">
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                        <div class="item">
                            <a class="title" href="#">人工智能时代的到来，把全世界的科技巨头和汽车厂商推向了研发自动驾驶技术的浪潮中。</a>
                            <div class="desc">15k阅读　1k评论</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    Copyright © 2017 jkdev.cn | 极客开发者2017版
</div>
</body>
</html>
