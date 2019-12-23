$(function(){
	var path = window.location.href;
	console.log(path);
	if(path.endsWith("#")) {
		path = path.substring(0,path.indexOf("#"));
		console.log(path);
	}
	
	var name = path.substring(path.indexOf('=')+1);
	
	if(name == path) {
		var data = {};
		select('../goods/goodsLoader', data);
	} else {
		var data={
				cataName:name
		};
		select('../goods/selectByName', data);
	}
	
	function select(url,data){
		$.ajax({
			url:url,
			type:'get',
			dataType:'json',
			data:data,
			async: false,
			success:function(data){
				
				var gLists = data.gLists;
				var fDiv = $(".rig_tab");
				
				for(var goods of gLists) {
					var div = $("<div style='width: 215px' onclick='jumpDetails("+"\""+goods.name+"\""+");'></div>");
					var p1 = $("<p class='da'></p>");
					var a = $("<a href='#'></a>");
					
					var img = $("<img src='"+goods.photo+"' class='dim' />");
					
					var p2 = $("<p class='tab_R'></p>");
					var span = $("<span>￥"+goods.price+"</span>");
					
					var a2 = $("<a href='#' title='' class='tab_JE'>"+goods.desc+"</a>");
					
					a.append(img);
					p1.append(a);
					
					p2.append(span);
					
					div.append(p1);
					div.append(p2);
					div.append(a2);
					
					fDiv.append(div);
					
				}
				
			}
			
		})
		
	}
	
})
