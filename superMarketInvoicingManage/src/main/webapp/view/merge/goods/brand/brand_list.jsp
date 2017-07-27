<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<style type="text/css">
.brand_logo{width: 25px ;height: 25px;}
</style>
    <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">品牌管理</li>
        </ol>
        
		        <!-- 列表：查询条件组装  start -->
		  <div class="panel panel-default form-search">
		     <div class="panel-body">
	            <div class="conditions_team">
	            	<input type="text" name="keywords" class="form-control" placeholder="请输入品牌名称或英文名称">	
	            </div>
	        	<div class="conditions_team">
	        		<label>状态：</label><select class="form-control"  name="state">
	        			<option value=" ">全部</option>
	        			<option value=" 1">启用</option>
	        			<option value=" 0">停用</option>
	        		</select>
	        	</div>
	        </div>
			        
			        <div class="panel-footer">
		            	<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
		           	</div>
		           	
			    </div>
			    <!-- 列表：查询条件组装  end -->
		        <div class="ticket_table_content cloud_list">
		        	<div id="buttonsId" class="row list-title">
			        	<div class="col-md-4"><h4>服务类目属性列表</h4></div>
			        </div>
		        </div>
        <!-- add by yaofeng start 引入：品牌列表js -->
	  <script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/brand/js/brandList.js"></script> 
	<script type="text/javascript">
	
	$(document).ready(function(){
		
        var addfun =function(){
       	 	$.changePage(_path+"/goods/brand/add"+"?_="+(new Date()).getTime());
        }

        
        var buttonsArr =[];
        <shiro:hasPermission name="merge_brand_add_access"> 
    		buttonsArr.push({text:'创建品牌',icon:'add',handler:addfun});
   	 	</shiro:hasPermission>
        getData();
        function getData(){
            var _options ={
                url:_path+"/goods/brand/list"
                ,checkAll:true
                //查询条件
                ,data:{'keywords':$("[name=keywords]").val()
                	  ,'state':$("[name=state]").val()}
                ,cloumns:[
					{name:'品牌编号',value:'id'}
                    ,{name:'品牌名称',value:'brandName'}
                    ,{name:'英文名称',value:'brandEnglishName'}
                    ,{name:'首字母',value:'brandInitial'}
                    ,{name:'品牌logo',value:'absolutePath',type:"function", fun : function(obj){
                    	var html="<img alt='' src='"+obj.absolutePath+"' class='brand_logo'>";
                    	return html;
                	}
                }
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
                    	
                    	<shiro:hasPermission name="merge_brand_update_access">
	                		html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='updateObj("+obj.id+")'>修改</a>";
	                	</shiro:hasPermission>
	                	 <shiro:hasPermission name="merge_brand_delete_access">
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";
	                	</shiro:hasPermission> 
                    	return html;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
            $(".ticket_table_content").grid(_options);
        }
		
		$("#searchBtn").click(function(){
			getData();
			
		})
		
    });

	//点击：修改
    function updateObj(id) {
    	$.changePage(_path+"/goods/brand/update"+"?_="+(new Date()).getTime()+"&id="+id);
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
    					timedTaskFun(1000,'品牌删除成功',jumpUrl,'correct');
    				} else if (data == 0) {
    					timedTaskFun(1000,'品牌删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该品牌，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    }
    	
    
</script>