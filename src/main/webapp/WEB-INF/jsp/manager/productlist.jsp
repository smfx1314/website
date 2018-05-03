<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <title>产品列表</title>
</head>
<body>
<div class="container">
    <table class="table table-bordered table-hover">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>图片</th>
            <th>详情</th>
            <%--<th>创建日期</th>--%>
            <th colspan="2">操作</th>
        </tr>
        <c:forEach items="${products }" var="product">
            <tr>
                <th>${product.id }</th>
                <th>${product.name }</th>
                <th>
                    <img alt="" src="/image/${product.image }" style="height: 30px;width: 30px;">
                </th>
                <th>${product.info}</th>
                <%--<th>${product.releasetime}</th>--%>
                <th><a href="${pageContext.request.contextPath }/admin/deleteProduct?id=${product.id }">删除</a></th>
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
