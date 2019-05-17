<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>登录</title>
    <!--引入boostrap4-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap4.min.css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <!--引入自样式定义-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login&&rig.css"/>
</head>
<body>
<!--导航部分-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">HELLO影院</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/user/index.do">首页<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="all_movie.html">电影</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link" href="list.html">榜单</a>
            </li>
        </ul>
    </div>
</nav>
<!--登陆表单部分-->
<div class="login-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-1"></div>

            <!--轮播图-->
            <div class="col-md-5">
                <div class="roll-Pic">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="${pageContext.request.contextPath}/img/background5.jpg" alt="First slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>picture1</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="${pageContext.request.contextPath}/img/background6.jpg" alt="Second slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>picture2</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="${pageContext.request.contextPath}/img/background7.jpg" alt="Third slide">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>picture3</h5>
                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-1"></div>

            <!--表单-->

            <div class="col-md-4"  style="opacity:0.8;">
                <div class="form-wrapper">
                    <div class="sig-up">
                        <h2 class="form-title">登录</h2>
                        <a id="regurl" href="/user/register.do">还没有账号，立即注册</a>
                    </div>
                    <div class="login-from">
                        <form class="form-check was-validated" action="/user/userLogin.do" method="post" onsubmit="return loginFrom ()">
                            <div class="form-group row">
                                <label for="inputAccount" class="col-sm-3 col-4 col-form-label">用户名</label>
                                <div class="col-sm-9 col-8">
                                    <input type="text" class="form-control" name="username" id="username" placeholder="用户名/邮箱" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-4 col-form-label">密&nbsp;&nbsp;&nbsp;码</label>
                                <div class="col-sm-9 col-8">
                                    <input class="form-control" type="password" name="password" id="password" placeholder="登录密码" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="j_captcha" class="col-sm-3 col-4 col-form-label">验证码</label>
                                <div class="col-sm-5 col-4" >
                                    <input
                                            id="j_captcha" name="tryCode" type="text"
                                            class="form-control in" placeholder="验证码" />
                                </div>
                                <%--<div class="col-sm-3 col-4 "></div>--%>

                                <div class="col-sm-3 col-4" style="padding-left: 0px; border-radius: 5px" >
                                    <img style="border-radius: 5px ;width: 90px;margin-top: 2px" class="" id="captcha_img" alt="点击更换" title="点击更换"
                                         onclick="changeVerifyCode(this)" src="/defaultKaptcha.do" />
                                </div>
                            </div>

                            <div class="form-group row" id="123">
                                ${msg}

                                </div>


                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck">
                                <label class="form-check-label defaultCheck" for="defaultCheck">保持登录状态</label>
                                <a href="#" id="forget-password" class="find-pwd">忘记密码？</a>
                            </div>
                            <button type="submit" class="btn btn-lg btn-block btn-style">登录</button>
                        </form>
                    </div>
                </div>
            </div>


            <div class="col-md-1"></div>
        </div>
    </div>
</div>
<!--底部-->
<div class="col-lg-12" style="text-align: center;color:#A9A9A9; font-size: 14px; margin-top: 50px;">版权所属</div>


<!--引用js文件，引用的顺序必须为jQuery，bootstrap-->
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/js/common/commonutil.js" type="text/javascript"></script>

<script type="text/javascript">


    //登录验证
    function loginFrom () {
        var username=document.getElementById('username');
        var passwordd=document.getElementById('password');
        if(username.value.length==0){
            alert("用户名不能为空");
            return false;
        }
        if(passwordd.value.length==0){
            alert("请输入密码");
            return false;
        }
        else{
            return true;
        }
    }
</script>

</body>
</html>
