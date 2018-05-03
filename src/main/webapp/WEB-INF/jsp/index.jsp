<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/5/3
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <meta charset="UTF-8">
    <title>现代浏览器博物馆</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css" media="screen">
        body{
            padding-top: 60px;
        }
        li:hover {
            background-color: #BEBEBE;
        }
        .carousel{
            height: 400px;
            background-color: #000;
            margin-bottom: 60px;
        }
        .carousel .item{
            height: 400px;
            background-color: #000;

        }
        .carousel img{
            width: 100%;
        }
        .carousel-caption p{
            margin-bottom: 20px;
            font-size: 20px;
            line-height: 1.8;
        }

        #summary-container .col-md-4{
            text-align: center;
            margin-bottom: 20px;
        }

        hr.divider{margin: 40px 0;}
        .feature{
            padding: 30px 0;
        }

    </style>
</head>
<body>
<!-- 导航条 -->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">

        <!-- 页面缩显示 -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- logo -->
            <a class="navbar-brand" href="#">现代浏览器博物馆</a>
        </div>

        <!-- 导航标签 -->
        <jsp:include page="navbar.jsp"></jsp:include>
        <!-- 导航标签结束-->
    </div>
</nav><!-- 导航条 -->

<!-- carousel轮播图 -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- 设置图片轮播的顺序 -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <%--<li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>--%>
    </ol>

    <!-- 设置轮播图片 -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/images/firefox-big.jpg" alt="...">
            <div class="carousel-caption">
                <h1>${banner.bannerdesc}</h1>
                <p>
                    <a class="btn btn-lg btn-primary" href="" role="button" target="_blank">点击下载</a>
                </p>
            </div>
        </div>
        <c:forEach items="${banners}" var="banner">
            <div class="item">
                <img src="/image/${banner.imagepath}" alt="...">
                <div class="carousel-caption">
                    <h1>${banner.bannerdesc}</h1>
                    <p>
                        <a class="btn btn-lg btn-primary" href="" role="button" target="_blank">点击下载</a>
                    </p>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- 设置轮播图片控制器 -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- 首页内容 -->
<div class="container">
    <div class="row" id="summary-container">
        <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/images/chrome-logo-small.jpg" alt="chrome">
            <h2>Chrome</h2>
            <p>Google Chrome，又称Google浏览器，是一个由Google（谷歌）公司开发的网页浏览器。</p>
            <p>
                <a class="btn btn-default" href="#" role="button" target="_blank">点我下载</a>
            </p>
        </div>
        <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/images/firefox-logo-small.jpg" alt="firefox">
            <h2>Mozilla</h2>
            <p>Mozilla Firefox，中文名通常称为“火狐”或“火狐浏览器”，是一个开源网页浏览器。</p>
            <p>
                <a class="btn btn-default" href="#" role="button" target="_blank">点我下载</a>
            </p>
        </div>
        <div class="col-md-4">
            <img src="${pageContext.request.contextPath}/images/safari-logo-small.jpg" alt="safari">
            <h2>Safari</h2>
            <p>Safari，是苹果计算机的最新操作系统Mac OS X中的浏览器。</p>
            <p>
                <a class="btn btn-default" href="#" role="button" target="_blank">点我下载</a>
            </p>
        </div>
    </div>

    <!-- 分割线 -->
    <hr class="divider">
    <!-- 选项卡组件 -->
    <ul id="myTab" class="nav nav-tabs" role="tablist">
        <li class="active"><a href="#tab-chrome" role="tab" data-toggle="tab">Chrome</a></li>
        <li><a href="#tab-firefox" role="tab" data-toggle="tab">Firefox</a></li>
        <li><a href="#tab-safari" role="tab" data-toggle="tab">Safari</a></li>
        <li><a href="#tab-opera" role="tab" data-toggle="tab">Opera</a></li>
        <li><a href="#tab-ie" role="tab" data-toggle="tab">IE</a></li>
    </ul>

    <!-- 选项卡面板 -->
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="tab-chrome">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">Google Chrome<small>使用最广的浏览器</small></h2>
                    <p class="lead">Google Chrome，又称Google浏览器，是一个由Google（谷歌）公司开发的网页浏览器。 该浏览器是基于其他开源软件所撰写，包括WebKit，目标是提升稳定性、速度和安全性，并创造出简单且有效率的使用者界面。
                    </p>
                </div>
                <div class="col-md-5">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/images/chrome-logo.jpg" alt="chrome">
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-firefox">
            <div class="row feature">
                <div class="col-md-5">
                    <img class="img-responsive"  src="${pageContext.request.contextPath}/images/firefox-logo.jpg" alt="firefox">
                </div>
                <div class="col-md-7">
                    <h2 class="feature-heading">Mozilla Firefox<small>美丽的狐狸</small></h2>
                    <p class="lead">Mozilla Firefox，中文名通常称为“火狐”或“火狐浏览器”，是一个开源网页浏览器， 使用Gecko引擎（非ie内核），支持多种操作系统如Windows、Mac和linux。
                    </p>
                </div>

            </div>
        </div>
        <div class="tab-pane fade" id="tab-safari">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">Safari<small>Mac用户首选</small></h2>
                    <p class="lead">Safari，是苹果计算机的最新操作系统Mac OS X中的浏览器，使用了KDE的KHTML作为浏览器的运算核心。 Safari在2003年1月7日首度发行测试版，并成为Mac OS X v10.3与之后的默认浏览器，也是iPhone与IPAD和iPod touch的指定浏览器。
                    </p>
                </div>
                <div class="col-md-5">
                    <img class="img-responsive"  src="${pageContext.request.contextPath}/images/safari-logo.jpg" alt="safari">
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-opera">
            <div class="row feature">
                <div class="col-md-5">
                    <img class="img-responsive"  src="${pageContext.request.contextPath}/images/opera-logo.jpg" alt="opera">
                </div>
                <div class="col-md-7">
                    <h2 class="feature-heading">Opera<small>小众但易用</small></h2>
                    <p class="lead">Opera浏览器，是一款挪威Opera Software ASA公司制作的支持多页面标签式浏览的网络浏览器。 是跨平台浏览器可以在Windows、Mac和Linux三个操作系统平台上运行
                    </p>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="tab-ie">
            <div class="row feature">
                <div class="col-md-7">
                    <h2 class="feature-heading">IE<small>你懂的</small></h2>
                    <p class="lead">Internet Explorer，原称Microsoft Internet Explorer(6版本以前)和Windows Internet Explorer(7，8，9，10版本)， 简称IE，是美国微软公司推出的一款网页浏览器。它采用的排版引擎(俗称内核)为Trident。
                    </p>
                </div>
                <div class="col-md-5">
                    <img class="img-responsive"  src="${pageContext.request.contextPath}/images/ie-logo.jpg" alt="ie">
                </div>
            </div>
        </div>
    </div>
    <!-- 分割线 -->
    <hr class="divider">
    <!-- 底部 -->
    <footer>
        <p class="pull-right"><a href="#top">回到顶部</a></p>
        <p>&copy; 2018 姜飞祥</p>
    </footer>
</body>
</html>
