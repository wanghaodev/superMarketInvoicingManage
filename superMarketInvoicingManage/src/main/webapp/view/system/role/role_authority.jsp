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
		<form class="add-form" id="position-detail-form">
			<input type="hidden" name="roleId" value="${role.id}" />
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
											name="positionName" value="${role.roleName}"
											disabled="disabled" />
									</div>
								</td>
								<th>职位说明</th>
								<td>
									<div class="form-group ">
										<input type="text" class="form-control" placeholder=""
											name="positionDesc" value="${role.roleDesc}"
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
						<button type="button" id="searchBtn" class="btn btn-primary" onclick="getCheckedTree()">
							<i class="icon_add"></i> 保存
						</button>
						<button type="button" id="searchBtn" class="btn btn-warning">
							<i class="icon_replay"></i> 取消
						</button>
						<button type="button" id="searchBtn" class="btn btn-warning" onclick="isCheckedAuth()">
							<i class="icon_replay"></i> 被选中的角色
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
    			}
    		 });
		}
		
		//获取被选中菜单树的值
		 function  getCheckedTree(){  
       		var zTree = $.fn.zTree.getZTreeObj("roleTree");  
            var nodes=zTree.getChangeCheckedNodes(true);  
            var result='';  
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
            console.log(result);
		};
		
		//已经选中菜单权限
		function isCheckedAuth(){
			 $.each(JSON.parse('${roleAuthList}'), function(index,obj){ 
				 var treeObj = $.fn.zTree.getZTreeObj("roleTree");
				 var node = treeObj.getNodeByParam("id", obj.id, null);
				 //选中节点
				 // treeObj.selectNode(node);
				 zTree.checkNode(node, true, true);
				 console.log(node);
			});
			
		}
	</script>
