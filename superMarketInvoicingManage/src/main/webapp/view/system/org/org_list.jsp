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
		<li><a href="####">机构管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="authorName" class="form-control"placeholder="机构名称"> 
				<input type="text" name="phone"class="form-control" placeholder="上级机构">
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
	<div class="authority_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>机构列表</h4>
			</div>
		</div>
	</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：机构列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/system/org/list"
                ,checkAll:false
                //查询条件
                ,data:{'name':$("[name=name]").val()
                	  ,'pName':$("[name=pName]").val()}
                ,cloumns:[
					 {name:'机构编码',value:'orgNum'}
					 ,{name:'机构名称',value:'orgName'}
                    ,{name:'上级机构名称',value:'parentOrgName',type:"function",fun:function(obj){
                    	var html="";
                    	if(obj.pid==0){
                    		html+= "顶级机构";
                    	}else{
                    		html+= obj.parentOrgName;
                    	}
                    	return html;
                    	}
                    }
                    
                    ,{name:'联系人',value:'contactName'}
                    ,{name:'联系电话',value:'contactPhone'}
                    ,{name:'更新时间',value:'updateTime'}
                   
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var html="";
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='updateObj("+obj.id+")'>编辑</a>"
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";
                    	return html;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
            $(".authority_table_content").grid(_options,".authority_table_content");
        }
		
		$("#searchBtn").click(function(){
			getData();
			
		})
		
    });
    
	  //到新增页面
    $("#addBtn").click(function(){
    	var url=_path+"/invoicing/system/org/add";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    
    });
	 
	 function updateObj(id){
		 var url=_path+"/invoicing/system/org/update?id="+id;
			$.get(url,function(data){
				$("#mian_div").html(data);
			});   
	 } 
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url : _path+"/invoicing/system/org/del",
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
    					timedTaskFun(1000,'机构删除成功',"",'correct');
    					var url=_path+"/invoicing/system/org/list";
    					$.get(url,function(data){
    						$("#mian_div").html(data);
    					});   
    				} else if (data == 0) {
    					timedTaskFun(1000,'机构删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该机构，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    }
</script>