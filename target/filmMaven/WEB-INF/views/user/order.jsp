<%--
  Created by IntelliJ IDEA.
  User: qq892
  Date: 2019/5/5
  Time: 16:53
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/order.css" />
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
<%--</nav>--%>

<!--导航菜单结束-->
<%@ include file="./header.jsp" %>

<div class="container-fluid" style="margin: 80px;">
    <div class="row-fluid">
        <!--左边侧栏，不用管-->
        <div class="col-lg-2 left_">
            <div class="_aside">
                <p>个人中心</p>
                <p>我的订单</p>
            </div>
        </div>
        <!--左侧栏结束-->


        <!--右边的盒子-->
        <div class="col-lg-10 right_">
            <div class="asi_right">

                <!--一个样式，不用管-->
                <div class="my">
                    <p>我的订单</p>
                </div>

                <!--第一个订单，下面的span标签我是用选择器添加的样式，里面命名的class名字可要可不要的-->
<c:forEach items="${page.list}"  var="o" varStatus="status">

<div class="order_info">
                    <div class="time_and_orderId">
                        <span>${o.times}</span>
                        <span>订单编号:</span>
                        <span>${o.id}</span>

                        <!--boostrap的字体图标，也就是那个垃圾桶-->
                        <span class="glyphicon glyphicon-trash"></span>
                    </div>
                    <div class="movie_orderInfo">
                        <div class="order_img">
                            <img src="${pageContext.request.contextPath}/${o.image}" />
                        </div>
                        <div class="inf_1">
                            <span class="movie_name_order">${o.name}</span><br /><br />
                            <span class="place">${o.place}</span><br />
                            <span class="seat_number">${o.seat}</span><br />
                            <span class="begin_time">${o.times}</span><br />
                        </div>
                        <div class="inf_2">
                            <span class="money">￥${o.price}</span>
                        </div>
                        <div class="inf_3">
                            <span class="statu">已完成</span>
                        </div>
<%--                        <div class="inf_4">--%>
<%--                            <a href="">查看详情</a>--%>
<%--                        </div>--%>
                    </div>
                </div>

</c:forEach>






                <!--第一个订单结束-->

                <!--第二个订单-->
<%--                <div class="order_info">--%>
<%--                    <div class="time_and_orderId">--%>
<%--                        <span>2019年5月1日</span>--%>
<%--                        <span>订单编号:</span>--%>
<%--                        <span>1321332123</span>--%>
<%--                        <span class="glyphicon glyphicon-trash"></span>--%>
<%--                    </div>--%>
<%--                    <div class="movie_orderInfo">--%>
<%--                        <div class="order_img">--%>
<%--                            <img src="${pageContext.request.contextPath}/img/movie_photo/复仇者.jpg" />--%>
<%--                        </div>--%>
<%--                        <div class="inf_1">--%>
<%--                            <span class="movie_name_order">复仇者联盟4：终局之战</span><br /><br />--%>
<%--                            <span class="place">影天下国际影城</span><br />--%>
<%--                            <span class="seat_number">6排7座    6排8座</span><br />--%>
<%--                            <span class="begin_time">2019年5月1日     18:10</span><br />--%>
<%--                        </div>--%>
<%--                        <div class="inf_2">--%>
<%--                            <span class="money">￥82</span>--%>
<%--                        </div>--%>
<%--                        <div class="inf_3">--%>
<%--                            <span class="statu">已完成</span>--%>
<%--                        </div>--%>
<%--                        <div class="inf_4">--%>
<%--                            <a href="">查看详情</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <!--第二个订单结束-->

                <!--第一个订单-->
