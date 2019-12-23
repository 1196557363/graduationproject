$(function(){
	
	var path = window.location.href;
	if(path.endsWith("#")) {
		path = path.substring(0,path.indexOf("#"));
	}
	var name = path.substring(path.indexOf('=')+1);
	
	$.ajax({
		url:"../details/selectDetails",
		type:"get",
		dataType:"json",
		data:{name:name},
		async:false,
		success:function(data){
			
			var details = data.details;
			var photos = details.photos;
			var pArr = new Array();
			
			pArr = photos.split(",");
			
			if(data.details!='') {
				// 生成大图和放大图
				var div = $(".imgbox");
				var sDiv1 = $("<div class='probox'></div>");
				var img1 = $("<img class='img1' alt='' src='"+pArr[0]+"'>");
				var ssDiv2 = $("<div class='hoverbox'></div>");
				
				var sDiv2 = $("<div class='showbox'></div>");
				var img2 = $("<img class='img1' alt='' src='"+pArr[0]+"'>");
				
				sDiv1.append(img1).append(ssDiv2);
				sDiv2.append(img2);
				
				div.append(sDiv1);
				div.append(sDiv2);
				
				// 生成大图下面的小图
				var ul = $(".box-lh-one ul");
				for(var i = 0; i < pArr.length; i++) {
					var li = $("<li></li>");
					var img = $("<img src='"+pArr[i]+"' />");
					li.append(img);
					ul.append(li);
				}
				// 生成详细名称
				var dDiv = $(".box-two");
				var dsDiv = $("<div class='box-name'>"+details.name+"&nbsp;&nbsp;&nbsp;"+details.detailName+"</div>")
				dDiv.prepend(dsDiv);
				
				//生成价格
				var pDiv = $(".box-moneyLi");
				$.ajax({
					url:"../goods/selectGoodsPrice",
					type:"get",
					dataType:"json",
					data:{name:name},
					async:false,
					success:function(data2){
						var pSpan = $("<span>"+data2.price+"</span>");
						pDiv.append(pSpan);
					}
				})
				
				// 生成库存
				var repertoryLi = $(".box-repertory");
				var repertorySpan = $("</span>"+details.repertory+"</span>")
				repertoryLi.append(repertorySpan);
				
				// 生成重量
				var weightLi = $(".box-weight");
				weightLi.append(details.weight);
				
				// 生成商品介绍
				var shanpinsssssDiv = $('.shanpinsssss');
				var shanpinsSpan = $(".shanpinsssss p");
				var shanpinsA = $("<a href='javascript:;'>品牌名称:"+details.name+"</a>");
				
				shanpinsssssDiv.prepend(shanpinsSpan.append(shanpinsA));
				
				var shanpinTable = $(".shanpinTable");
				var shanpinTableTr = $("<tr></tr>");
				
				var shanpinTd1 = $("<td style='width:220px;'></td>");
				var shanpinA1 = $("<a href='javascript:;'>商品名称  : "+details.name+"</a>");
				var shanpinTd2 = $("<td style='width:220px;'></td>");
				var shanpinA2 = $("<a href='javascript:;'>商品产地  : "+details.address+"</a>");
				var shanpinTd3 = $("<td style='width:220px;'></td>");
				var shanpinA3 = $("<a href='javascript:;'>商品编号  : "+details.serialNumber+"</a>");
				
				shanpinTableTr.append(shanpinTd1.append(shanpinA1));
				shanpinTableTr.append(shanpinTd2.append(shanpinA2));
				shanpinTableTr.append(shanpinTd3.append(shanpinA3));
				
				shanpinTable.append(shanpinTableTr);
				
				var shanpinTableTr2 = $("<tr></tr>");
				var shanpinTd4 = $("<td colspan='4'></td>");
				var shanpinA4 = $("<a href='javascript:;'> "+details.other+"</a>")
				
				shanpinTableTr2.append(shanpinTd4.append(shanpinA4));
				shanpinTable.append(shanpinTableTr2);

				
				
				
			}
			
			
		}
		
	})
	
	
	
	//左右滚动
	$("#right").click(function() {
		$(".box-lh-one ul").stop().animate({
			"left": "-297px"
		})
		$(this).css({
			"color": "#000"
		})
		$("#right").css({
			"color": "#ccc"
		})
	})
	$("#left").click(function() {
		$(".box-lh-one ul").stop().animate({
			"left": 0
		})
		$(this).css({
			"color": "#000"
		})
		$("#left").css({
			"color": "#ccc"
		})
	})

	//换图片
	$(".box-lh-one li").mouseover(function() {
		$(this).css({
			"padding": "0",
			"border": "solid 1px red"

		}).siblings().css({
			"padding": "1px",
			"border": "none"
		})

	})


	function Zoom(imgbox, hoverbox, l, t, x, y, h_w, h_h, showbox) {
		var moveX = x - l - (h_w / 2);
		//鼠标区域距离
		var moveY = y - t - (h_h / 2);
		//鼠标区域距离
		if(moveX < 0) {
			moveX = 0
		}
		if(moveY < 0) {
			moveY = 0
		}
		if(moveX > imgbox.width() - h_w) {
			moveX = imgbox.width() - h_w
		}
		if(moveY > imgbox.height() - h_h) {
			moveY = imgbox.height() - h_h
		}
		//判断鼠标使其不跑出图片框
		var zoomX = showbox.width() / imgbox.width()
		//求图片比例
		var zoomY = showbox.height() / imgbox.height()

		showbox.css({
			left: -(moveX * zoomX),
			top: -(moveY * zoomY)
		})
		hoverbox.css({
			left: moveX,
			top: moveY
		})
		//确定位置

	}

	function Zoomhover(imgbox, hoverbox, showbox) {
		var l = imgbox.offset().left;
		var t = imgbox.offset().top;
		var w = hoverbox.width();
		var h = hoverbox.height();
		var time;
		$(".probox img,.hoverbox").mouseover(function(e) {
			var x = e.pageX;
			var y = e.pageY;
			$(".hoverbox,.showbox").show();
			hoverbox.css("opacity", "0.3")
			time = setTimeout(function() {
				Zoom(imgbox, hoverbox, l, t, x, y, w, h, showbox)
			}, 1)
		}).mousemove(function(e) {
			var x = e.pageX;
			var y = e.pageY;
			time = setTimeout(function() {
				Zoom(imgbox, hoverbox, l, t, x, y, w, h, showbox)
			}, 1)
		}).mouseout(function() {
			showbox.parent().hide()
			hoverbox.hide();
		})
	}
	$(function() {
		Zoomhover($(".probox img"), $(".hoverbox"), $(".showbox img"));
		$(".box-lh-one ul li").hover(function() {
			$('.img1').attr("src", $(this).find('img').attr('src'));
		})
	})
})