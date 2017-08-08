<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<style type="text/css">
.brand_logo {
	width: 25px;
	height: 25px;
}
</style>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">用户角色维护</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="" value="${user.userName}" class="form-control" placeholder="userId"> 
				<input type="text" name="" value="${user.phone}" class="form-control" placeholder="roleId">
			</div>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<div class="user_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>选择角色</h4>
				<form action="#" id="userRoleForm" method="post">
				<input type="hidden" name="userId" class="form-control" value="${user.id}" placeholder="userId"> 
					<div id="role_list_div">
					</div>
				</form>
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary" onclick="saveUerRole()">
				<i class="icon_search"></i>
				保存
			</button>
			<button type="button" name="cancelButton" id="cancelBtn" class="btn btn-success">
				<i class="icon-reply icon-only"></i>
				取消
			</button>
		</div>
	</div>
	
	<!-- add by WHao start 引入：用户列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
		//加载角色列表
		getRoleList();
		//取消
		$("#cancelBtn").click(function(){
			 var url=_path+"/invoicing/system/user/list";
				$.get(url,function(data){
					$("#mian_div").html(data);
				});  
		});
	});

  //获取角色列表
  function getRoleList(){
	  var roleId='${roleId}';
	  $.ajax({
		 type:"post",
		 url:_path+"/invoicing/system/role/list",
		 data:"",
		 success:function(data){
			 console.log(data.data);
			 if(null!=data.data){
				 var roleList=$("#role_list_div");
				 var roleDiv="";
				 $.each(data.data,function(index,obj){
					 //console.log(obj.id+"---"+obj.roleName);
					 //roleList.append("<li> <input type='radio' name='roleId' value='").after(obj.id).after("' class='radio' >").after(obj.roleName).after("</li>");
					//回显已选择的角色ID
					 if(roleId==obj.id){
						roleDiv+="<div class='radio'>"
						 	 +"	<label>"
						 	 +"		<span class='lbl'>"
							 +			obj.roleName
							 +"		</span>"
							 +"		<input type='radio' name='roleId' checked='checked'  value='"+obj.id+"' class='radio' >"
							 +"  </label>"
							 +"</div>";
					}else{
						roleDiv+="<div class='radio'>"
						 	 +"	<label>"
						 	 +"		<span class='lbl'>"
							 +			obj.roleName
							 +"		</span>"
							 +"		<input type='radio' name='roleId' value='"+obj.id+"' class='radio' >"
							 +"  </label>"
							 +"</div>";
					}
					 
				 });
				 roleList.html(roleDiv);
			 }
			 
		 }
	  });
  }
  //保存用户角色
  function saveUerRole(){
	  var userId=$("input[name=userId]").val();
	  var roleId=$("input[name=roleId]:checked").val();
	  console.log(userId+"--"+roleId);
	  if(null==roleId||roleId==''){
		  alert("请选择角色");
		  return false;
	  }else{
	        $.ajax({
    			type : "post",
    			url : _path+"/invoicing/system/user/role?__"+(new Date()).getTime(),
    			data:{
    			  "userId":userId,
   				  "roleId":roleId
    			 },// 你的formid
    			 	success : function(data) {
    				if(data.code==1){
    					alert("用户角色分配成功！");
    				}else{
    					alert("用户角色分配失败，请联系管理员！");
    				}
    			}
            });
	  }
  }
</script>