<%--                <div class="order_info">--%>
<%--                    <div class="time_and_orderId">--%>
<%--                        <span>2019年5月1日</span>--%>
<%--                        <span>订单编号:</span>--%>
<%--                        <span>1321332123</span>--%>
<%--                        <span class="glyphicon glyphicon-trash"></span>--%>
<%--                    </div>--%>
<%--                    <div class="movie_orderInfo">--%>
<%--                        <div class="order_img">--%>
<%--                            <img src="img/movie_photo/复仇者.jpg" />--%>
<%--                        </div>--%>
<%--                        <div class="inf_1">--%>
<%--                            <span class="movie_name_order">复仇者联盟4：终局之战</span><br /><br />--%>
<%--                            <span class="place">影天下国际影城</span><br />--%>
<%--                            <span class="seat_number">6排7座    6排8座</span><br />--%>
<%--                            <span class="begin_time">2019年5月1日     18:10</span><br />--%>
<%--                        </div>--%>
<%--                        <div class="inf_2">--%>
<%--                            <span class="money">￥82</span>--%>
<%--                        </div>--%>
<%--                        <div class="inf_3">--%>
<%--                            <span class="statu">已完成</span>--%>
<%--                        </div>--%>
<%--                        <div class="inf_4">--%>
<%--                            <a href="">查看详情</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <!--第一个订单结束-->

            </div>
            <!--you-->






        </div>
    </div>




    <div style="text-align:center">


        <div class="row justify-content-center" >
            <nav aria-label="Page navigation example" class="justify-content-center">
                <ul class="pagination">
                    <li class="page-item disabled"><a class="page-link" href="#"> 共${page.totalPageNum}页/第${page.currentPageNum}页</a></li>


                    <%--<li class="page-item"><a class="page-link" href="#">Previous</a></li>--%>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/${page.url}?num=1">首页</a></li>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/${page.url}?num=${page.prePageNum}">上一页</a></li>
                    <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pagenum">
                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/${page.url}?num=${pagenum}">${pagenum}</a></li>
                    </c:forEach>

                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/${page.url}?num=${page.nextPageNum}">下一页</a></li>
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/${page.url}?num=${page.totalPageNum}">末页</a></li>
                    <%--<li class="page-item"><input type="text" class="page-information"/></li>--%>
                </ul>
            </nav>
        </div>

        <%--共${page.totalPageNum}页/第${page.currentPageNum}页--%>


        <%--<!-- <a href="/store_v5/ProductServlet?method=findProductsByCidWithPage&cid=1&num=1">首页</a> -->--%>
        <%--&lt;%&ndash; <a href="${pageContext.request.contextPath}/OrderServlet?method=findMyOrdersWithPage&num=1">首页</a> &ndash;%&gt;--%>
        <%--&lt;%&ndash; <a href="${pageContext.request.contextPath}/AdminProductServlet?method=findAllProductsWithPage&num=1">首页</a> &ndash;%&gt;--%>

        <%--<a href="${pageContext.request.contextPath}/${page.url}?num=1">首页</a>--%>
        <%--<a href="${pageContext.request.contextPath}/${page.url}?num=${page.prePageNum}">上一页</a>--%>
        <%--&lt;%&ndash;显示的页码，使用forEach遍历显示的页面 &ndash;%&gt;--%>
        <%--<c:forEach begin="${page.startPage}" end="${page.endPage}" var="pagenum">--%>
        <%--<a href="${pageContext.request.contextPath}/${page.url}?num=${pagenum}">${pagenum}</a>--%>
        <%--</c:forEach>--%>

        <%--<a href="${pageContext.request.contextPath}/${page.url}?num=${page.nextPageNum}">下一页</a>--%>
        <%--<a href="${pageContext.request.contextPath}/${page.url}?num=${page.totalPageNum}">末页</a>--%>
        <%--<input type="text" id="pagenum" name="pagenum" size="1"/><input type="button" value="前往" onclick="jump()" />--%>
        <script type="text/javascript">
            function jump(){
                var totalpage = ${page.totalPageNum};
                var pagenum = document.getElementById("pagenum").value;
                //判断输入的是一个数字
                var reg =/^[1-9][0-9]{0,1}$/;
                if(!reg.test(pagenum)){
                    //不是一个有效数字
                    alert("请输入符合规定的数字");
                    return ;
                }
                //判断输入的数字不能大于总页数
                if(parseInt(pagenum)>parseInt(totalpage)){
                    //超过了总页数
                    alert("不能大于总页数");
                    return;
                }
                //转向分页显示的Servlet
                window.location.href="${pageContext.request.contextPath}/${page.url}&num="+pagenum;
            }
        </script>
    </div>




<%----%>

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

