<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>商品详情</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/details/scss/shop.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/details/scss/main.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/details/scss/header.css" />
	<link href="../favicon/details/favicon.ico" rel="icon" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/user/details/bootstrap/css/bootstrap.css"/>
</head>
<body>
	<div id="max">
		<header>
			<div class="min">
				<ul class="header_ul_left">
					<li class="glyphicon glyphicon-home"> 
						<a href="${pageContext.request.contextPath }/u_user/index" class="aa">首页</a>
					</li>
				</ul>
				<ul class="header_ul_right">
					<li style="border: 0;"><a href="${pageContext.request.contextPath }/u_user/login" class="aa">你好，请登录</a></li>
					<li><a href="${pageContext.request.contextPath }/u_user/register" style="color: red;">免费注册</a> | </li>
					<li><a href="${pageContext.request.contextPath }/u_user/order" class="aa">我的订单</a> | </li>
				</ul>
			</div>
		</header>
	
		<nav>
			<div class="nav_min">
				<div class="nav_top">
					<div class="nav_top_one"><a href="#"><img src="${pageContext.request.contextPath }/resources/user/details/img/logo1.jpg"/></a></div>
					<div class="nav_top_two"><input type="text"/><button>搜索</button></div>
					<div class="nav_top_three"><a href="../JD_Shop/One_JDshop.html">我的购物车</a><span class="glyphicon glyphicon-shopping-cart"></span>
						<div class="nav_top_three_1">
							<img src="${pageContext.request.contextPath }/resources/user/details/img/44.png"/>购物车还没有商品，赶紧选购吧！
						</div>
					</div>
				</div>
				<div class="nav_down">
					<ul class="nav_down_ul">
						<li class="nav_down_ul_1" style="width: 24%;float: left;">
							<a href="javascript:;">全部商品分类</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

		
	<div class="Shop">
		<div class="box">
			<div class="box-one">
				<div class="boxx">
					<div class="imgbox">
						<%-- <div class="probox">
							<img class="img1" alt="" src="${pageContext.request.contextPath }/resources/user/details/img/59ded626N7c4cb0a3.jpg">
							<div class="hoverbox"></div>
						</div>
						<div class="showbox">
							<img class="img1" alt="" src="${pageContext.request.contextPath }/resources/user/details/img/59ded626N7c4cb0a3.jpg">
						</div> --%>
					</div>

					<div class="box-lh">
						<div class="box-lh-one">
							<ul>
								<%--
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded62eN64a9784c.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded626Ne3c69b70.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded626N7c4cb0a3.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded626Ne3c69b70.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded62dN7e28abc5.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded62cN6e9ac17c.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded620Nfc0ab489.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded60eN3110f3a8.jpg" /></li>
								<li><img src="${pageContext.request.contextPath }/resources/user/details/img/59ded62dNfed003a8.jpg" /></li> 
								--%>
							</ul>
						</div>
						<div id="left">
							< </div>
								<div id="right">
									>
								</div>

						</div>

						<div class="boxx-one">
							<ul>
								<li>
									 
								</li>
								<li>

								</li>
							</ul>
						</div>

					</div>
					<div class="box-two">
						<!-- <div class="box-name">
							华为 HUAWEI Mate 10 6GB+128GB 亮黑色 移动联通电信4G手机 双卡双待
						</div> -->
 
						<div class="box-yuyue">
							<div class="yuyue-one">
								 热卖促销中
							</div>
							<div class="yuyue-two">
								<ul>
									<li>
										 
									</li>
									<li>
		 
									</li>
								</ul>
							</div>
						</div>
						<div class="box-summary clear">
							<ul>
								<li>惊喜价</li>
								<li class="box-moneyLi">
									<span>￥</span>
									<!-- <span>4499.00</span> -->
								</li>
								<li>
								 
								</li>
								<li>
									<a href="">
										 
									</a>
								</li>
							</ul>
						</div>
						<div class="box-wrap clear">
							 
						</div>

						<div class="box-stock">
							<ul class="box-ul">
								<li>库存:</li>
								<li class="box-stock-li">
									<div class="box-stock-one">
									</div>
								</li>
								<li class="box-repertory">
									<!-- <span>无货</span>， 此商品暂时售完 -->
								</li>
 
							</ul>
						</div>
						 <div class="box-stock">
							<ul class="box-ul">
								<li>重  量:</li>
								<li class="box-stock-li">
									<div class="box-stock-one">
									</div>
								</li>
								<li class="box-weight">
									 <!--  10 kg -->
								</li>
 
							</ul>
						</div>
						  
						<!-- <div class="box-attr-3">
						<br/>
							<div class="box-attr-2 clear">
								<dl>
									<dt>选择颜色</dt>
									<dd>
										<div>
											  摩卡金
										</div>
									</dd>
								</dl>
							</div>
							
							<br/>
						</div> -->

						<div class="box-btns clear">
							<div class="box-btns-one">
								<form id="itemForm" action="${pageContext.request.contextPath }/details/addOrder" method="post">
									<input type="text" name="num" id="num"  value="1"/>
									<input type="hidden" name="skuId"/>
									<div class="box-btns-one1">
										<div>
											<button type="button" id="jia">
												+
											</button>
										</div>
										<div>
											<button type="button" id="jian">
												-
											</button>
										</div>
									</div>
								</form>
							</div>
							<div id="cartBtn" style="cursor:pointer;" canClick="1" onclick="addToCart(this)" class="box-btns-two">
								放入购物车
							</div>
						</div>
					</div>
				</div>
			</div>
			 

		<div class="ShopXiangqing">
			<div class="allLeft">
				<!--火热预约-->
				<div class="huoreyuyue">
					<h3>火热预约</h3>
				</div>
				<div class="dangeshopxingqing">
					<ul class="shopdange">
						<li>
							<a href="##"><img src="${pageContext.request.contextPath }/resources/user/details/img/5a0afeddNb34732af.jpg" /></a>
							<p>
								<a href="##">OPPO R11s Plus 双卡双待全面屏拍照手机香槟色 全网通(6G RAM+64G ROM)标配</a>
							</p>
							<p><strong class="J-p-20015341974">￥3699.00</strong></p>
						</li>
						<li>
							<a href="##"><img src="${pageContext.request.contextPath }/resources/user/details/img/5a12873eN41754123.jpg" /></a>
							<p>
								<a target="_blank" title="詹姆士（GEMRY） R19plus全网通4G 智能手机 双卡双待 6+128GB 鳄鱼纹雅致版（新品预约）" href="/item.html.bak/item.jd.com/20348283521.html">詹姆士（GEMRY） R19plus全网通4G 智能手机 双卡双待 6+128GB 鳄鱼纹雅致版（新品预约）</a>
							</p>
							<p><strong class="J-p-20348283521">￥13999.00</strong></p>
						</li>
					</ul>
				</div>
			</div>
			<!--商品介绍-->
			<div class="allquanbushop">
				<ul class="shopjieshao">
					<li class="jieshoa" style="background: #e4393c;">
						<a href="##" style="color: white;">商品介绍</a>
					</li>
					<li class="baozhuang">
						<a href="##">规格与包装</a>
					</li>
					<li class="baozhang">
						<a href="##">售后保障</a>
					</li>
					<li class="pingjia">
						<a href="##">商品评价(4万+)</a>
					</li>
					<li class="shuoming">
						<a href="##">预约说明</a>
					</li>

				</ul>
				
				<!--商品详情-->
				<div class="huawei">
					<ul class="xuanxiangka">
						<li class="jieshoa actives" id="li1">
							<div class="shanpinsssss">
								<p>
									<!-- <a href="#">品牌:华为（HUAWEI）</a> -->
								</p>
								<table class="shanpinTable">
