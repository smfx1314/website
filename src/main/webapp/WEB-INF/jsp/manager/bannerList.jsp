<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <title>用户列表</title>
</head>
<body>
<div class="container">
    <a class="btn btn-default" href="${pageContext.request.contextPath }/admin/saveBannerPage">添加</a>
    <table class="table table-bordered table-hover">
        <tr>
            <th>编号</th>
            <th>图片</th>
            <th colspan="2">操作</th>
        </tr>
        <c:forEach items="${banners }" var="banner">
            <tr>
                <th>${banner.id }</th>
                <th>
                    <img alt="" src="/image/${banner.imagepath }" style="height: 30px;width: 30px;">
                </th>
                <th>${banner.bannerdesc}</th>
                <th><a href="${pageContext.request.contextPath }/admin/deleteBanner?id=${banner.id }">删除</a></th>
            </tr>
        </c:forEach>
    </table>
    <h2 style="text-align: center;margin-top: 200px;">${error}</h2>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
