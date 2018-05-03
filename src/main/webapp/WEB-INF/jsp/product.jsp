<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/5/3
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <meta charset="UTF-8">
    <title>产品中心</title>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css" media="screen">
        body{
            padding-top: 60px;
        }

        #summary-container .col-md-3{
            text-align: center;
            margin-bottom: 20px;
        }

        hr.divider{margin: 40px 0;}
        .feature{
            padding: 30px 0;
        }
        #image{
            width: 200px;
            height: 200px;
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
    <jsp:include page="banner.jsp"></jsp:include>

    <%--产品内容--%>
    <div class="container">
        <div class="row" id="summary-container">
            <c:forEach items="${products}" var="product">
                <div class="col-md-3">
                    <img id="image" src="${pageContext.request.contextPath}/image/${product.image}" alt="Responsive image">
                    <h2>${product.name}</h2>
                    <p>${product.info}</p>
                    <p>
                        <a class="btn btn-default" href="#" role="button" target="_blank">详情</a>
                    </p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
