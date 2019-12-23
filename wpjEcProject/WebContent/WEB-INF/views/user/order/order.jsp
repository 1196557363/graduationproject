<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>订单列表</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/order/css/list.css">
		<style media="screen">
			* {
				font-family: "微软雅黑";
			}
		</style>
	</head>

	<body>
		<div id="nav">
			<nav>
				<div class="logo">
					<img src="${pageContext.request.contextPath }/resources/user/order/img/logo2018.gif" alt="">
				</div>
				<div class="myjd">
				</div>
				<ul class="nav_ul">
					<li><a href="${pageContext.request.contextPath }/u_user/index" style="color:#fff;">首页</a></li>
				</ul>
				<div style="clear:both;"></div>
			</nav>

		</div>
		<div style="clear:both;"></div>
		<div id="big">
			<div id="bigRight">
				<div class="myOrder">
					<p>我的订单</p>
				</div>

				<div class="allBig">
					<div class="allOrder">
						<ul class="allOrderTop">
							<li>
								<ol>
									<li>全部订单</li>
									<li>待付款</li>
									<li>待收货</li>
									<li>待评价</li>
									<div style="clear:both;"></div>
								</ol>
							</li>

							<div class="clear:both;"></div>
						</ul>

					</div>
					<div class="details">
						<ul class="detailsUl">
							<div class="detailsUlDiv">
								<li class="detailsLiok detailsLi">近三个月订单<i class="allBig_i"></i>
									<ol>
										<li>近三个月订单</li>
										<li>今年内订单</li>
										<li>今年内订单</li>
										<li>2016年订单</li>
										<li>2015年订单</li>
										<li>2014年订单</li>
										<li>2014年以前订单</li>
									</ol>
								</li>
								<li class="detailsLi">订单详情</li>
								<div style="clear:both;"></div>
							</div>

							<li class="detailsLi1">收货人</li>
							<li class="detailsLi1">金额</li>
							<li class="detailsLi1 detailsLiok">全部状态<i class="allBig_i"></i>
								<ol>
									<li>全部状态</li>
									<li>等待付款</li>
									<li>等待收货</li>
									<li>已完成</li>
									<li>已取消</li>
								</ol>
							</li>
							<li class="detailsLi1">操作</li>
							<div style="clear:both;"></div>
						</ul>
					</div>


					<table class="table noPayTable">
						
					</table>


					<table class="table PayTable">
												
					</table>

					<table class="table completeTable">
												
					</table>

					<div class="order_btm">
						<div>
							<button>上一页</button>
							<span>1</span>
							<button>下一页</button>
						</div>
					</div>
					
					<div style="clear:both;"></div>
					
				</div>

			</div>
			<div style="clear:both;"></div>
		</div>

		
	</body>
	<script src="${pageContext.request.contextPath }/resources/user/order/js/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/user/order/js/list.js"></script>
	<script type="text/javascript">
		var nick = "${u_user.nick}";
		console.log("nick: " + nick);
		if(nick == ''){
			console.log(nick);
			alert("登录会话已失效，请重新登录");
			window.location.href='${pageContext.request.contextPath }/u_user/login';
		}	
	</script>
	<script src="${pageContext.request.contextPath }/resources/user/order/js/orderLoader.js"  type="text/javascript"></script>
</html>