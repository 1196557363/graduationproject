<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>注册页面</title>
<script src="${pageContext.request.contextPath }/resources/user/register/libs/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/resources/user/register/js/jQuery/jquery-3.1.1.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/register/bootStrap/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/register/sass/index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/register/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/admin/easyui/easyui.1.3.4/themes/default/easyui.css">
<link href="../favicon/register/favicon.ico" rel="icon" type="image/x-icon" />


<body>

	<header> 
	<!-- https://www.jd.com/?cu=true&utm_source=haosou-pinzhuan&utm_medium=cpc&utm_campaign=t_288551095_haosoupinzhuan&utm_term=0a875d61c5fe47d8bc48679132932d23_0_2702c6f4ae1c4cd191c1ee4398e2e21b -->
		<a href="javascript:void(0);" class="logo">
			<img src="${pageContext.request.contextPath }/resources/user/register/img/logo.jpg" alt="">
		</a>
		<div class="desc">欢迎注册</div>
		<div class="dfg">
			<span>已有账号？</span> <a href="${pageContext.request.contextPath }/u_user/login">请登录</a>
		</div>
	</header>
	<section>
		<form action="" class="one">
			<div class="register-box">
				<label for="username" class="username_label">用 户 名 
					<input maxlength="20" type="text" id="username" placeholder="您的用户名和登录名">
				</label>
				<div class="tips"></div>
			</div>
			<div class="register-box">
				<label for="username" class="other_label">设 置 密 码 
					<input maxlength="20" type="password" id="password" placeholder="建议至少使用两种字符组合">
				</label>
				<div class="tips"></div>
			</div>
			<div class="register-box">
				<label for="username" class="other_label">确 认 密 码 
					<input maxlength="20" type="password" id="repassword" placeholder="请再次输入密码">
				</label>
				<div class="tips"></div>
			</div>
			<div class="register-box">
				<label for="username" class="other_label"> <span>中国 0086∨</span> 
					<input class="phone" id="phone" maxlength="20" type="text" placeholder="建议使用常用手机">
				</label>
				<div class="tips"></div>
			</div>
			<div class="register-box">
				<label for="username" class="other_label">验 证 码 
				<input maxlength="20" type="text" id="codes" placeholder="请输入验证码" class="caa">
				</label> <span id="code"></span>
				<div class="tips"></div>
			</div>
			<div class="arguement">
				<input type="checkbox" id="xieyi"> 阅读并同意 <a href="#">《谷粒用户注册协议》</a>
				<a href="#">《隐私政策》</a>
				<div class="tips"></div>
				<br />
				<div class="submit_btn">
					<button type="submit" id="submit_btn">立 即 注 册</button>
				</div>
			</div>
	
		</form>
	<div class="two">
		<div class="right_r">
			<div class="right_r1">
				<img src="${pageContext.request.contextPath }/resources/user/register/img/a65a18e877a16246a92e1b755bd88a03_03.png" /> <span>企业用户注册</span>
			</div>
			<div class="right_r2">
				<img src="${pageContext.request.contextPath }/resources/user/register/img/a65a18e877a16246a92e1b755bd88a03_06.png" /> <span>INTERNATIONAL
					<br /> CUSTOMERS
				</span>
			</div>
		</div>
	</div>
	</section>
	<br />
	<br />
	<hr>
	<div class="footer">
		<ul>
			<li><a href="">关于我们</a></li>
			<li>|</li>
			<li><a href="">联系我们</a></li>
			<li>|</li>
			<li><a href="">人次招聘</a></li>
			<li>|</li>
			<li><a href="">商家入驻</a></li>
			<li>|</li>
			<li><a href="">广告服务</a></li>
			<li>|</li>
			<li><a href="">手机京东</a></li>
			<li>|</li>
			<li><a href="">友情链接</a></li>
			<li>|</li>
			<li><a href="">销售联盟</a></li>
			<li>|</li>
			<li><a href="">京东社区</a></li>
			<li>|</li>
			<li><a href="">京东公益</a></li>
			<li>|</li>
			<li><a href="">English Site</a></li>
		</ul>
	</div>
	<br />
	<br />
	<script src="${pageContext.request.contextPath }/resources/admin/easyui/easyui.1.3.4/jquery.easyui.min.js"></script>
	<script type="text/javascript" charset="utf-8">
		
		$(function() {
			
			
			
			//聚焦失焦input
			$('#username').focus(function() {
				if($('#username').val().length == 0) {
					$('#username').parent().next("div").text("支持中文，字母，数字，'-'，'_'的多种组合");
				}
			})
			$('input').eq(1).focus(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("建议使用字母、数字和符号两种以上的组合，6-20个字符");
				}
			})
			$('input').eq(2).focus(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("请再次输入密码");
				}
			})
			$('input').eq(3).focus(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("验证完后，你可以使用该手机登陆和找回密码");
				}
			})
			$('input').eq(4).focus(function() {
				if($(this).val().length == 0) {
					$(this).parent().next().next("div").text("看不清？点击图片更换验证码");
				}
			})
			//input各种判断
			//用户名：
			var flag1 = true;
			$('#username').blur(function() {
				if($('#username').val().length == 0) {
					$('#username').parent().next("div").text("");
					$('#username').parent().next("div").css("color", '#ccc');
					flag1 = false;
				} else if($('#username').val().length > 0 && $(this).val().length < 4) {
					$('#username').parent().next("div").text("长度只能在4-20个字符之间");
					$('#username').parent().next("div").css("color", 'red');
					flag1 = false;
				} else if($('#username').val().length >= 4 && !isNaN($(this).val())) {
					$('#username').parent().next("div").text("用户名不能为纯数字");
					$('#username').parent().next("div").css("color", 'red');
					flag1 = false;
				} else {
					$.ajax({
						url:'${pageContext.request.contextPath}/u_user/existsAccount',
						data:{account:$('#username').val()},
						type:'get',
						dataType:'json',
						success:function(data){
							if(data.type == 'false'){
								$('#username').parent().next("div").text("用户名重复");
								$('#username').parent().next("div").css("color", 'red');
								flag1 = false;
								return;
							} else {
								flag1 = true;
							}
						}
					})
					$(this).parent().next("div").text("");
				}
			})
				//密码
				var flag2 = true;
			$('input').eq(1).blur(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("");
					$(this).parent().next("div").css("color", '#ccc');
					flag2 = false;
				} else if($(this).val().length > 0 && $(this).val().length < 6) {
					$(this).parent().next("div").text("长度只能在6-20个字符之间");
					$(this).parent().next("div").css("color", 'red');
					flag2 = false;
				} else {
					$(this).parent().next("div").text("");
					flag2 = true;
				}
			})
				//	确认密码
				var flag3 = true;
			
			$('input').eq(2).blur(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("");
					$(this).parent().next("div").css("color", '#ccc');
					flag3 = false;
				} else if($(this).val() != $('input').eq(1).val()) {
					$(this).parent().next("div").text("两次密码不匹配");
					$(this).parent().next("div").css("color", 'red');
					flag3 = false;
				} else {
					$(this).parent().next("div").text("");
					flag3 = true;
				}
			})
				//	手机号
				var flag4 = true;
			$('input').eq(3).blur(function() {
				if($(this).val().length == 0) {
					$(this).parent().next("div").text("");
					$(this).parent().next("div").css("color", '#ccc');
					flag4 = false;
				} else if($(this).val().substr(0, 3) != 138 
						&& $(this).val().substr(0, 3) != 189 
						&& $(this).val().substr(0, 3) != 139 
						&& $(this).val().substr(0, 3) != 158 
						&& $(this).val().substr(0, 3) != 188 
						&& $(this).val().substr(0, 3) != 157 
						&& $(this).val().substr(0, 3) != 130 
						|| $(this).val().length != 11) {
					$(this).parent().next("div").text("手机号格式不正确");
					$(this).parent().next("div").css("color", 'red');
					flag4 = false;
				} else {
					$(this).parent().next("div").text("");
					flag4 = true;
				}
			})
				// 	验证码
				//	 验证码刷新
				
			function code() {
				var str = "qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPLKJHGFDSAZXCVBNM";
				var str1 = 0;
				for(var i = 0; i < 4; i++) {
					str1 += str.charAt(Math.floor(Math.random() * 62))
				}
				str1 = str1.substring(1)
				$("#code").text(str1);
			}
			code();
			$("#code").click(code);
			//	验证码验证
			var flag5 = true;
			$('input').eq(4).blur(function() {
				if($(this).val().length == 0) {
					$(this).parent().next().next("div").text("");
					$(this).parent().next().next("div").css("color", '#ccc');
					flag5 = false;
				} else if($(this).val().toUpperCase() != $("#code").text().toUpperCase()) {
					$(this).parent().next().next("div").text("验证码不正确");
					$(this).parent().next().next("div").css("color", 'red');
					flag5 = false;
				} else {
					$(this).parent().next().next("div").text("");
					flag5 = true;
				}
			})
			//	提交按钮
			$("#submit_btn").click(function(e) {
				for(var j = 0; j < 5; j++) {
					if($('input').eq(j).val().length == 0) {
						$('input').eq(j).focus();
						if(j == 4) {
							$('input').eq(j).parent().next().next("div").text("此处不能为空");
							$('input').eq(j).parent().next().next("div").css("color", 'red');
							e.preventDefault();
							return;
						}
						$('input').eq(j).parent().next(".tips").text("此处不能为空");
						$('input').eq(j).parent().next(".tips").css("color", 'red');
						e.preventDefault();
						return;
					}
				}
				
				if(!flag1) {
					alert("用户名错误");
				} else if(!flag2) {
					alert("密码错误");
				} else if(!flag3) {
					alert("密码不一致")
				} else if(!flag4) {
					alert("手机号码错误");
				} else if(!flag5) {
					alert("验证码错误");
				} else {
					if($("#xieyi")[0].checked) {
						$.ajax({
							url:'${pageContext.request.contextPath}/u_user/register',
							data:{account:$('#username').val(),password:$('#password').val(),phone:$('#phone').val()},
							type:'post',
							dataType:'json',
							success:function(data){
								if(data.type == 'true'){
									window.location.href="login";
								} else {
									$('input').eq(4).parent().next().next("div").text("注册失败，请重新注册！");
									$('input').eq(4).parent().next().next("div").css("color", 'red');
								}
								
							}
						})
						
					} else {
						$("#xieyi").next().next().next(".tips").text("请勾选协议");
						$("#xieyi").next().next().next(".tips").css("color", 'red');
						e.preventDefault();
						return;
					}
					
				}
				
			})
			

		})
	</script>
</body>
</html>