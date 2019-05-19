<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title></title>

	<!--boostrap和jquert-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" ></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
	<!---->


	<!--main-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />

</head>
<body>
<%@ include file="./header.jsp" %>


<!--导航菜单-->

<%--<nav class="navbar navbar-inverse nav_style">--%>
<%--	<div class="container-fluid">--%>
<%--		<div class="navbar-header">--%>
<%--			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">--%>
<%--				<span class="sr-only">切换导航</span>--%>
<%--				<span class="icon-bar"></span>--%>
<%--				<span class="icon-bar"></span>--%>
<%--				<span class="icon-bar"></span>--%>
<%--			</button>--%>
<%--			<span class="navbar-brand" >HELLO影院</span>--%>
<%--		</div>--%>
<%--		<div class="collapse navbar-collapse" id="example-navbar-collapse">--%>
<%--			<ul class="nav navbar-nav">--%>
<%--				<li><a href="index.html">首页</a></li>--%>
<%--				<li><a href="all_movie.html">电影</a></li>--%>
<%--				<!--导航菜单榜单分类下拉-->--%>
<%--				<li><a href="list.html">榜单</a></li>      <!--下拉结束-->--%>
<%--			</ul>--%>

<%--			<!--导航栏登录注册-->--%>
<%--			<ul class="nav navbar-nav navbar-right">--%>
<%--				<li><a href="/user/register.do"><span class="glyphicon glyphicon-user"></span> 注册</a></li>--%>
<%--				<li><a href="/user/login.do"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--</nav>    --%>

<!--导航菜单结束-->

<div class="container">
	<!--搜索框-->
	<div class="input-group col-lg-6 col-md-9 col-sm-9 col-xs-9" style="padding-top: 30PX;">
		<input type="text" class="form-control" placeholder="找影视剧、影人、影院" / >
		<span class="input-group-btn">
				         <button class="btn btn-info btn-search" style="border-top-right-radius:10px;border-bottom-right-radius:10px;">搜索</button>
				      </span>
	</div>
	<!--搜索框结束-->

	<!--电影列表-->
	<div class="main">


		<!--正在热映 ，不用管这里，跳转页面的-->
		<div class="panel_one">
			<div style="height: 40px; width: 95%;">
				<span style="float: left; color: #1E90FF;font-family:'黑体';font-weight: 700; font-size: 2em;">正在热映(40部)</span>
				<span class="glyphicon glyphicon-chevron-right " style="float: right; color: #1E90FF; font-size: 17px;"></span>
				<span style="float: right; color: #1E90FF; font-size: 17px; ><a href="#">更多</a></span>
			</div>




			<div class="row hot_movie">
				<c:forEach items="${films}" var="f" varStatus="status">

					<%-- 这里是JSP注释 --%>

				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">
					<div class="items text-center" id="btn_buy">
						<img class="img-responsive" src="${pageContext.request.contextPath}/${f.image}" />
						<p class="m_name">${f.name}</p>
						<p class="score">${f.hot}</p>
					</div>

					<c:if test="${not empty loginUser}">

					<a href="/film/brief.do?id=${f.id}" id="a_buy"><span>购票</span></a>

					</c:if>

					<c:if test="${empty loginUser}">
						<a href="/user/login.do" id="a_buy"><span>购票</span></a>

					</c:if>


				</div>             <!--结束点-->

				<!--第二部-->
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="${pageContext.request.contextPath}img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>

<%--				</div>--%>

<%--				<!--第三部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="${pageContext.request.contextPath}img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>

<%--				</div>--%>

<%--				<!--第三部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="${pageContext.request.contextPath}/img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>
<%--				</div>--%>

<%--				<!--第二排第一部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="${pageContext.request.contextPath}/img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>
<%--				</div>--%>

<%--				<!--第二排第二部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="${pageContext.request.contextPath}img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>
<%--				</div>--%>

<%--				<!--第二排第三部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>
<%--				</div>--%>

<%--				<!--第二排第四部-->--%>
<%--				<div class="col-xs-4 col-sm-4 col-md-3 col-lg-3  movie_p">--%>
<%--					<div class="items text-center" id="btn_buy">--%>
<%--						<img class="img-responsive" src="img/movie_photo/1.jpg" />--%>
<%--						<p class="m_name">惊奇队长</p>--%>
<%--						<p class="score">9.0</p>--%>
<%--					</div>--%>
<%--					<a href="movie_brief.html" id="a_buy"><span>购票</span></a>--%>
<%--				</div>--%>
				</c:forEach>


			</div>   <!--电影加载结束-->

		</div>
	</div>           <!--main正在热映模块结束       -->

	<!--侧栏      -->
	<div class="aside visible-lg">
		<div class="text_hot"><span style="font-size: 30px;color: #EE0000;">今日票房</span></div>

		<div class="today_tick">
			<!--今日票房的第一条-->
<%--			<div style="float: left;"><img src="${pageContext.request.contextPath}/img/movie_photo/1.jpg"></div>--%>
<%--			<div style="float: left;padding-top: 15px;padding-left: 20px;">--%>
<%--				<span class="movie_name_1">比悲伤更悲伤的故事</span><br />--%>
<%--				<span class="count_1">4644.5万</span>--%>
<%--			</div>--%>

			<!--今日票房后面的-->
			<div class="two_and_ten" >
				<ul>
<c:forEach items="${films}" var="f" varStatus="status">


					<li>
						<i>${status.count}</i>
						<span class="movie_name">${f.name}</span>
						<span class="count">948.24万</span>
					</li>

</c:forEach>



<%--					<li>--%>
<%--						<i>3</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>4</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>5</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>6</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>7</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>8</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>9</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
<%--					<li>--%>
<%--						<i>10</i>--%>
<%--						<span class="movie_name">绿皮书</span>--%>
<%--						<span class="count">918.23万</span>--%>
<%--					</li>--%>
				</ul>
			</div>            <!--今日票房第二到第十two_and_ten的结束点-->
		</div>                <!--今日票房today_tick结束点-->
	</div>                        <!--右边侧栏aside的结束点-->
</div>                                <!--Contaniner的结束点-->


<div class="footer">
	<div class="_p">
		<p class="text-center">关于Hello 影视: 关于我们  管理团队  投资者关系 </p>
		<p class="text-center">商务合作邮箱：hello@qq.com 客服电话：1231566 违法和不良信息举报电话：1616165</p>
		<p class="text-center">京ICP证160733号 京ICP备16022489号-1 京公网安备 11010102003232号</p>
		<p class="text-center">网络文化经营许可证 电子公告服务规则北京猫眼文化传媒有限公司</p>
	</div>
</div>
</body>
</html>
