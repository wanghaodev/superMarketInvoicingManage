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
		<li><a href="/index">基础数据管理</a></li>
		<li><a href="####">供应商管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="supplierName" class="form-control"placeholder="供应商名称"> 
				<input type="text" name="linkmanName"class="form-control" placeholder="联系人">
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary">
				<i class="icon_search"></i>
				查询
			</button>
			<button type="button" id="resetBtn" class="btn btn-success">
				<i class="icon-reply icon-only"></i>
				重置
			</button>
			<button type="button" id="addBtn" class="btn btn-primary">
			<i class="icon_add"></i>
				新增
			</button>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<!-- 列表：查询分页列表 start -->
	<div class="user_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>供应商列表</h4>
			</div>
		</div>
	</div>
</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：供应商列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/base/date/supplier/page/list"
                ,checkAll:false
                //查询条件
                ,data:{'supplierName':$("[name=supplierName]").val()
                	  ,'linkmanName':$("[name=linkmanName]").val()}
                ,cloumns:[
					 {name:'供应商简称',value:'supplierShortName'}
                    ,{name:'所在地',value:'supplierAddress'}
                    ,{name:'联系人',value:'linkmanName'}
                    ,{name:'联系电话',value:'linkmanPhone'}
                    ,{name:'邮箱地址',value:'linkEmail'}
                    ,{name:'营业范围',value:'businessScope'}
                    ,{name:'所属行业',value:'businessType'}
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var html="";
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='toUpdatePage("+obj.id+")'>编辑</a>"
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";
	                	return html;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
            // grid(param1,param2);参数1分页数据，参数2table类名如.user_table_content
            $(".user_table_content").grid(_options,".user_table_content");
        }
		//条件查询
		$("#searchBtn").click(function(){
			getData();
			
		});
		//条件重置
		$("#resetBtn").click(function (){
			$("input[name=linkmanName]").val("");
			$("input[name=supplierName]").val("");
		});
		
    });
    
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url :_path+"/invoicing/base/date/supplier/del",
    			data : {
    				'id':id
    			},
    			beforeSend: function () {
                    //加载中
                    waitload();
                },
    			success : function(data) {
    				closewait();
    				//若执行成功的话，则隐藏进度条提示
    				if (data.code== 1) {
    					alert("供应商删除成功！")
    					var url = _path+"/invoicing/base/date/supplier/page/list";
    					goBackPage(url);
    				} else if (data == 0) {
    					timedTaskFun(1000,'供应商删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该供应商，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    };
    //供应商角色维护
    function toUserRole(userId){
  	  var url=_path+"/invoicing/base/date/supplier/role?userId="+userId;
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    	
    }
    
    //到新增页面
    $("#addBtn").click(function(){
    	var url=_path+"/invoicing/base/date/supplier/add";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    
    });
    //编辑供应商信息
    function toUpdatePage(userId){
    	 var url=_path+"/invoicing/base/date/supplier/update?userId="+userId;
		 //调用跳转方法
		 goBackPage(url);
    }
    
</script>