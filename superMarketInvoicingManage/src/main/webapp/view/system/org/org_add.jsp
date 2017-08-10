<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单添加页</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">菜单管理</a></li>
		<li><a href="####">添加菜单</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="authority-add-form" >
        	<div class="panel panel-default">
	            <div class="panel-heading">新增菜单</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required"></span>上级菜单</th>
		                    <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="pId" id="pId">
					        			<!-- <option value="0" >停用</option>
					        			<option value="1"  selected="selected">开启</option> -->
					        		</select>
		                        </div>
		                    </td>
		                    
		                	<th><span class="required">*</span>菜单名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="菜单名称" name="name" value="">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                	<th>url</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  name="url" value="">
		                        </div>
		                    </td>
		                    <th><span class="required"></span>菜单图标样式</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="iconClass"  name="iconClass" value="">
		                        </div>
		                    </td>
		                </tr>
		                </tbody>
		            </table>
			        <div class="col-md-12 text-center btn-margin">
	                    <button class="btn  btn-info" type="button" name="addSub" id="addBtn">
					        <i class="icon-ok bigger-110"></i>           
					                    提交
	                    </button>
	                    <button class="btn" type="button" id="cancelBtn" name="cancelButton">
	                    	<i class="icon-undo bigger-110"></i>  
	                    	取消
	                    </button>
	                </div>
	           	</div>
            </div>
        </form>
	<!-- user-form end -->
</div>
<script type="text/javascript">
	$(document).ready(function(){
		//加载父菜单
		loadPAuth();
	});
	$("#addBtn").click(function (){
	     $.ajax({
 			type : "post",
 			url : _path+"/invoicing/system/authority/add?__"+(new Date()).getTime(),
 			 data:$('#authority-add-form').serialize(),// 你的formid
              async:false,
 			 	success : function(data) {
 				if(data.code==1){
 					alert("菜单保存成功！");
 					var url=_path+"/invoicing/system/authority/list";
 					$.get(url,function(data){
 						$("#mian_div").html(data);
 					});
 				}else{
 					alert("菜单保存失败");
 				}
 			}
         });
	});
	
	//返回列表页
	$("#cancelBtn").click(function (){
		var url=_path+"/invoicing/system/authority/list";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});
	});
	
	//加载父菜单
	function loadPAuth(){
		var authList='${pAuthList}';
		//遍历并组装
		var selectParenAuth=$("#pId");
		var optionStr="";
		$.each(JSON.parse(authList),function(index,obj){
			optionStr+="<option value='"
					 +obj.id+"' >"
					 +obj.name+"</option>";
		});
		selectParenAuth.append(optionStr);
	}
</script>
</body>
</html>