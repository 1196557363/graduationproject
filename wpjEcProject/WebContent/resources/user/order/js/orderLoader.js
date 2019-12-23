$(function(){
	
	
	function loadjscssfile(filename, filetype) { 
		if (filetype == "js") { 
			var fileref = document.createElement('script');
			fileref.setAttribute("type", "text/javascript"); 
			fileref.setAttribute("src", filename) 
		} else if (filetype == "css") { 
			var fileref = document.createElement("link"); 
			fileref.setAttribute("rel", "stylesheet"); 
			fileref.setAttribute("type", "text/css"); 
			fileref.setAttribute("href", filename) 
		} 
	} 
	
	$.ajax({
		url:'../order/orderLoader',
		type:'post',
		dataType:'json',
		async:false,
		success:function(data){
			
			console.log(data.payList);
			console.log(data.noPayList);
			console.log(data.completeList);
			
			var payList = data.payList;
			var noPayList = data.noPayList;
			var completeList =data.completeList;
			
			var noPayTable = $('.noPayTable');
			for(var pl of payList) {
				var noPayTableTr = $("<tr></tr>");
				var noPayTableTrTd = $("<td colspan='7' style='background:#F7F7F7' class='order-header'></td>");
				
				var date = new Date();
				var fDate = dateFormat("YYYY-mm-dd HH:MM:SS", date);
				
				var noPayTableTrTdSpan1 = $("<span style='color:#AAAAAA'>"+fDate+"</span>");
				var noPayTableTrTdSpan2 = $("<span><ruby style='color:#AAAAAA'>订单号</ruby>"+pl.orderId+"</span>");
				var noPayTableTrTdSpan3 = $("<span>未支付<i class='table_i'></i></span>")
				var noPayTableTrTdI = $("<i class='table_i5 isShow'></i>");
				
				loadjscssfile('../../resources/user/order/css/index.css', "css");
				
				noPayTableTrTd.append(noPayTableTrTdSpan1);
				noPayTableTrTd.append(noPayTableTrTdSpan2);
				noPayTableTrTd.append(noPayTableTrTdSpan3);
				noPayTableTrTd.append(noPayTableTrTdI);
				noPayTableTr.append(noPayTableTrTd);
				noPayTable.append(noPayTableTr);
				
				var noPayTableTr2 = $("<tr></tr>");
				// 生成第一个td
				var noPayTableTr2Td1 = $("<td colspan='3' class='item'></td>");
				var noPayTableTr2Td1Img = $("<img src="+pl.photo+" alt='' class='img' />")
				var noPayTableTr2Td1Div1 = $("<div><p>"+pl.goodsName+"</p></div>")
				var noPayTableTr2Td1Div2 = $("<div style='margin-left:15px;'>X"+pl.num+"</div>")
				
				noPayTableTr2Td1.append(noPayTableTr2Td1Img);
				noPayTableTr2Td1.append(noPayTableTr2Td1Div1);
				noPayTableTr2Td1.append(noPayTableTr2Td1Div2);
				noPayTableTr2.append(noPayTableTr2Td1);
				
				// 生成第二个td
				var noPayTableTr2Td2 = $("<td rowspan='2'><span>"+pl.consignee+"</span></td>");
				noPayTableTr2.append(noPayTableTr2Td2);

				// 生成第三个td
				var noPayTableTr2Td3 = $("<td rowspan='2'></td>");
				
				var totalMoney = pl.num * pl.price;
				
				var noPayTableTr2Td3Div = $("<div style='margin-left:15px;'>总额 "+ totalMoney +"</div>");
				var noPayTableTr2Td3Hr = $("<hr style='width:90%;'>");
				var noPayTableTr2Td3P = $("<p>在线支付</p>");
				
				noPayTableTr2Td3.append(noPayTableTr2Td3Div);
				noPayTableTr2Td3.append(noPayTableTr2Td3Hr);
				noPayTableTr2Td3.append(noPayTableTr2Td3P);
				noPayTableTr2.append(noPayTableTr2Td3);
				
				// 生成第四个td
				var noPayTableTr2Td4 = $("<td rowspan='2'></td>");
				var noPayTableTr2Td4Ul = $("<ul></ul>")
				var noPayTableTr2Td4UlLi1 = $("<li style='color:#71B247;'>等待发货</li>");
				var noPayTableTr2Td4UlLi2 = $("<li style='margin:4px 0;' class='hide'><i class='table_i2'></i>跟踪<i class='table_i3'></i>");
				var noPayTableTr2Td4UlDiv = $("<div class='hi'></div>") 
				var noPayTableTr2Td4UlDivDiv1 = $("<div class='p-tit'>普通快递 运单号:390085324974</div>")
				var noPayTableTr2Td4UlDivDiv2 = $("<div class='hideList'><ul><li>[北京市] 在北京昌平区南口公司进行签收扫描,快件已被拍照(您 的快件已签收,感谢您使用韵达快递)签收</li></ul></div>")
				var noPayTableTr2Td4UlLi3 = $("<li class='tdLi'>订单详情</li>");
				
				noPayTableTr2Td4UlDiv.append(noPayTableTr2Td4UlDivDiv1);
				noPayTableTr2Td4UlDiv.append(noPayTableTr2Td4UlDivDiv2);
				noPayTableTr2Td4UlLi2.append(noPayTableTr2Td4UlDiv);
				
				noPayTableTr2Td4Ul.append(noPayTableTr2Td4UlLi1);
				noPayTableTr2Td4Ul.append(noPayTableTr2Td4UlLi2);
				noPayTableTr2Td4Ul.append(noPayTableTr2Td4UlLi3);
				
				noPayTableTr2Td4.append(noPayTableTr2Td4Ul);
				noPayTableTr2.append(noPayTableTr2Td4);

				
				// 生成第五个td
				var noPayTableTr2Td5 = $("<td rowspan='2'></td>");
				var noPayTableTr2Td5Button = $("<button>支付订单</button>");
				var noPayTableTr2Td5P1 = $("<p style='margin:4px 0;'>取消订单</p>")
				var noPayTableTr2Td5P2 = $("<p>催单</p>");
				
				noPayTableTr2Td5.append(noPayTableTr2Td5Button);
				noPayTableTr2Td5.append(noPayTableTr2Td5P1);
				noPayTableTr2Td5.append(noPayTableTr2Td5P2);
				noPayTableTr2.append(noPayTableTr2Td5);

				noPayTable.append(noPayTableTr2);
				
			
			}
			
			
			var payTable = $('.PayTable');
			
			for(var pl of noPayList) {
				var payTableTr = $("<tr></tr>");
				var payTableTrTd = $("<td colspan='7' style='background:#F7F7F7' class='order-header'></td>");
				
				var date = new Date();
				var fDate = dateFormat("YYYY-mm-dd HH:MM:SS", date);
				
				var payTableTrTdSpan1 = $("<span style='color:#AAAAAA'>"+fDate+"</span>");
				var payTableTrTdSpan2 = $("<span><ruby style='color:#AAAAAA'>订单号</ruby>"+pl.orderId+"</span>");
				var payTableTrTdSpan3 = $("<span>已支付<i class='table_i2'></i></span>")
				var payTableTrTdI = $("<i class='table_i5 isShow'></i>");
				
				loadjscssfile('../../resources/user/order/css/index.css', "css");
				
				payTableTrTd.append(payTableTrTdSpan1);
				payTableTrTd.append(payTableTrTdSpan2);
				payTableTrTd.append(payTableTrTdSpan3);
				payTableTrTd.append(payTableTrTdI);
				payTableTr.append(payTableTrTd);
				payTable.append(payTableTr);
				
				var payTableTr2 = $("<tr></tr>");
				// 生成第一个td
				var payTableTr2Td1 = $("<td colspan='3' class='item'></td>");
				var payTableTr2Td1Img = $("<img src="+pl.photo+" alt='' class='img' />")
				var payTableTr2Td1Div1 = $("<div><p>"+pl.goodsName+"</p></div>")
				var payTableTr2Td1Div2 = $("<div style='margin-left:15px;'>X"+pl.num+"</div>")
				
				payTableTr2Td1.append(payTableTr2Td1Img);
				payTableTr2Td1.append(payTableTr2Td1Div1);
				payTableTr2Td1.append(payTableTr2Td1Div2);
				payTableTr2.append(payTableTr2Td1);
				
				// 生成第二个td
				var payTableTr2Td2 = $("<td rowspan='2'><span>"+pl.consignee+"</span></td>");
				payTableTr2.append(payTableTr2Td2);

				// 生成第三个td
				var payTableTr2Td3 = $("<td rowspan='2'></td>");
				
				var totalMoney = pl.num * pl.price;
				
				var payTableTr2Td3Div = $("<div style='margin-left:15px;'>总额 "+ totalMoney +"</div>");
				var payTableTr2Td3Hr = $("<hr style='width:90%;'>");
				var payTableTr2Td3P = $("<p>在线支付</p>");
				
				payTableTr2Td3.append(payTableTr2Td3Div);
				payTableTr2Td3.append(payTableTr2Td3Hr);
				payTableTr2Td3.append(payTableTr2Td3P);
				payTableTr2.append(payTableTr2Td3);
				
				// 生成第四个td
				var payTableTr2Td4 = $("<td rowspan='2'></td>");
				var payTableTr2Td4Ul = $("<ul></ul>")
				var payTableTr2Td4UlLi1 = $("<li style='color:#71B247;'>等待收货</li>");
				var payTableTr2Td4UlLi2 = $("<li style='margin:4px 0;' class='hide'><i class='table_i2'></i>跟踪<i class='table_i3'></i>");
				var payTableTr2Td4UlDiv = $("<div class='hi'></div>") 
				var payTableTr2Td4UlDivDiv1 = $("<div class='p-tit'>普通快递 运单号:390085324974</div>")
				var payTableTr2Td4UlDivDiv2 = $("<div class='hideList'><ul><li>[北京市] 在北京昌平区南口公司进行签收扫描,快件已被拍照(您 的快件已签收,感谢您使用韵达快递)签收</li></ul></div>")
				var payTableTr2Td4UlLi3 = $("<li class='tdLi'>订单详情</li>");
				
				payTableTr2Td4UlDiv.append(payTableTr2Td4UlDivDiv1);
				payTableTr2Td4UlDiv.append(payTableTr2Td4UlDivDiv2);
				payTableTr2Td4UlLi2.append(payTableTr2Td4UlDiv);
				
				payTableTr2Td4Ul.append(payTableTr2Td4UlLi1);
				payTableTr2Td4Ul.append(payTableTr2Td4UlLi2);
				payTableTr2Td4Ul.append(payTableTr2Td4UlLi3);
				
				payTableTr2Td4.append(payTableTr2Td4Ul);
				payTableTr2.append(payTableTr2Td4);

				
				// 生成第五个td
				var payTableTr2Td5 = $("<td rowspan='2'></td>");
				var payTableTr2Td5Button = $("<button>确认收货</button>");
				var payTableTr2Td5P1 = $("<p style='margin:4px 0;'>取消订单</p>")
				var payTableTr2Td5P2 = $("<p>催单</p>");
				
				payTableTr2Td5.append(payTableTr2Td5Button);
				payTableTr2Td5.append(payTableTr2Td5P1);
				payTableTr2Td5.append(payTableTr2Td5P2);
				payTableTr2.append(payTableTr2Td5);

				payTable.append(payTableTr2);
				
			}
			
			
			
			var completeTable = $('.completeTable');
			
			for(var pl of completeList) {
				
				var completeTableTr = $("<tr></tr>");
				var completeTableTrTd = $("<td colspan='7' style='background:#F7F7F7' class='order-header'></td>");
				
				var date = new Date();
				var fDate = dateFormat("YYYY-mm-dd HH:MM:SS", date);
				
				var completeTableTrTdSpan1 = $("<span style='color:#AAAAAA'>"+fDate+"</span>");
				var completeTableTrTdSpan2 = $("<span><ruby style='color:#AAAAAA'>订单号</ruby>"+pl.orderId+"</span>");
				var completeTableTrTdSpan3 = $("<span>已签收<i class='table_i3'></i></span>")
				var completeTableTrTdI = $("<i class='table_i5 isShow'></i>");
				
				loadjscssfile('../../resources/user/order/css/index.css', "css");
				
				completeTableTrTd.append(completeTableTrTdSpan1);
				completeTableTrTd.append(completeTableTrTdSpan2);
				completeTableTrTd.append(completeTableTrTdSpan3);
				completeTableTrTd.append(completeTableTrTdI);
				completeTableTr.append(completeTableTrTd);
				completeTable.append(completeTableTr);
				
				var completeTableTr2 = $("<tr></tr>");
				// 生成第一个td
				var completeTableTr2Td1 = $("<td colspan='3' class='item'></td>");
				var completeTableTr2Td1Img = $("<img src="+pl.photo+" alt='' class='img' />")
				var completeTableTr2Td1Div1 = $("<div><p>"+pl.goodsName+"</p></div>")
				var completeTableTr2Td1Div2 = $("<div style='margin-left:15px;'>X"+pl.num+"</div>")
				
				completeTableTr2Td1.append(completeTableTr2Td1Img);
				completeTableTr2Td1.append(completeTableTr2Td1Div1);
				completeTableTr2Td1.append(completeTableTr2Td1Div2);
				completeTableTr2.append(completeTableTr2Td1);
				
				// 生成第二个td
				var completeTr2Td2 = $("<td rowspan='2'><span>"+pl.consignee+"</span></td>");
				completeTableTr2.append(completeTr2Td2);

				// 生成第三个td
				var completeTr2Td3 = $("<td rowspan='2'></td>");
				
				var totalMoney = pl.num * pl.price;
				
				var completeTableTr2Td3Div = $("<div style='margin-left:15px;'>总额 "+ totalMoney +"</div>");
				var completeTableTr2Td3Hr = $("<hr style='width:90%;'>");
				var completeTableTr2Td3P = $("<p>在线支付</p>");
				
				completeTr2Td3.append(completeTableTr2Td3Div);
				completeTr2Td3.append(completeTableTr2Td3Hr);
				completeTr2Td3.append(completeTableTr2Td3P);
				completeTableTr2.append(completeTr2Td3);
				
				// 生成第四个td
				var completeTableTr2Td4 = $("<td rowspan='2'></td>");
				var completeTableTr2Td4Ul = $("<ul></ul>")
				var completeTableTr2Td4UlLi1 = $("<li style='color:#71B247;'>已收货</li>");
				var completeTableTr2Td4UlLi2 = $("<li style='margin:4px 0;' class='hide'><i class='table_i2'></i>跟踪<i class='table_i3'></i>");
				var completeTableTr2Td4UlDiv = $("<div class='hi'></div>") 
				var completeTableTr2Td4UlDivDiv1 = $("<div class='p-tit'>普通快递 运单号:390085324974</div>")
				var completeTableTr2Td4UlDivDiv2 = $("<div class='hideList'><ul><li>[北京市] 在北京昌平区南口公司进行签收扫描,快件已被拍照(您 的快件已签收,感谢您使用韵达快递)签收</li></ul></div>")
				var completeTableTr2Td4UlLi3 = $("<li class='tdLi'>订单详情</li>");
				
				completeTableTr2Td4UlDiv.append(completeTableTr2Td4UlDivDiv1);
				completeTableTr2Td4UlDiv.append(completeTableTr2Td4UlDivDiv2);
				completeTableTr2Td4UlLi2.append(completeTableTr2Td4UlDiv);
				
				completeTableTr2Td4Ul.append(completeTableTr2Td4UlLi1);
				completeTableTr2Td4Ul.append(completeTableTr2Td4UlLi2);
				completeTableTr2Td4Ul.append(completeTableTr2Td4UlLi3);
				
				completeTableTr2Td4.append(completeTableTr2Td4Ul);
				completeTableTr2.append(completeTableTr2Td4);

				
				// 生成第五个td
				var completeTableTr2Td5 = $("<td rowspan='2'></td>");
				var completeTableTr2Td5Button = $("<button>售后处理</button>");
				var completeTableTr2Td5P1 = $("<p style='margin:4px 0;'>取消订单</p>")
				var completeTableTr2Td5P2 = $("<p>催单</p>");
				
				completeTableTr2Td5.append(completeTableTr2Td5Button);
				completeTableTr2Td5.append(completeTableTr2Td5P1);
				completeTableTr2Td5.append(completeTableTr2Td5P2);
				completeTableTr2.append(completeTableTr2Td5);

				completeTable.append(completeTableTr2);
				
			}
			
			
			
		}
		
	})
	
	function dateFormat(fmt, date) {
	    let ret;
	    let opt = {
	        "Y+": date.getFullYear().toString(),        // 年
	        "m+": (date.getMonth() + 1).toString(),     // 月
	        "d+": date.getDate().toString(),            // 日
	        "H+": date.getHours().toString(),           // 时
	        "M+": date.getMinutes().toString(),         // 分
	        "S+": date.getSeconds().toString()          // 秒
	        // 有其他格式化字符需求可以继续添加，必须转化成字符串
	    };
	    for (var k in opt) {
	        ret = new RegExp("(" + k + ")").exec(fmt);
	        if (ret) {
	            fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
	        };
	    };
	    return fmt;
	}
	
})