<!-- 								<tr>
										<td>
											<a href="##">商品名称：华为Mate 10</a>
										</td>
										<td>
											<a href="##">商品毛重：0.58kg</a>
										</td>
										<td>
											<a href="##">商品编号：5544038</a>	
										</td>
										<td>
											<a href="##">商品产地：中国大陆</a>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<a href="##">全面屏，双卡双待，指纹识别，Type-C，VoLTE，2K屏，拍照神器，支持NFC，商务手机，安全手机，分辨率10</a>
										</td>
									</tr>
									
									
 -->							</table>
							
							</div>
						</li>
						
						
						
						
						<li class="baozhang actives" id="li3">
							<div class="oBox">
								<div class="shuoHou">
									<div class="baoZhang">
										<h2>售后保障</h2>
									</div>
								</div>
								<!--厂家服务-->
								<div class="lianBao">
						 
								</div>
							</div>
						</li>
							 
					</ul>
				</div>
			</div>
		</div>
	</div>


	</body>
	<script src="${pageContext.request.contextPath }/resources/user/details/js/jquery1.9.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath }/resources/user/details/js/js.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath }/resources/user/details/js/detailsLoader.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
        function addToCart(obj){
            var canClick = $(obj).attr("canClick");
            if(canClick=='0'){
                return ;
            }
			var goodsName = $('.box-name').html().substring(0,$('.box-name').html().indexOf('&'));
			var consignee = "${u_user.nick}";
			var price = $('.box-moneyLi span:last-child').html();
			var num = $("#num").val();
			
            $.ajax({
            	url:'../order/addOrder',
            	type:'post',
            	data:{
            		name:goodsName,
            		consignee:consignee,
            		price:price,
            		num:num,
            		photo: $(".probox img").attr('src')
            	},
            	dataType:'json',
            	success:function(data){
            		if(data.type == 'true') {
						var flag = confirm("放入购物车成功！是否进入支付页面");
						if(flag) {
							window.location.href='../u_user/order';
						}
            		} else {
            			alert("放入购物车失败，请稍后！");
            		}
            	}
            	
            })
        }

        function switchSkuId() {
            // 被选中属性
            var checkDivs = $(".redborder div");
            var valueIds="";
            // 拼接成属性值串
            for (var i = 0; i < checkDivs.length; i++) {
                var saleAttrValueDiv = checkDivs.eq(i);
                if(i>0){
                    valueIds= valueIds+"|";
                }
                valueIds=valueIds+saleAttrValueDiv.attr("value");
            }
            //页面上的hashjson
            var valuesSku = $("#valuesSku").attr("value");
            var valuesSkuJson=JSON.parse(valuesSku);

            // 看看hash有没有
            var skuId= valuesSkuJson[valueIds];
            // 当前sku
            var skuIdSelf=$("#skuId").val();

            // 判断是否跳转
            if(skuId){
                if(skuId==skuIdSelf){
                    $("#cartBtn").attr("class","box-btns-two");
                }else{
                    window.location.href="/"+skuId+".html";
                }
            }else{
                $("#cartBtn").attr("class","box-btns-two-off");
            }
        }
        
        $("#jia").click(function() {
    		var n = $("#num").val();
    		var num = parseInt(n) + 1;
    		if(num == 0) {
    			return;
    		}
    		$("#num").val(num);
    	})

    	$("#jian").click(function() {
    		var n = $("#num").val();
    		var num = parseInt(n) - 1;
    		if(num == 0) {
    			return;
    		}
    		$("#num").val(num);
    	})
    	
    	
    	
	</script>
</html>
