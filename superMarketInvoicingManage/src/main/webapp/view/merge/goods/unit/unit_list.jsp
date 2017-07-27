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
            <li class="active">单位管理</li>
        </ol>
        
		        <!-- 列表：查询条件组装  start -->
        <div class="panel panel-default form-search">
            <div class="panel-body">
	            <div class="conditions_team">
	            	<input type="text" name="keywords" class="form-control" placeholder="请输入单位名称或英文名称">
	            </div>
	        	<div class="conditions_team">
	        		<label>单位类型：</label><select class="form-control"  name="unitType">
	        			<option value=" ">全部</option>
	        			<option value=" 1">销售单位</option>
	        			<option value=" 2">采购单位</option>
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
			        	<div class="col-md-4"><h4>商品单位列表</h4></div>
			        </div>
		        </div>
        <!-- add by yaofeng start 引入：单位列表js -->
	  <script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/unit/js/unitList.js"></script> 
	<script type="text/javascript">
	
	$(document).ready(function(){
		
        var addfun =function(){
       	 	$.changePage(_path+"/goods/unit/add"+"?_="+(new Date()).getTime());
        }

        
        var buttonsArr =[];
        <shiro:hasPermission name="merge_unit_add_access"> 
    		buttonsArr.push({text:'创建单位',icon:'add',handler:addfun});
   	 	</shiro:hasPermission>
        getData();
        function getData(){
            var _options ={
                url:_path+"/goods/unit/list"
                ,checkAll:true
                //查询条件
                ,data:{'keywords':$("[name=keywords]").val()
                	  ,'unitType':$("[name=unitType]").val()}
                ,cloumns:[
					{name:'单位ID',value:'id'}
                    ,{name:'单位名称',value:'unitName'}
                    ,{name:'英文名称',value:'unitEnglishName'}
                    ,{name:'与最小单位关系',value:'minimumUnitVal'}
                    ,{name:'最小单位名称',value:'minimumUnitType',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.minimumUnitType == 1){
                    		html += "EA";
                    	}else if(obj.minimumUnitType==2){
                    		html += "克";
                    	}else{
                    		html += obj.unitEnglishName;
                    	}
                    	return html;
             			}	
                    }
                    ,{name:'单位类型',value:'unitType',type:"function", fun : function(obj){
	                    	var html="";
	                    	if(obj.unitType == 1){
	                    		html += "销售单位";
	                    	}else if(obj.unitType==2){
	                    		html += "采购单位";
	                    	}else{
	                    		html += "默认单位";
	                    	}
	                    	return html;
                 	}
                 }
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var html="";
                    	
                    	<shiro:hasPermission name="merge_unit_update_access">
                    		if(obj.unitEnglishName=="g"||obj.unitEnglishName=="EA"){
                    			html += "<a href='javascript:void(0)' class='btn-link mr-20'><span style='color:gray;'>修改</span></a>";
                    		}else{
                    			html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='updateObj("+obj.id+")'>修改</a>";
                    		}
	                		
	                	</shiro:hasPermission>
	                	 <shiro:hasPermission name="merge_unit_delete_access">
	                	 if(obj.unitEnglishName=="g"||obj.unitEnglishName=="EA"){
	                		 html += "  <a href='javascript:void(0)' class='btn-link'><span style='color:gray;'>删除</span></a>";
	                	 }else{
	                		 html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";	 
	                	 }	
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
    	$.changePage(_path+"/goods/unit/update"+"?_="+(new Date()).getTime()+"&id="+id);
    }
    
    //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url : _path+"/goods/unit/delete?__"+(new Date()).getTime(),
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
    					var jumpUrl = '/goods/unit/list';
    					timedTaskFun(1000,'单位删除成功',jumpUrl,'correct');
    				} else if (data == 0) {
    					timedTaskFun(1000,'单位删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该单位，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    }
    	
    
</script>