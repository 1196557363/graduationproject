$(function(){
	
	
	
	var ul = $('#header_main_left ul');
	$.ajax({
		url:"../catalog/catalogLoader",
		type:'get',
		dataType:'json',
		async: false,
		success:function(data){
			 var firstCatalog = data.cfList;
			 var secondCatalog = data.csList;
			 for(var catalog of firstCatalog){
				 if(catalog.pid == 0) {
					 var li = "<li>" 
					 		+"<a href='#' class='header_main_left_a' ctg-data='"+catalog.id+"'><b>"+catalog.name+"</b></a>"
					 		+"</li>";
					 ul.append(li);
				 }
			 }
		}
		
	})
	
//	function loadjscssfile(filename, filetype) { 
//		if (filetype == "js") { 
//			var fileref = document.createElement('script');
//			fileref.setAttribute("type", "text/javascript"); 
//			fileref.setAttribute("src", filename) 
//		} else if (filetype == "css") { 
//			var fileref = document.createElement("link"); 
//			fileref.setAttribute("rel", "stylesheet"); 
//			fileref.setAttribute("type", "text/css"); 
//			fileref.setAttribute("href", filename) 
//		} 
//	} 
	
	 $.ajax({
		url:"../catalog/secondCatalogLoader",
		type:'get',
		dataType:'json',
		async: false,
		success:function(data){
			
			var csList = data.csList;
			
			if(data != null) {
				
				$(".header_main_left_a").each(function(){
			        var ctgnums= $(this).attr("ctg-data");
					if(ctgnums) {
						var panel=$("<div class='header_main_left_main' style='display: none; opacity: 1;'></div>");
//                        loadjscssfile('../../resources/user/index/css/GL.css', "css"); //加载你的css文件
			            var panelol=$("<ol class='header_ol'></ol>");
			            
			            var li=$("<li></li>");
			            var cata2link=$("<a href='#' style= 'color: #111;' class='aaa'>"+"分类"+"</a>");
			            for(var c of csList){
			            	if(c.pid == ctgnums) {
					            li.append(cata2link);
					            console.log(c.name);
					            var cata = $("<a href='#' style= 'color: #111;' class='cataName' onclick='selectByName("+"\""+c.name+"\""+")'>"+ c.name + "</a>");
		            			li.append(cata);
		            			panelol.append(cata2link).append(li);
			            	}
			            }
			            panel.append(panelol);
		                $(this).after(panel);
		                $(this).parent().addClass("header_li2");
		                
					}
				
				
				})
				
			}
			
		}
	 })
	
	$('.header_main_left>ul>li').hover(function() {
		$(this).css({
			background: "#989898"
		}).find('.header_main_left_main').stop(true).fadeIn(300)
	}, function() {
		$(this).css({
			background: "#6e6568"
		}).find(".header_main_left_a").css({
			color: "#fff"
		})
		$(this).find('.header_main_left_main').stop(true).fadeOut(100)
	})
	
	
});