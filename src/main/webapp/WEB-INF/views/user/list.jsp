<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<%--    <meta charset="utf-8" />--%>
    <title></title>

    <!--boostrap和jquert-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <!---->


    <!--main-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />

    <style>
        ._main{margin-top: 70px;}
        ._main ul{}
        ._main ul li{list-style: none;min-height: 250px;}
        .p_t{float: left;}
        .p_t img{ margin-left: 40px;}
        .tick{
            display: inline-block;
            width: 50px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: red;
            font-size: 18px;
            color: white;
            font-weight: 700;
            top: 85px;
            float: left;
            position: relative;

        }
        .name_actor
        {

            float: left;
            margin-left: 40px;
            height: 220px;
            width: 63%;
            border-bottom:1px #636363 solid;
        }
        .name_actor p:nth-child(1){font-size: 1.8em;top: 70px;position: relative;}
        .name_actor p:nth-child(2){font-size: 1.3em;top: 77px;position: relative;}
        .name_actor p:nth-child(3){font-size: 1.3em;color: grey;top: 72px;position: relative;}

        .list_score{
            color: yellow;
            font-size: 4em;
            float: left;
            top: 85px;
            position: relative;
        }
    </style>
</head>
<body>
<%@ include file="./header.jsp"%>

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


<!--导航菜单结束-->

<div class="container">

    <div class="_main">
        <ul>
            <li>
                <div class="p_t">
                    <i class="tick">1</i>
                    <img src="${pageContext.request.contextPath}/img/movie_photo/复仇者.jpg"/>
                </div>
                <div>
                    <div class="name_actor">
                        <p>复仇者联盟4：终局之战</p>
                        <p>主演：小罗伯特·唐尼,克里斯·埃文斯,马克·鲁法洛</p>
                        <p>上映时间：2019-04-24</p>
                    </div>
                    <i class="list_score">9.3</i>
                </div>
            </li>
            <li>
                <div class="p_t">
                    <i class="tick">2</i>
                    <img src="img/movie_photo/波西米亚狂想曲.jpg"/>
                </div>
                <div>
                    <div class="name_actor">
                        <p>复仇者联盟4：终局之战</p>
                        <p>主演：小罗伯特·唐尼,克里斯·埃文斯,马克·鲁法洛</p>
                        <p>上映时间：2019-04-24</p>
                    </div>
                    <i class="list_score">9.3</i>
                </div>
            </li>
            <li>
                <div class="p_t">
                    <i class="tick">3</i>
                    <img src="img/movie_photo/复仇者.jpg"/>
                </div>
                <div>
                    <div class="name_actor">
                        <p>复仇者联盟4：终局之战</p>
                        <p>主演：小罗伯特·唐尼,克里斯·埃文斯,马克·鲁法洛</p>
                        <p>上映时间：2019-04-24</p>
                    </div>
                    <i class="list_score">9.3</i>
                </div>
            </li>
            <li>
                <div class="p_t">
                    <i class="tick">4</i>
                    <img src="img/movie_photo/复仇者.jpg"/>
                </div>
                <div>
                    <div class="name_actor">
                        <p>复仇者联盟4：终局之战</p>
                        <p>主演：小罗伯特·唐尼,克里斯·埃文斯,马克·鲁法洛</p>
                        <p>上映时间：2019-04-24</p>
                    </div>
                    <i class="list_score">9.3</i>
                </div>
            </li>
        </ul>

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

