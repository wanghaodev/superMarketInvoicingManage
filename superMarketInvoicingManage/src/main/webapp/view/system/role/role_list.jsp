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
		<li><a href="####">角色管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="userName" class="form-control"placeholder="角色姓名"> 
				<input type="text" name="phone"class="form-control" placeholder="手机号码">
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary">
				<i class="icon_search"></i>
				查询
			</button>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<!-- 列表：查询分页列表 start -->
	<div class="role_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>角色列表</h4>
			</div>
		</div>
	</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：角色列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/system/role/list"
                ,checkAll:true
                //查询条件
                ,data:{'userName':$("[name=roleName]").val()
                	  ,'phone':$("[name=roleDesc]").val()}
                ,cloumns:[
					 {name:'角色名称',value:'roleName'}
                    ,{name:'角色描述',value:'roleDesc'}
                    ,{name:'更新时间',value:'updateTime'}
                    ,{name:'状态',value:'state',type:"function", fun : function(obj){
	                    	var html="";
	                    	if(obj.state == 0){
	                    		html += "停用";
	                    	}else if(obj.state==1){
	                    		html += "开启";
	                    	}
	                    	return html;
                 	}
                 }
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var roleAuth="/invoicing/system/role/authority";
                    	var html="";
                    		html += "  <a  class='btn-link role_auth' onclick='roleAuthObj("+obj.id+")'>角色授权</a>"
	                		html += "  <a  class='btn-link' onclick='updateObj("+obj.id+")'>编辑</a>"
	                		html += "  <a  class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";
                    	return html;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
            $(".role_table_content").grid(_options,".role_table_content");
        }
		
		$("#searchBtn").click(function(){
			getData();
			
		});
    });
    
	//到角色授权页面
	function roleAuthObj(roleId){
		var url=_path+"/invoicing/system/role/authority?roleId="+roleId;
		$.get(url,function(data){
			$("#mian_div").html(data);
		});
	}
	
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url : _path+"/goods/brand/delete?__"+(new Date()).getTime(),
    			data : {
    				'id' : id
    			},
    			beforeSend: function () {
                    //加载中
                    waitload();
                },
    			success : function(data) {
    				closewait();
    				//若执行成功的话，则隐藏进度条提示
    				if (data != null && data != 'undefined'
    						&& data == 1) {
    					var jumpUrl = '/goods/brand/list';
    					timedTaskFun(1000,'角色删除成功',jumpUrl,'correct');
    				} else if (data == 0) {
    					timedTaskFun(1000,'角色删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该角色，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    } 
</script>