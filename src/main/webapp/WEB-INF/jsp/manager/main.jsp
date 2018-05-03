<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>管理后台 </title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/tendina.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" type="text/css" media="screen" />
</head>
<body>
    <!--顶部-->
    <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">xxxx公司管理后台</h1></span></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">
                    <i class="icon-user glyph-icon" style="font-size: 20px"></i>
                    <span>${admin.username}</span>
                    <i class="icon-chevron-down glyph-icon"></i>
                </a>
                <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
                    <li class="ad_setting_ul_li"> <a href="javascript:;"><i class="icon-signout glyph-icon"></i> <span class="font-bold">退出</span> </a> </li>
                </ul>
            </div>
    </div>
    <!--顶部结束-->
    <!--菜单-->
    <div class="layout_left_menu">
        <ul id="menu">
            <li class="childUlLi">
               <a href="${pageContext.request.contextPath }/admin/welcome"  target="menuFrame"><i class="glyph-icon icon-home"></i>首页</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath }/admin/getAllBanner" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>banner</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="user.html"  target="menuFrame"> <i class="glyph-icon icon-reorder"></i>新闻中心</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath }/admin/writeBlog.do" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>新闻列表</a></li>
                    <li><a href="${pageContext.request.contextPath }/admin/blogInfoManager.do" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加新闻</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="role.html" target="menuFrame"> <i class="glyph-icon icon-reorder" target="menuFrame"></i>产品中心</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath }/admin/getAllproduct" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>产品列表</a></li>
                    <li><a href="${pageContext.request.contextPath }/admin/saveProductPage" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加产品</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="#"> <i class="glyph-icon  icon-location-arrow"></i>留言板</a>
                <ul>
                    <li><a href="meunbox.html" target="menuFrame" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>留言列表</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!--菜单-->
    <div id="layout_right_content" class="layout_right_content">
        <div class="mian_content">
            <div id="page_content">
               <iframe name="menuFrame" src="${pageContext.request.contextPath }/admin/welcome" style="overflow:visible;"
                        scrolling="yes" frameborder="no" width="100%" height="100%">
				</iframe>
            </div>
        </div>
    </div>
    <div class="layout_footer">
        <p>Copyright © 2018-2019 姜飞祥</p>
    </div>
</body>
</html>