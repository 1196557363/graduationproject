<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
    <div id="wu-toolbar">
        <div class="wu-toolbar-button">
            <%@include file="../common/menus.jsp"%>
        </div>
        <div class="wu-toolbar-search">
            <label>收货人:</label><input id="search-consignee" class="wu-text" style="width:100px">
            <label>状态:</label>
            <select id="search-status" class="easyui-combobox" panelHeight="auto" style="width:120px">
            	<option value="-1">全部</option>
            	<option value="1">未支付</option>
            	<option value="2">已支付</option>
            	<option value="3">已完成</option>
            </select>
            <a href="#" id="search-btn" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar">
    
    </table>
</div>

<!-- 修改窗口 -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <input type="hidden" name="id" id="edit-id">
        <table>
        	<tr>
        		<td colspan="2"><input type="hidden" id="edit-orderId"></td>
        	</tr>
            <tr>
                <td width="60" align="right">商品名称:</td>
                <td><input type="text" id="edit-name" disabled name="goodsName" value="1" class="wu-text easyui-numberbox easyui-validatebox" data-options="required:true,min:1,precision:0, missingMessage:'请填写商品名字'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收货人:</td>
                <td><input type="text" id="edit-consignee" disabled  name="consignee" value="1" class="wu-text easyui-numberbox easyui-validatebox" data-options="required:true,min:1,precision:0, missingMessage:'请填写收货人'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">价格:</td>
                <td><input type="text" id="edit-price" disabled name="price" value="1" class="wu-text easyui-numberbox easyui-validatebox" data-options="required:true,min:1,precision:0, missingMessage:'请填写价格'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">数量:</td>
                <td><input type="text" id="edit-num" disabled name="num" value="1" class="wu-text easyui-numberbox easyui-validatebox" data-options="required:true,min:1,precision:0, missingMessage:'请填写数量'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">总金额:</td>
                <td><input type="text" id="edit-totalMoney" disabled name="totalMoney" value="1" class="wu-text easyui-numberbox easyui-validatebox" data-options="required:true,min:1,precision:0, missingMessage:'请填写总金额'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">状态:</td>
                <td>
					<select name="status" id="edit-status" class="easyui-combobox" panelHeight="auto" style="width:268px">
            			<option value="1">未支付</option>
            			<option value="2">已支付</option>
            			<option value="3">已完成</option>
		            </select>
				</td>
            </tr>
        </table>
    </form>
</div>

<%@include file="../common/footer.jsp"%>

<script type="text/javascript">


	//搜索按钮监听
	$("#search-btn").click(function(){
		
		var consignee = $("#search-consignee").val();
		var status = $("#search-status").combobox('getValue');
		var option = {username:$("#search-consignee").val()};
		if(consignee != -1){
			option.consignee = consignee;
		}
		if(status != -1){
			option.status = status;
		} 
		
		$('#data-datagrid').datagrid('reload',option);
	});



	/**
	* 打开修改窗口
	*/
	function openEdit(){
		//$('#edit-form').form('clear');
		var item = $('#data-datagrid').datagrid('getSelections');
		if(item == null || item.length == 0){
			$.messager.alert('信息提示','请选择要修改的数据！','info');
			return;
		}
		if(item.length > 1){
			$.messager.alert('信息提示','请选择一条数据进行修改！','info');
			return;
		}
		item = item[0];
		$('#edit-dialog').dialog({
			closed: false,
			modal:true,
	        title: "修改用户信息",
	        buttons: [{
	            text: '确定',
	            iconCls: 'icon-ok',
	            handler: edit
	        }, {
	            text: '取消',
	            iconCls: 'icon-cancel',
	            handler: function () {
	                $('#edit-dialog').dialog('close');                    
	            }
	        }],
	        onBeforeOpen:function(){
	        	$("#edit-orderId").val(item.orderId);
	        	$("#edit-name").val(item.goodsName);
				$("#edit-consignee").val(item.consignee);
	        	$("#edit-price").val(item.price);
	        	$("#edit-num").val(item.num);
	        	$("#edit-totalMoney").val(item.totalMoney);
	        	$("#edit-status").val(item.status);
	        }
	    });
	}	



	
	

	/**
	* Name 修改记录
	*/
	function edit(){	
		var validate = $("#edit-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#edit-form").serialize();
		var status = GetQueryValue(data,'status');
		
		$.ajax({
			url:'editOrder',
			dataType:'json',
			type:'post',
			data:{
				status:status,
				orderId:$('#edit-orderId').val()
			},
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','修改成功！','info');
					$('#edit-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	
	function GetQueryValue(data, queryName) {
	    var query = data;
	    var vars = query.split("&");
	    for (var i = 0; i < vars.length; i++) {
	        var pair = vars[i].split("=");
	        if (pair[0] == queryName) { return pair[1]; }
	    }
	    return null;
	}


	$('#data-datagrid').datagrid({
		url:'order',
		rownumbers:true,
		singleSelect:false,
		pageSize:20,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		idField:'id',
	    treeField:'goodsName',
		fit:true,
		columns:[[
			{ field:'chk', checkbox:true},
			{ field:'orderId', title:'编号', width:100, align:'center'},
			{ field:'goodsName', title:'商品名称', width:100, sortable:true},
			{ field:'consignee', title:'收货人', width:100},
			{ field:'price', title:'价格', width:100},
			{ field:'num', title:'数量', width:100},
			{ field:'totalMoney', title:'总金额', width:100},
			{ field:'status', title:'状态', width:100, formatter:function(value,row,index){
				switch(value){
					case 1:{
						return '未支付';
					}
					case 2:{
						return '已支付';
					}
					case 3:{
						return '已完成';
					}
				}
				return value;
			}}
		]],
		onLoadSuccess:function(data){
			window.onload = function(){
				var url = document.location.href; //获取浏览器访问栏里的地址
				if( url.indexOf("r=") == -1 ){    //判断地址后面是否多了某些值，没有就进方法里进行刷新
					var t = new Date();
					$('.pagination-load').trigger('click');
				}
			 }
			$('.authority-edit').linkbutton({text:'编辑权限',plain:true,iconCls:'icon-edit'});
		 }
	});
	
	
	
	
</script>