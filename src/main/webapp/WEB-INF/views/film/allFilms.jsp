<%--
  Created by IntelliJ IDEA.
  User: qq892
  Date: 2019/5/5
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all_movie.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
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
<%--                <li><a href="rigister.html"><span class="glyphicon glyphicon-user"></span> 注册</a></li>--%>
<%--                <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>    --%>

<%@ include file="../user/header.jsp" %>

<!--导航菜单结束-->

<div class="container">


    <div class="select_box">
        <div>
            <div style="color: #C0C0C0; float: left;margin-left: 30px;margin-top: 30px;">
		    			<span>
		    				类型：
		    			</span>
            </div>
            <div class="all_span">
                <span style="text-align: center; display:inline-block;width: 50px;height: 25px;background: red;color: white; border-radius: 10px;">全部</span>
                <span>爱情</span>
                <span>喜剧</span>
                <span>动画</span>
                <span>恐怖</span>
                <span>剧情</span>
                <span>悬疑</span>
                <span>犯罪</span>
                <span>冒险</span>
                <span>战争</span>
                <span>奇幻</span>
                <span>运动</span>
                <span>家庭</span>
                <span>古装</span>
                <span>武侠</span>
                <span>西部</span>
                <span>历史</span>
                <span>传记</span>
                <span>歌舞</span>
                <span>记录</span>
            </div>
        </div>

        <div>
            <div style="color: #C0C0C0; float: left;margin-left: 30px;margin-top: 30px;">
		    			<span>
		    				区域：
		    			</span>
            </div>
            <div class="all_span">
                <span style="text-align: center; display:inline-block;width: 50px;height: 25px;background: red;color: white; border-radius: 10px;">全部</span>
                <span>大陆</span>
                <span>美国</span>
                <span>韩国</span>
                <span>日本</span>
                <span>中国香港</span>
                <span>中国台湾</span>
                <span>泰国</span>
                <span>印度</span>
                <span>法国</span>
                <span>英国</span>
                <span>波兰</span>
                <span>澳大利亚</span>
                <span>伊朗</span>
                <span>其他</span>
            </div>
        </div>

    </div>
    <!--盒子结束-->


    <div style="margin: 20px 0 0 50px;">
        <label class="demo--label">
            <input class="demo--radio" type="radio" name="demo-radio" checked="checked">
            <span class="demo--radioInput"></span>按热门排序
        </label>
        <label class="demo--label">
            <input class="demo--radio" type="radio" name="demo-radio">
            <span class="demo--radioInput"></span>按时间排序
        </label>
    </div>


    <div style="margin: 10px 0 0 0;">
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/1.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/2.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/3.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/4.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第一部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/5.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第二部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/6.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>
        <!--第二排第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/7.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第四部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/8.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>


        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/9.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/10.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/11.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/12.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>






        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/1.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/2.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/3.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/4.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第一部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/5.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第二部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/6.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>
        <!--第二排第三部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/7.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <!--第二排第四部-->
        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/8.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>


        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/9.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/10.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/11.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>

        <div class="col-xs-4 col-sm-4 col-md-3 col-lg-2  movie_p">
            <div class="items text-center" id="btn_buy">
                <img class="img-responsive" src="${pageContext.request.contextPath}/img/all/12.jpg" />
            </div>
            <a href="movie_brief.html" id="a_buy"><span>购票</span></a>

        </div>




    </div>   <!--电影加载结束-->
</div>


<!--分页-->
<div class="page-icon" style="margin-top: 40px;">
    <ul class="pagination pagination-lg">
        <li><a href="#">&laquo;</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
    </ul>
</div>
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

