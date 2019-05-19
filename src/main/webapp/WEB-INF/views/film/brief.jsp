<%--
  Created by IntelliJ IDEA.
  User: qq892
  Date: 2019/5/3
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <!--boostrap和jquert-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <!---->

    <!--main-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/movie_brief.css"/>
</head>
<body>
<!--导航菜单-->
<%--<nav class="navbar navbar-inverse nav_style">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="navbar-header">--%>
<%--            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">--%>
<%--                <span class="sr-only">切换导航</span>--%>
<%--                <span class="icon-bar"></span>--%>
<%--                <span class="icon-bar"></span>--%>
<%--                <span class="icon-bar"></span>--%>
<%--            </button>--%>
<%--            <span class="navbar-brand" >HELLO影院</span>--%>
<%--        </div>--%>
<%--        <div class="collapse navbar-collapse" id="example-navbar-collapse">--%>
<%--            <ul class="nav navbar-nav">--%>
<%--                <li><a href="index.html">首页</a></li>--%>
<%--                <li><a href="all_movie.html">电影</a></li>--%>
<%--                <!--导航菜单榜单分类下拉-->--%>
<%--                <li><a href="list.html">榜单</a></li>      <!--下拉结束-->--%>
<%--            </ul>--%>

<%--            <!--导航栏登录注册-->--%>
<%--            <ul class="nav navbar-nav navbar-right">--%>
<%--                <li><a href="login.html"><span class="glyphicon glyphicon-user"></span> 注册</a></li>--%>
<%--                <li><a href="rigister.html"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>    --%>

<%@ include file="../user/header.jsp" %>

<!--导航菜单结束-->


<div class="jumbotron banner" style="height: 90%;">
    <div class="container cont">
        <div class="_imag col-xs-4 col-sm-4 col-md-3 col-lg-3 ">
            <img class="img-responsive brief_imag" src="${pageContext.request.contextPath}/${film.image}">
        </div>


        <div class="brief_name">
            <div class="brief_movie_name"><span>${film.name}</span></div>
<%--            <div class="brief_englis_name"><span>Captain Marvel</span></div>--%>
            <div class="brief_movie_info"><span>类别：${film.category}</span></div>
<%--            <div class="brief_movie_info"><span>美国 / 124分钟</span></div>--%>
            <div class="brief_movie_info"><span>上映时间：${film.starttime}</span></div>
            <div class="button">
                <a name="The Matrix" href="/film/seat.do?id=${film.id}" class="hvr-shutter-out-horizontal">特惠购票</a>
            </div>
        </div>

        <div class="score">
            <span>用户评分</span>
            <span class="s_span" style="color: yellow;"><i>8.7</i></span><br /><br />
            <span>累计票房</span>
            <span class="s_span" style="color: yellow;"><i>12</i>亿</span>
        </div>
    </div>
</div>



<div class="container">
    <div class="text-center text_box">
        <label>剧&nbsp;&nbsp;&nbsp;情&nbsp;&nbsp;&nbsp;简&nbsp;&nbsp;&nbsp;介</label>
<%--        <div class="text-left _text">--%>
<%--            &nbsp;&nbsp;&nbsp;&nbsp;卡罗尔·丹弗斯（布丽·拉尔森 饰）是克里人的精英部队一员，但她挣扎着回忆过去，--%>
<%--            对于怎么获得超能力、以及之前的人生等超能力之前的人生，她只在梦中有片段不成章的记忆，--%>
<%--            这层困扰引起的情绪波动也进而影响她对超能力的掌控。所幸，在星际战队指挥官（裘德·洛 饰）的调教之下，--%>
<%--            卡罗尔·丹弗斯学会如何控制自己的超能力。一次外星任务中，卡罗尔·丹弗斯因故来到了地球，--%>
<%--            并遇到还是低阶探员的尼克·弗瑞（塞缪尔·杰克逊 饰），卡罗尔·丹弗斯与尼克·--%>
<%--            弗瑞一起追捕在地球惹事的变形人塔罗斯（本·门德尔森 饰），同时，也发现自己如何获得超能力。--%>
<%--        </div>--%>
<%--        --%>
        <div class="text-left _text">
            &nbsp;&nbsp;&nbsp;&nbsp;${film.introduce}
        </div>
    </div>
</div>

<!--底部-->
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

