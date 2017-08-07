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
		<li><a href="####">角色授权</a></li>
	</ol>

	<!-- 角色权限维护 start -->
	<div class="role_table_content cloud_list">
		<form class="add-form" id="roleAuthForm">
			<input type="hidden" name="roleId" value="${role.id}" />
			<input type="hidden" name="authIds" value="" />
			<div class="panel panel-default">
				<div class="panel-heading">职位管理</div>
				<div class="panel-body table_add">
					<table class="table half-table">
						<tbody>
							<tr>
								<th>职位名称</th>
								<td>
									<div class="form-group ">
										<input type="text" class="form-control" placeholder=""
											name="" value="${role.roleName}"
											disabled="disabled" />
									</div>
								</td>
								<th>职位说明</th>
								<td>
									<div class="form-group ">
										<input type="text" class="form-control" placeholder=""
											name="" value="${role.roleDesc}"
											disabled="disabled" />
									</div>
								</td>
							</tr>
							<tr>
								<th class="rolelabel">分配权限</th>
								<td colspan="3">
									<div class="widget-box">
										<div class="widget-body">
												<!-- 插入树 -->
											<ul id="roleTree" class="ztree">

											</ul>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="col-md-12 text-center btn-margin">
						<button type="button" id="searchBtn" class="btn btn-primary" onclick="saveRoleAuthTree()">
							<i class="icon_add"></i> 保存
						</button>
						<button type="button" id="searchBtn" class="btn btn-primary">
							<i class="icon_cancle"></i> 取消
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 角色权限维护 end -->
	<!-- add by WHao start 引入：角色列表js -->
<script type="text/javascript">
	//获取：角色树
	var _treeUrl=_path+"/invoicing/system/authority/load/ztree"; 
</script>
<!-- ztree load start -->
<script type="text/javascript">
		var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};
		$(document).ready(function(){
			loadZtree();
		});
		
		//加载权限树
		function loadZtree(){
			$.ajax({
    			type : "post",
    			url : _path+"/invoicing/system/authority/load/ztree?__"+(new Date()).getTime(),
    			data :"",
    			success : function(data) {
    				var zNodes=data.data;
    				$.fn.zTree.init($("#roleTree"), setting,zNodes);
    				 	$.each(JSON.parse('${roleAuthList}'), function(index,obj){ 
	    					 var treeObj = $.fn.zTree.getZTreeObj("roleTree");
	    					 var node = treeObj.getNodeByParam("id", obj.id, null);
	    					 //默认打开状态
	    					 treeObj.expandAll(true);
	    					 //根据后台数据库返回的菜单ID并默认选中当前节点。
	    					 treeObj.checkNode( treeObj.getNodeByParam("id",obj.id ),true );
    				 });
    				
    			}
    		 });
		}
		
		//保存角色权限设置关联关系
		 function  saveRoleAuthTree(){  
			//获取被选中的当前角色ID
			var roleId=$("input[name=roleId]").val();
			console.log("roleId:"+roleId);
       		var zTree = $.fn.zTree.getZTreeObj("roleTree");
       		//被选中的结果集
            var nodes=zTree.getChangeCheckedNodes(true);  
            /* var result='';  
            if(nodes.length==0){  
                alert("请选择菜单..");  
                return false;  
            }  
             for (var i = 0; i < nodes.length; i++) {  
                var halfCheck = nodes[i].getCheckStatus();  
                 if (!halfCheck.half){  
                    result += nodes[i].id +',';  
                 }  
            }  
            result=result.substring(0,result.lastIndexOf(","));
            console.log(result); */
            
            //使用each遍历被选中的节点
            var authIds = new Array();
            if(nodes.length==0){  
                alert("请选择菜单..");  
                return false;  
            }
            //遍历选中的菜单结果集
            $.each(nodes,function (index,obj){
            	var halfCheck = obj.getCheckStatus(); 
            	if(!halfCheck.half){
            		authIds.push(obj.id);
            		console.log(obj.id)
            	}
            });
            $("input[name=authIds]").val(authIds);
            console.log(authIds);
            //调用后台保存方法
            $.ajax({
    			type : "post",
    			url : _path+"/invoicing/system/role/authority?__"+(new Date()).getTime(),
    			 data:$('#roleAuthForm').serialize(),// 你的formid
                 async:false,
    			 	success : function(data) {
    				if(data.code==1){
    					alert("菜单维护成功！");
    				}else{
    					alert("菜单维护失败，请联系管理员！");
    				}
    			}
            });
            	
		};
		
	</script>
