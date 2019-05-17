<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%--<head>--%>
<%--	<meta charset="utf-8" />--%>
<%--	<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--	<title>关于我们</title>--%>
<%--	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />--%>
<%--	<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>--%>
<%--	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>--%>
<%--	<!-- 引入自定义css文件 style.css -->--%>
<%--	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>--%>


<%--</head>--%>

<!--导航菜单-->
<nav class="navbar navbar-inverse nav_style">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<span class="navbar-brand" >HELLO影院</span>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/user/index.do">首页</a></li>
				<li><a href="/film/allFilms.do">电影</a></li>
				<!--导航菜单榜单分类下拉-->
				<li><a href="/user/list.do">榜单</a></li>      <!--下拉结束-->
			</ul>

			<!--导航栏登录注册-->
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${empty loginUser}">
					<li><a href="/user/register.do"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
					<li><a href="/user/login.do"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>

				</c:if>

				<c:if test="${not empty loginUser}">
					<li class="nav-item"><a class="nav-link" href="">欢迎${loginUser.username}</a></li>
					<li class="nav-item"><a class="nav-link" href="/user/order.do?id=${loginUser.uid}&num=1">我的订单</a></li>
					<%--<li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath}/chat/chat">客服</a></li>--%>
					<li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath}/user/logout.do">退出</a></li>
					<%--<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/jsp/cart.jsp">购物车</a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/OrderServlet?method=findMyOrdersWithPage&num=1">我的订单</a></li>--%>
				</c:if>


			</ul>
		</div>
	</div>
</nav>    <!--导航菜单结束-->