<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色添加页</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">角色管理</a></li>
		<li><a href="####">添加角色</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="role-add-form" >
        	<div class="panel panel-default">
	            <div class="panel-heading">新增角色</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>角色名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="角色名称" name="roleName" value="">
		                        </div>
		                    </td>
		                    <th><span class="required"></span>角色名描述</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="角色名描述"  name="roleDesc" value="">
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
	$("#addBtn").click(function (){
	     $.ajax({
 			type : "post",
 			url : _path+"/invoicing/system/role/add?__"+(new Date()).getTime(),
 			 data:$('#role-add-form').serialize(),// 你的formid
              async:false,
 			 	success : function(data) {
 				if(data.code==1){
 					alert("角色保存成功！");
 					var url=_path+"/invoicing/system/role/page/list";
 					$.get(url,function(data){
 						$("#mian_div").html(data);
 					});
 				}else{
 					alert("角色保存失败");
 				}
 			}
         });
	});
	
	//返回列表页
	$("#cancelBtn").click(function (){
		var url=_path+"/invoicing/system/role/page/list";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});
	});
</script>
</body>
</html>