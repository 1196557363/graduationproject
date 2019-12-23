<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/list/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/list/font/iconfont.css">
<script src="${pageContext.request.contextPath }/resources/user/list/js/jquery-1.12.4.js"></script>
<link href="../favicon/list/favicon.ico" rel="icon" type="image/x-icon" />
<title>商品详情</title>
</head>
<body>
	<!--头部-->
	<div class="header_head">
		<div class="header_head_box">
			<b class="header_head_p">
				<div style="overflow: hidden">
					<a href="${pageContext.request.contextPath }/u_user/index" class="header_head_p_a1">首页</a>
				</div>
			</b>
			<ul>
				<li><a href="${pageContext.request.contextPath }/u_user/login" class="li_2">你好，请登录</a></li>
			</ul>
		</div>
	</div>

	<!--搜索导航-->
	<div class="header_sous">
		<div class="logo">
			<a href="#">
				<img src="" alt="" width="180px" height="70px">
			</a>
		</div>
		<div class="header_form">
			<input id="keyword" name="keyword" type="text" placeholder="手机" /> 
			<a href="#" onclick="searchList()">搜索</a>
		</div>
		<div class="header_ico">
			<div class="header_gw">
				<span>
					<a href="#">我的购物车</a>
				</span> 
				<img src="${pageContext.request.contextPath }/resources/user/list/img/settleup-@1x.png" />
				<span>0</span>
			</div>
			<div class="header_ko">
				<p>购物车中还没有商品，赶紧选购吧！</p>
			</div>
		</div>

		<nav>
			<ul>
				<li class="nav_li1"><a href="#">全部商品分类</a></li>
			</ul>
		</nav>

	</div>

	<hr style="border: 1px solid red; margin-top: -7px;">

	<br />

	<!--商品筛选和排序-->
	<div class="GM_banner w">
		<div class="GM_nav">
		<!-- 		
			<div class="GM_selector">手机商品筛选
				<div class="title">
					<h3>
						<b>默认关键字</b><em>商品筛选</em>
					</h3>
				</div>
				<div class="GM_nav_logo">
					<div class="GM_pre">
						<div class="sl_key">
							<span>属性：</span>
						</div>
						<div class="sl_value">
							<ul>
								<li>属性值</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div> 
		-->


		<!--排序-->
		<div class="GM_banner_main">
			<!--商品精选  广告-->
			<div class="GM_con_left">
				<div class="GM_con_left_bar">
					<div class="GM_con_one">
						<div class="mt">
							<h3>商品精选</h3>
							<span>广告</span>
						</div>
						<div class="mc">
							<ul>
								<li>
									<a href="#" title="vivo X9s 全网通 4GB+64GB 磨砂黑 移动联通电信4G手机 双卡双待">
									<img src="${pageContext.request.contextPath }/resources/user/list/img/59bf3c47n91d65c73.jpg" alt=""></a> 
									<a href="#" title="【预约版】华为 HUAWEI 畅享7S 全面屏双摄 4GB +64GB 黑色 移动联通电信4G手机 双卡双待">
										<em>华为 HUAWEI nova 2S 全面屏四摄 6GB +64GB 曜石黑 移动联通电信4G手机 双卡双待</em>
									</a>
									<div class="mc_price">
										<strong class="price"> 
											<span class="J-p-5963064">￥2999.00</span>
										</strong> 
										<span class="mc-ico" title="购买本商品送赠品"> 
											<i class="goods-icons">赠品</i>
										</span>
									</div>
									<div class="mc_rev">
										已有<a href="#" class="number">12466</a>人评价
									</div>
								</li>
								<li>
									<a href="#" title="vivo X9s 全网通 4GB+64GB 磨砂黑 移动联通电信4G手机 双卡双待">
										<img src="${pageContext.request.contextPath }/resources/user/list/img/593ba628n8794c6a6.jpg" alt="">
									</a> 
									<a href="#" title="【预约版】华为 HUAWEI 畅享7S 全面屏双摄 4GB +64GB 黑色 移动联通电信4G手机 双卡双待">
										<em>诺基亚 7 (Nokia 7) 4GB+64GB 黑色 全网通 双卡双待 移动联通电信4G手机</em>
									</a>
									<div class="mc_price">
										<strong class="price"> 
											<span class="J-p-5963064">￥1799.00</span>
										</strong> 
										<span class="mc-ico" title="购买本商品送赠品"> 
											<i class="goods-icons">赠品</i>
										</span>
									</div>
									<div class="mc_rev">已有<a href="#" class="number">12466</a>人评价</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--综合排序-->
			<div class="GM_con_right">
				<div class="filter">
					<!--综合排序-->
					<div class="filter_top">
						<div class="filter_top_left">
							<a href="#">综合排序</a> 
							<a href="#">销量</a> 
							<a href="#">价格</a> 
							<a href="#">评论分</a> 
							<a href="#">上架时间</a>
						</div>
					</div>

					<!--排序内容-->
					<div class="rig_tab" style="width: 940px">
						
						<%-- <div style="width: 215px">
							<p class="da">
								<a href="#"> 
									<img src="${pageContext.request.contextPath }/resources/user/list/img/57d0d400nfd249af4.jpg" class="dim">
								</a>
							</p>
							<p class="tab_R">
								<span>¥5199.00</span>
							</p>
							<a href="#" title="" class="tab_JE"> Apple iPhone 7 Plus (A1661) 32G 黑色 移动联通电信4G手机 </a>
						</div> --%>
						
						
						
						
						
						
						
						
						
					</div>
						<!--分页-->
						<div class="filter_page">
							<div class="page_wrap">
								<span class="page_span1"> 
									<a href="#"> 
										< 上一页
									</a> 
									<a href="#" style="border: 0; color: #ee2222; background: #fff">1</a>
									<a href="#">2</a> 
									<a href="#">3</a> 
									<a href="#" style="border: 0; font-size: 20px; color: #999; background: #fff">...</a>
									<a href="#">169</a> 
									<a href="#"> 
										下一页 > 
									</a>
								</span> 
								<span class="page_span2"> 
									<em>共<b>169</b>页&nbsp;&nbsp;到第</em> 
									<input type="number" value="1"> 
									<em>页</em> 
									<a href="#">确定</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br />
	<br />

	<!--底部-->
	<footer class="footer">
		<div class="footer_top">
			<ul>
				<li>
					<h3></h3>
				</li>
				<li>
					<h3></h3>
				</li>
				<li>
					<h3></h3>
				</li>
				<li>
					<h3></h3>
				</li>
			</ul>
		</div>
		<div class="footer_center">
			<ol>
			
			</ol>
			<ol>
			
			</ol>
			<ol>
			
			</ol>
			<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
			
			
			
			
			
			
			
			
			
			
			
		</div>
	</footer>


	<script src="${pageContext.request.contextPath }/resources/user/list/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/resources/user/list/js/goodsLoader.js"></script>
	<script language="JavaScript">
		function item(skuid) {
			console.log("skuid:" + skuid);
			window.location.href = "http://item.gmall.com:8084/" + skuid + ".html";
		}

		function searchList() {
			var keyword = $("#keyword").val();
			window.location.href = "/list.html?keyword=" + keyword;
		}

		$(".sl_ext a:nth-child(1)").hover(function() {
			$(this).children("b").stop(true).animate({
				top : "3px"
			}, 50);
			$(this).children("i").stop(true).animate({
				top : "-23px"
			}, 50)
		}, function() {
			$(this).children("b").stop(true).animate({
				top : "24px"
			}, 50);
			$(this).children("i").stop(true).animate({
				top : "3px"
			}, 50)
		});
		$(".sl_ext a:nth-child(2)").hover(function() {
			$(this).children("span").stop(true).animate({
				top : "-1px"
			}, 100);
			$(this).children("i").stop(true).animate({
				top : "-14px"
			}, 100).css({
				display : "none"
			})
		}, function() {
			$(this).children("span").stop(true).animate({
				top : "14px"
			}, 100);
			$(this).children("i").stop(true).animate({
				top : "-1px"
			}, 100).css({
				display : "block"
			})
		});
		$('.tab_im img').hover(
			function() {
				var a = $(this).prop('src');
				var index = $(this).parents('li').index();
				$(this).parents('li').css('border', '2px solid red').siblings('li').css('border', '1px solid #ccc');
				$(this).parents('ul').prev().find('img').prop('src', a);
				$(this).parents('ul').siblings('.tab_JE').find('a').eq(index).css('display', 'block').siblings('a').css('display', 'none');
				$(this).parents('ul').siblings('.tab_R').find('span').eq(index).css('display', 'block').siblings('span').css('display', 'none')
			});

		$(".GM_ipone_one").hover(function() {
			$(this).children("div").css({
				display : "block"
			})
		}, function() {
			$(this).children("div").css({
				display : "none"
			})
		});

		$("#tab>li").click(function() {
			var i = $(this).index();
			$("#container>div").hide().eq(i).show()
		});
		$(".dizhi_show").hover(function() {
			$(".dizhi_con").css({
				display : "block"
			})
		}, function() {
			$(".dizhi_con").css({
				display : "none"
			})
		});
		$(".dizhi_con").hover(function() {
			$(this).css({
				display : "block"
			})
		}, function() {
			$(this).css({
				display : "none"
			})
		});
		//显示隐藏
		var $li = $(".GM_nav_logo>div:gt(3)").hide();
		$('.GM_show span').click(function() {
			if ($li.is(':hidden')) {
				$li.show();
				$(this).css({
					width : "86px"
				}).text('收起 ^');
			} else {
				$li.hide();
				$('.GM_show span').css({
					width : "291px"
				}).text('更多选项（ CPU核数、网络、机身颜色 等）');
			}
			return false;
		});

		$(".rig_tab>div").hover(function() {
			var i = $(this).index();
			$(this).find('.ico').css({
				display : 'block'
			}).stop(true).animate({
				top : "190px"
			}, 300)
		}, function() {
			var i = $(this).index();
			$(this).find('.ico').css({
				display : 'none'
			}).stop(true).animate({
				top : "230px"
			})
		});

		$('.header_main_left>ul>li').hover(function() {
			$(this).css({
				background : "#f0f0f0"
			}).find('.header_main_left_main').stop(true).fadeIn(300)
		}, function() {
			$(this).css({
				background : "#fff"
			}).find(".header_main_left_a").css({
				color : "#000"
			});
			$(this).find('.header_main_left_main').stop(true).fadeOut(100)
		});
		$(".header_sj a").hover(function() {
			$(this).css({
				background : "#444"
			})
		}, function() {
			$(this).css({
				background : "#6e6568"
			})
		});

		$(".nav_li1 a").hover(function() {
			$(".header_main_left").stop(true).fadeIn()
		}, function() {
			$(".header_main_left").stop(true).fadeOut()
		});
		$(".header_main_left").hover(function() {
			$(this).stop(true).fadeIn()
		}, function() {
			$(this).stop(true).fadeOut()
		});

		//右侧侧边栏
		$(".header_bar_box ul li").hover(function() {
			$(this).css({
				background : "#7A6E6E"
			}).children(".div").css({
				display : "block"
			}).stop(true).animate({
				left : "-60px"
			}, 300)
		}, function() {
			$(this).css({
				background : "#7A6E6E"
			}).children(".div").css({
				display : "none"
			}).stop(true).animate({
				left : "0"
			}, 300)
		});

		//底部
		$(".footer_foot .p1 a").hover(function() {
			$(this).css("color", "#D70B1C")
		}, function() {
			$(this).css("color", "#727272")
		});

		$(".footer .footer_center ol li a").hover(function() {
			$(this).css("color", "#D70B1C")
		}, function() {
			$(this).css("color", "#727272")
		})
		
		
		
		function jumpDetails(name){
			window.location.href='${pageContext.request.contextPath }/u_user/details?name='+name;
		}
		
	</script>
</body>
</html>