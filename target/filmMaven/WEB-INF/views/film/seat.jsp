<%--
  Created by IntelliJ IDEA.
  User: qq892
  Date: 2019/5/4
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.seat-charts.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/jquery.seat-charts.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/select_seat.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/movie_brief.css"/>

    <style>
        .front{width: 80%;height:45px; margin-top: 40px;margin-left: 17%; background: url(img/movie_photo/pingmu.png) no-repeat;}
        .front_1{margin-left: 50%;font-size: 18px;}
        .booking-details {width:100%;height: 740px; background-color:#FAFAFA; }
        .booking-details_info{position: absolute;margin-top: 30px; margin-left: 30px;}
        .book_movie{float: left;}
        .book_movie img{width: 130;height: 190px; }
        .movie_info{float: left; margin-left: 25px;}
        .book{clear: left;margin-top: 200px;position: absolute;}
        .book ._span{color: #636363;display: block;margin-top: 10px;}
        .book ul li{float: left;}
        div.seatCharts-cell {color: white;height: 26px;width: 30px;line-height: 26px;margin: 5px;float: left;text-align: center;outline: none;font-size: 13px;}
        div.seatCharts-seat {color: white; cursor: pointer;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius: 5px;}
        div.seatCharts-row {height: 40px; margin-left:20%;}
        div.seatCharts-seat.available {background-image: url(${pageContext.request.contextPath}/img/movie_photo/kongzuowei.png);color: white;}
        div.seatCharts-seat.focused {background-image: url(${pageContext.request.contextPath}/img/movie_photo/kongzuowei.png);color: white;}
        div.seatCharts-seat.selected {background-image: url(${pageContext.request.contextPath}/img/movie_photo/optionalSeat.png);color: white;}
        div.seatCharts-seat.unavailable {background-image:url(${pageContext.request.contextPath}/img/movie_photo/choicedSeat.png); cursor: not-allowed;color: #f04e39;}
        div.seatCharts-container {width:95%;}
        div.seatCharts-legend {position: absolute;margin-top: 10px;}
        ul.seatCharts-legendList {padding-left: 0px;}
        .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}
        span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}
        .checkout-button {cursor:pointer;margin-top: 10px;position: absolute;}
        .checkout-button label{font-size: 1.7em;cursor: pointer;}
        #selected-seats {max-height: 150px;overflow-y: auto;width:350px;margin: 0;padding: 0;}
        .select_ticket{margin-top: 10px;margin-bottom: 10px; height: 100px;border: #8D91AA 1px solid;width: 300px;}
        #selected-seats li{list-style: none; float:left; width:60px; height:30px; line-height:30px;background-image: url(img/movie_photo/票框.png); margin:6px; font-size:12px;font-weight: bold; color: red; text-align:center}
    </style>
</head>
<body>


<script>

    var price = 41; //票价
    var sc;
    show_id = 3;
    var aa = '4_1';
    var price1 = $('#price');//座位区
    var counter1=$('#counter1');
    var ss;



    $(document).ready(function() {
        var $cart = $('#selected-seats'), //座位区
            $counter = $('#counter'), //票数
            $total = $('#total'); //总计金额
        // alert($total.textContent);

        // alert("123");

            $.post("/film/setseat.do" , {} , function(data , status){

                ss=data;
                // alert(ss);

                // alert(setseat);
                // alert(oid);
                // alert(data);
                sc.get(ss).status('unavailable');
                // sc.get(["4_5"]).status('unavailable');



                // if(data == 1){
                //     // alert("用户名存在");
                //     // $("#span01").html("<font color='red'>用户名已被注册</font>");
                //     errname.innerHTML="用户名已被注册"
                //
                //     errname.className="error"
                //     errname.style.color="red"
                //
                //     return false;
                // }
                //
                //
                // else{
                //     //alert("用户名可用");
                //
                //     // $("#span01").html("<font color='green'>用户名可以使用</font>");
                //
                //     errname.innerHTML="用户名可以使用"
                //     errname.style.color="green"
                //
                //     errname.className="success";
                //
                //
                //     return true;
                //
                // }



            } );





        sc = $('#seat-map').seatCharts({
            map: [  //座位图
                '_aaaaaaaaaa',
                'aaaaaaaaaaa',
                '__________',
                'aaaaaaaaa__',
                'aaaaaaaaaaa',
                'aaaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaaaa',
                'aa__aaaaaa_' ,
                'aa__aaaaa__',
            ],
            legend : { //定义图例
                node : $('#legend'),
                items : [
                    [ 'a', 'available',   '可选座' ],
                    [ 'a', 'unavailable', '已售出']
                ]
            },
            click: function () { //点击事件
                if (this.status() == 'available') { //可选座
                    $('<li>'+(this.settings.row+1)+'排'+this.settings.label+'座</li>')
                        .attr('id', 'cart-item-'+this.settings.id)
                        .data('seatId', this.settings.id)
                        .appendTo($cart);

                    $counter.text(sc.find('selected').length+1);

                    $total.text(recalculateTotal(sc)+price);
                     //
                    // alert(recalculateTotal(sc)+price);
                    // price1.value=recalculateTotal(sc)+price;

                    $('#price').val(recalculateTotal(sc)+price);
                    $('#counter1').val(sc.find('selected').length+1);
                     $('#seats').val($('#selected-seats').text().toString());

                    // alert($('#selected-seats').text().toString());

                     // counter1.value=(sc.find('selected').length+1);



                    // alert(price1.value);
                    // alert(counter1.value);


                    return 'selected';
                } else if (this.status() == 'selected') { //已选中
                    //更新数量
                    $counter.text(sc.find('selected').length-1);

                    // counter1.value(sc.find('selected').length-1);

                    //更新总计
                    $total.text(recalculateTotal(sc)-price);



                    $('#price').val(recalculateTotal(sc)-price);

                    $('#counter1').val(sc.find('selected').length-1);



                    // alert(recalculateTotal(sc)-price);

                    //删除已预订座位
                    $('#cart-item-'+this.settings.id).remove();
                    //可选座
                    return 'available';
                } else if (this.status() == 'unavailable') { //已售出
                    return 'unavailable';
                } else {
                    return this.style();
                }



            }




        });
        //已售出的座位

        <%--sc.get(["${film.category}",aa, '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');--%>
        // sc.get([ss]).status('unavailable');
            // alert(ss);
        // sc.get(["4_4","4_5"]).status('unavailable');










    });
    //计算总金额
    function recalculateTotal(sc) {
        var total = 0;
        sc.find('selected').each(function () {
            total += price;
        });

        return total;
    }
</script>

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

<%@ include file="../user/header.jsp" %>


<!--开始-->
<div class="container" style="border: solid lightgray 1px; margin-top: 50px;height: 120%;">

    <div class="col-lg-8 col-md-9 col-sm-12 col-xs-12">       <!--把屏幕和右边的选座信息分为两栏-->
        <div id="seat-map">
            <div class="front"></div>                          <!--座位加载-->
            <span class="front_1">银幕中央</span>
        </div>
    </div>                                                     <!--屏幕及座位加载完毕结束点-->

    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">        <!--右边选座信息及价格-->
        <div class="booking-details">
            <div class="booking-details_info">
                <div class="book_movie"><img src="${pageContext.request.contextPath}/${film.image}"></div>
                <div class="movie_info">
                    <span style="font-size: 1.5em;font-weight: 800;">${film.name}</span><br /><br />
                    <span class="_span">类型：<span>动作,冒险,科幻</span></span><br />
                    <span class="_span">时长：<span>124分钟</span></span>
                </div>
                <div class="book">
                    <span class="_span">影院：<span>影天下国际影城</span></span>
                    <span class="_span">影厅：<span>一号4K厅(免费停车3小时)</span></span>
                    <span class="_span">版本：<span>英语3D</span></span>
                    <span class="_span">场次：<span>影天下国际影城</span></span>
                    <span class="_span">票价：<span>￥41/张</span></span>
                    <span class="_span">座位：<span>影天下国际影城</span></span>
                    <div class="select_ticket">
                        <ul id="selected-seats"></ul>
                    </div>

                    <input />

                    <p>票数：<span id="counter">0</span></p>
                    <p>总计：<b>￥<span id="total">0</span></b></p>
                    <div id="legend" style="margin-top: 0px;padding: 0;"></div>

                    <div class="button" style="margin-top: 70px;margin-left: 80px;">
<%--                        <a class="checkout-button hvr-shutter-out-horizontal" onclick="proceed()"><label>立即购票</label></a>--%>

<%--   提交数据选票的数据--%>
    <form action="/film/pay.do" id="form1">
        <input value="123"  name="price" id="price"  type="hidden"/>
        <input value="" name="counter1" id="counter1"  type="hidden"/>
        <input value="" name="seats" id="seats"  type="hidden"/>
        <input value="${film.name}" name="name" id="name"  type="hidden"/>
        <input value="${film.id}" name="id" id="id"  type="hidden"/>
        <a class="checkout-button hvr-shutter-out-horizontal" onclick="proceed()"><label>立即购票</label></a>
<%--<button class="checkout-button hvr-shutter-out-horizontal">立即购票</button>--%>
    </form>

                    </div>

                </div>
            </div>
        </div><!--booking-details结束-->
    </div>    <!--右边选座信息结束点-->

</div>            <!--Container结束-->


<!--下面的不用管，是一个验证有没选座的按钮-->
<div class="modal video-modal fade" id="no_selected" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <section>
                <div class="modal-body">
                    <img style="width: 100px; height: 100px; margin-left: 40%;" src="${pageContext.request.contextPath}/img/cross.png">
                    <h1 class="bigFont center" style="text-align: center">你还没有选座</h1>
                </div>
            </section>
        </div>
    </div>
</div>
<!--//没有选座产生的警示-->
<script>
    function proceed() {
        if (sc.find('selected').length > 0) {
            // $.ajax({
            //     url: window.location.href,
            //     method: 'POST',
            //     data: {
            //         show_id: show_id,
            //         selectedList_JSON: JSON.stringify(sc)
            //     },
            //     success: function (data) {
            //         if (data == "succeed") {
            //             window.location.href = '/payment'
            //         }
            //         else {
            //             if (data == "SeatChosenError") {
            //                 $("#errorMessage").text("Some of chosen seats have been booked just now");
            //                 nextURL = null;
            //             }
            //             else if (data == "LoginError") {
            //                 $("#errorMessage").text("Please login before booking");
            //                 nextURL = '/login';
            //             }
            //             $("#seat_taken").modal('show');
            //         }
            //     }
            // });

            document.getElementById('form1').submit(); //验证成功进行表单提交



        }
        else {
            $("#no_selected").modal("show");
        }
    }
</script>


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
