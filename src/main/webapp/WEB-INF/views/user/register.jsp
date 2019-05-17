<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>注册</title>
	<!--引入boostrap4-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap4.min.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap4.min.css"/>
	<!--引入自定义样式-->
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
				<a class="nav-link" href="/user/all_movie.do">电影</a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link" href="/user/list.do">榜单</a>
			</li>
		</ul>
	</div>
</nav>
<!--登陆表单部分-->
<div class="login-wrapper sig-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6" style="opacity:0.8;">
				<div class="form-wrapper">
					<div class="sig-up">
						<h2 class="form-title">注册</h2>
						<a id="regurl" href="/user/login.do">已有账号，马上登录</a>
					</div>
					<div class="login-from">
						<form class="form-check was-validated" action="/user/toregist.do" method="post" onsubmit="return checkFrom()">
							<div class="form-group row">
								<label for="inputAccount" class="col-sm-2 col-4 col-form-label">用户名</label>
								<div class="col-sm-10 col-8">
									<input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名" onblur="checkUserName()" oninput="checkUserName()"/>
									<span id="usernameErr"></span>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-2 col-4 col-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
								<div class="col-sm-10 col-8">
									<input class="form-control" type="password" name="password" id="password1" placeholder="请输入密码" onblur="checkPassword()" oninput="checkPassword()"/>
									<span id="password1Err"></span>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputAgaintPassword" class="col-sm-2 col-4 col-form-label">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
								<div class="col-sm-10 col-8">
									<input class="form-control" type="password" name="password2" id="password2" placeholder="再次确认密码" onblur="ConfirmPassword()" oninput="ConfirmPassword()"/>
									<span id="password2Err"></span>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputTel" class="col-sm-2 col-4 col-form-label">手&nbsp;&nbsp;&nbsp;&nbsp;机</label>
								<div class="col-sm-10 col-8">
									<input class="form-control" type="text" name="phone" id="telPhoneNum" placeholder="请输入手机号" onblur="checkPhone()" oninput="checkPhone()" />
									<span id="telErr"></span>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputEmail" class="col-sm-2 col-4 col-form-label">邮&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
								<div class="col-sm-8 col-8">
									<input class="form-control" type="text" name="email" id="iEmail" placeholder="请输入邮箱" onblur="checkEmail()" oninput="checkEmail()" />
									<span id="emailErr"></span>
								</div>
								<div class="col-sm-2 ">
									<a href="#" class="btn btn-primary btn-sm verif-style">验&nbsp;证</a>
								</div>
							</div>
							<div class="form-group row">
								<label for="chooseSex" class="col-sm-3 col-5 col-form-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
								<div class="col-sm-7 col-7 row sex ">
									<div class="custom-control custom-radio col-sm-7 col-7">
										<input type="radio" class="custom-control-input" id="customControlValidation2" name="sex" required value="男">
										<label class="custom-control-label" for="customControlValidation2">男</label>
									</div>
									<div class="custom-control custom-radio col-sm-5 col-5">
										<input type="radio" class="custom-control-input" id="customControlValidation3" name="sex" required value="女">
										<label class="custom-control-label" for="customControlValidation3">女</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="custom-control custom-checkbox mb-3">
									<input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
									<label class="custom-control-label agreeCheck" for="customControlValidation1">我已阅读并同意</label>
									<a href="#" id="protoco; id="protoco;" class="protocal">《用户注册协议》</a>
									<div class="invalid-feedback">请阅读用户注册协议</div>
								</div>
							</div>
							<button type="submit" class="btn btn-lg btn-block btn-style">注册</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</div>
<!--底部-->
<div class="col-lg-12" style="text-align: center;color:#A9A9A9; font-size: 14px; margin-top: 50px;">版权所属</div>

