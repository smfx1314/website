<%--
  Created by IntelliJ IDEA.
  User: smfx1314
  Date: 2018/5/3
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" type="text/css" media="screen" />
    <title>添加产品页面</title>
</head>
<body>
<div style="width: 500px;">
    <form id="addPage" action="${pageContext.request.contextPath }/admin/saveProduct" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>名称</label>
            <input type="text" name="name" class="form-control" placeholder="请输入产品名称">
        </div>
        <div class="form-group">
            <label>产品图片</label>
            <input type="file" name="file" class="form-control"><span style="color: #9f191f">请上传3M以内的图片</span>
        </div>
        <div class="form-group">
            <label>产品详情</label>
            <input type="text" name="info" class="form-control" placeholder="请输入产品名称">
        </div>
       <%-- <div class="form-group">
            <label>创建时间</label>
            <input type="text" name="releasetime" class="form-control" placeholder="请输入产品名称">
        </div>--%>
        <button type="submit" class="btn btn-default">提交</button>
    </form>
</div>
</body>
</html>