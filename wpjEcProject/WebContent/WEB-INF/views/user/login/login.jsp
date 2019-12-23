<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/login/css/gm1.css" />
<script src="${pageContext.request.contextPath }/resources/user/login/js/jquery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/admin/easyui/easyui.1.3.4/themes/default/easyui.css">
<link href="../favicon/login/favicon.ico" rel="icon" type="image/x-icon" />
</head>
<body>
	<header> 
		<a href="javascript:void(0);"> 
		<img src="${pageContext.request.contextPath }/resources/user/login/img/logo1.jpg" /></a>
		<p>欢迎登录</p>
	</header>
	<div class="top-2">
		<div class="top-2a">
			<p></p>
		</div>
	</div>
	<!--大图-->
	<div class="top-3">
		<div class="img_1">
			<img src="${pageContext.request.contextPath }/resources/user/login/img/login_bg.jpg" />
		</div>
		<div id="sign">
			<div class="si_cen">
				<h2 class="act btn1"></h2>
			</div>
			<div class="si_bom1 tab" style="display: block;">
				<div class="error" id="error"></div>
				<form id="loginForm" method="post">
					<ul>
						<li class="top_1"><img src="${pageContext.request.contextPath }/resources/user/login/img/user_03.png" class="err_img1" />
							<input type="text" name="account" id="account" placeholder=" 邮箱/用户名/已验证手机"
							class="user" /></li>
						<li><img src="${pageContext.request.contextPath }/resources/user/login/img/user_06.png" class="err_img2" /> <input
							type="password" name="password" id="password" placeholder=" 密码" class="password" />
						</li>
						<li class="bri"><a href="">忘记密码</a></li>
						<li class="ent">
							<button id="btn2" type="button" class="btn2">
								<a href="javascript:submitLogin();" class="a">登&nbsp;&nbsp;录</a>
							</button>
						</li>
					</ul>
					<input type="hidden" id="originUrl" name="originUrl" th:value="${originUrl}" />
				</form>
			</div>
			<div class="si_out">
				<h5 class="rig">
					<img src="${pageContext.request.contextPath }/resources/user/login/img/registImg.png" /> <span><a href="${pageContext.request.contextPath }/u_user/register">立即注册</a></span>
				</h5>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath }/resources/admin/login/js/jquery-1.8.0.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/admin/easyui/easyui.1.3.4/jquery.easyui.min.js"></script>
<script language="JavaScript">

	function submitLogin() {
		var account = $("#account").val();
		var password = $("#password").val();
		if(account == '' || account == 'undefined'){
			$('.error').html("<img src='${pageContext.request.contextPath }/resources/user/login/img/pwd-icons-error.png' class='errorImg' />账户名或密码不能为空");
			$('.error').css("padding-left","45px");
			$('.error').css("display","block");
			return;
		}
		if(password == '' || password == 'undefined'){
			$('.error').html("<img src='${pageContext.request.contextPath }/resources/user/login/img/pwd-icons-error.png' class='errorImg' />账户名或密码不能为空");
			$('.error').css("padding-left","45px");
			$('.error').css("display","block");
			return;
		}
		$('.error').css("display","none");

		$.ajax({
			url:'${pageContext.request.contextPath}/u_user/login',
			data:{account:account,password:password},
			type:'post',
			dataType:'json',
			success:function(data){
				if(data.type == 'true'){
					window.parent.location = 'index';
				}else{
					$('.error').html("<img src='${pageContext.request.contextPath }/resources/user/login/img/pwd-icons-error.png' class='errorImg' />账户名或密码错误");
					$('.error').css("padding-left","68px");
					$('.error').css("display","block");
				}
			}
		});
	}
	var btn2 = document.getElementsByClassName('btn2')[0];
	var user = document.getElementsByClassName('user')[0];
	var pass = document.getElementsByClassName('password')[0];
	var err = document.getElementsByClassName('error')[0];
	var err_img1 = document.getElementsByClassName('err_img1')[0];
	var err_img2 = document.getElementsByClassName('err_img2')[0];

	user.onfocus = function() {
		user.style.border = '1px solid green';
	}
	pass.onfocus = function() {
		pass.style.border = '1px solid green';
	}
	user.onblur = function() {
		user.style.border = '1px solid #999';
	}
	pass.onblur = function() {
		pass.style.border = '1px solid #999';
	}
</script>
</html>
