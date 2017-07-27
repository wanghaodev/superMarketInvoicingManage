<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	

    <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">商品类目属性管理</li>
        </ol>
        
        <div class="row">
	        <div class="col-md-9">
	        
		        <!-- 列表：查询条件组装  start -->
		        <div class="panel panel-default form-search">
		            <div class="panel-body">
			        	<div class="conditions_team">
			        		<label>属性名称：</label>
			        		<input type="hidden" name="categoryId">
			        		<input type="text" name="propertyName" class="form-control " placeholder="属性名称" />
			        	</div>
			        	
			        	 <div class="conditions_team">
			        		<label>属性类型：</label><select name="propertyType" class="form-control">
			        		   <option value="-1">--请选择类型--</option>
			        		   <option value="1">销售属性</option>
			        		   <option value="2">辅助属性</option>
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
			        	<div class="col-md-4"><h4>商品类目属性列表</h4></div>
			        </div>
		        </div>
		        
		        
		        
		  	 </div>
		  	 
		  	 <!-- #####################显示tree  start##################### -->
        	<div class="col-md-3">
        		<div class="panel panel-default">
        			<div class="panel-heading">商品类目</div>
        			<div class="panel-body">
        				<form  class="form-inline mb-20">
        					<ul id="serviceCategoryTreeDemo" class="ztree"></ul>
        				</form>
			        </div>
        		</div>
        	</div>
        	<!-- #####################显示tree  end##################### -->
		  	      
        </div>
	<script type="text/javascript">
	
	$(document).ready(function(){
		
        var addfun =function(){
       	 	$.changePage(_path+"/goods/purchase/tree/property/add"+"?_="+(new Date()).getTime());
        }

        
        var buttonsArr =[];
        <shiro:hasPermission name="merge_purchase_tree_property_add_access"> 
    		buttonsArr.push({text:'创建属性',icon:'add',handler:addfun});
   	 	</shiro:hasPermission>
        getData();
        function getData(){
            var _options ={
                url:_path+"/goods/purchase/tree/property/list"
                ,checkAll:true
                //查询条件
                ,data:{'propertyName':$("[name=propertyName]").val()
                	  ,'propertyType':$("[name=propertyType]").val()
                	  ,'categoryId':$("[name=categoryId]").val()}
                ,cloumns:[
                    {name:'所属分类',value:'categoryName'}
                    ,{name:'属性名称',value:'propertyName'}
                    ,{name:'属性类型',value:'operate',type:"function", fun : function(obj){
                    	var html="";
                    	
                    	if (obj.propertyType == 1) {
                    		html = "销售属性";
                    	} else if (obj.propertyType == 2) {
                    		html = "辅助属性";
                    	}
                	
                    	return html;
                      }
                    ,}
                    ,{name:'操作',value:'operate',type:"function", fun : function(obj){
                    	var html="";
                    	
                    	<shiro:hasPermission name="merge_purchase_tree_property_update_access">
	                		html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='updateObj("+obj.id+")'>修改</a>";
	                	</shiro:hasPermission>
	                		
	                	<shiro:hasPermission name="merge_purchase_tree_property_delete_access">
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
			
		});
		
		//======================调用树  start===========================
	    loadTree("serviceCategoryTreeDemo",_path+"/goods/purchase/tree/loadtree");

	    /**
	     * @fun 加载：树（文件夹）
	     * @param treeUlId			传入【<ul id="positionTreeDemo" class="ztree">】中的positionTreeDemo
	     * @param _ajaxTreeUrl		请求参数url
	     */
	    function loadTree(treeUlId,_ajaxTreeUrl) {
	    	//组装id
	    	var _treeUlId = "#"+treeUlId;
	    	
	    	//先：加载ztree树
	    	var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName) {
	    		$("[name=categoryId]").val(nodeId);
	    		getData();
	    	});;
	    	
	     	//设置根节点
			var _root = [{id:0,name:'全部类目',checked:false,isParent:true,open:true}];
	    	//后：进行初始化
	    	$.fn.zTree.init($(_treeUlId),_setting,_root);
	    	//自动展开根节点
			var _treeObj = $.fn.zTree.getZTreeObj(treeUlId);
			var node = _treeObj.getNodeByParam('id', 0);//获取id为1的点
			_treeObj.selectNode(node);//选择点
			_treeObj.expandNode(node,true,true,true);
	    }
	    //======================调用树  end===========================
		
    });

	//点击：修改
    function updateObj(id) {
    	$.changePage(_path+"/goods/purchase/tree/property/update"+"?_="+(new Date()).getTime()+"&id="+id);
    }
    
    //点击：删除
    function delObj(id) {
    	var jumpUrl = "/goods/purchase/tree/property/list";
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url : _path+"/goods/purchase/tree/property/delete?__"+(new Date()).getTime(),
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
    					timedTaskFun(1000,'属性删除成功',jumpUrl,'correct');
    				} else if (data != null && data != 'undefined'
    						&& data == 0) {
    					timedTaskFun(1000,'属性删除失败','','err');
    				} else if(data != null && data != 'undefined'
    						&& data == 1000) {
    					timedTaskFun(1000,'该属性，已参与其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    	
    }
    
</script>