<script type="text/javascript">
	//验证注册表单
	function checkFrom(){
		var userName=checkUserName();
		var passwordd=checkPassword();
		var conPassword=ConfirmPassword();
		var telPhone=checkPhone();
		var email=checkEmail();
		return userName&&passwordd&&conPassword&&telPhone&&email;
	}

	//验证用户名
	function checkUserName(){
		var username = document.getElementById('username');
		var errname = document.getElementById('usernameErr');
		var name=username.value;
		var pattern = /^\w{5,}$/;  //用户名格式正则表达式：用户名要至少5位
		if(username.value.length == 0){
			errname.innerHTML="用户名不能为空"
			errname.style.color="red"
			errname.className="error"
			return false;
		}
		if(!pattern.test(username.value)){
			errname.innerHTML="用户名要至少5位 "
			errname.className="error"
			errname.style.color="red"
			return false;
		}
		else{

			$.post("/user/checkregist.do" , {username:name} , function(data , status){
				// alert(data);


				if(data == 1){
					// alert("用户名存在");
					// $("#span01").html("<font color='red'>用户名已被注册</font>");
					errname.innerHTML="用户名已被注册"

					errname.className="error"
					errname.style.color="red"

					return false;
				}


				else{
					//alert("用户名可用");

					// $("#span01").html("<font color='green'>用户名可以使用</font>");

					errname.innerHTML="用户名可以使用"
					errname.style.color="green"

					errname.className="success";


					return true;

				}
			} );


			errname.innerHTML=""
			errname.className="success";
			return true;
		}
	}

	//验证密码
	function checkPassword(){
		var userpasswd = document.getElementById('password1');
		var errPasswd = document.getElementById('password1Err');
		var pattern = /^\w{6,10}$/; //密码要在6-10位
		if(!pattern.test(userpasswd.value)){
			errPasswd.innerHTML="密码要在6以上 "
			errPasswd.style.color="red"
			errPasswd.className="error"
			return false;
		}
		else{
			errPasswd.innerHTML=""
			errPasswd.className="success";
			return true;
		}
	}

	//确认密码
	function ConfirmPassword(){
		var userpasswd = document.getElementById('password1');
		var userConPassword = document.getElementById('password2');
		var errConPasswd = document.getElementById('password2Err');
		if((userpasswd.value)!=(userConPassword.value) || userConPassword.value.length == 0){
			errConPasswd.innerHTML="上下密码不一致"
			errConPasswd.style.color="red"
			errConPasswd.className="error"
			return false;
		}
		else{
			errConPasswd.innerHTML=""
			errConPasswd.className="success";
			return true;
		}
	}
	//班级验证
	function checkClass(){
		var  userClass= document.getElementById('studentClass');
		var errClass = document.getElementById('classErr');
		if(userClass.value.length == 0){
			errClass.innerHTML="班级不能为空"
			errClass.style.color="red"
			errClass.className="error"
			return false;
		}
		else{
			errClass.innerHTML=""
			errClass.className="success";
			return true;
		}
	}
	//电话号码验证
	function checkPhone(){
		var userphone = document.getElementById('telPhoneNum');
		var phonrErr = document.getElementById('telErr');
		var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式
		if(!pattern.test(userphone.value)){
			phonrErr.innerHTML="手机号码不合规范"
			phonrErr.style.color="red"
			phonrErr.className="error"
			return false;
		}
		else{
			phonrErr.innerHTML=""
			phonrErr.className="success";
			return true;
		}
	}
	//验证邮箱
	function checkEmail(){
		var userEmail= document.getElementById('iEmail');
		var EmailErr = document.getElementById('emailErr');
		var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;  //验证手机号正则表达式
		if(userEmail.value.length==0){
			EmailErr.innerHTML="邮箱不能为空"
			EmailErr.style.color="red"
			EmailErr.className="error"
			return false;
		}
		if(!pattern.test(userEmail.value)){
			EmailErr.innerHTML="邮箱规格不合规范"
			EmailErr.style.color="red"
			EmailErr.className="error"
			return false;
		}
		else{
			EmailErr.innerHTML=""
			EmailErr.className="success";
			return true;
		}
	}
</script>
<!--引用js文件，引用的顺序必须为jQuery，bootstrap-->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/js/bootstrap4.min.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>


