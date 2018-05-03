<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/5/3
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航条</title>
</head>
<body>
<!-- 导航标签 -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
        <li class=""><a href="/">首页</a></li>
        <li><a href="#">新闻中心</a></li>
        <li class="dropdown" id="product">
            <a href="${pageContext.request.contextPath}/getProduct" class="dropdown-toggle" >产品中心 <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#tab-chrome">Chrome</a></li>
                <li><a href="#tab-firefox">Firefox</a></li>
                <li><a href="#tab-safari">Safari</a></li>
                <li><a href="#tab-opera">Opera</a></li>
                <li><a href="#tab-ie">IE</a></li>
            </ul>
        </li>
        <li><a href="#">留言板</a></li>
        <li><a href="#">关于我们</a></li>
    </ul>
</div><!-- 导航标签结束-->
</body>
</html>
