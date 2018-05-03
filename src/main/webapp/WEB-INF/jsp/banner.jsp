<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/5/4
  Time: 0:43
  To change this template use File | Settings | File Templates.
--%>
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
    <title>轮播图</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css" media="screen">

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
    </style>
</head>
<body>
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
</body>
</html>
