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
		<li><a href="####">门店管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="authorName" class="form-control"placeholder="门店名称"> 
				<input type="text" name="phone"class="form-control" placeholder="上级门店">
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
	<div class="store_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>门店列表</h4>
			</div>
		</div>
	</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：门店列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/system/store/page/list"
                ,checkAll:false
                //查询条件
                ,data:{'userName':$("[name=userName]").val()
                	  ,'phone':$("[name=phone]").val()}
                ,cloumns:[
					 {name:'门店名称',value:'storeName'}
                    ,{name:'名店简称',value:'storeAbbreviation'}
                    ,{name:'机构名称',value:'orgName'}
                    ,{name:'门店类型',value:'type',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.type == 1){
                    		html += "门店";
                    	}else if(obj.type==2){
                    		html += "网站";
                    	}
                    	return html;
             			}
                    }
                    ,{name:'业态类型',value:'formatType',formatType:"function", fun : function(obj){
                    	var html="";
                    	if(obj.formatType == 1){
                    		html += "零售";
                    	}else if(obj.formatType==2){
                    		html += "服务";
                    	}
                    	return html;
             			}
                    }
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
            $(".store_table_content").grid(_options,".store_table_content");
        }
		
		$("#searchBtn").click(function(){
			getData();
			
		})
		
    });
    
	  //到新增页面
    $("#addBtn").click(function(){
    	var url=_path+"/invoicing/system/store/add";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    
    });
	 
	 function updateObj(id){
		 var url=_path+"/invoicing/system/store/update?id="+id;
			$.get(url,function(data){
				$("#mian_div").html(data);
			});   
	 } 
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url : _path+"/invoicing/system/store/del",
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
    					timedTaskFun(1000,'门店删除成功',"",'correct');
    					var url=_path+"/invoicing/system/store/page/list";
    					$.get(url,function(data){
    						$("#mian_div").html(data);
    					});   
    				} else if (data == 0) {
    					timedTaskFun(1000,'门店删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该门店，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    }
</script>