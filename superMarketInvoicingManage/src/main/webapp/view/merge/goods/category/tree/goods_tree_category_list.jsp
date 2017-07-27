<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	

    <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">商品类目管理</li>
        </ol>
        
        <div class="row">
	        <div class="col-md-9">
	        
		        <!-- 列表：查询条件组装  start -->
		        <div class="panel panel-default form-search">
		            <div class="panel-body">
			        	<div class="conditions_team">
			        		<label>类目ID：</label>
			        		<input type="hidden" name="id" class="form-control"/>
			        		<input type="text" name="categoryId" class="form-control" placeholder="输入类目id" />
			        	</div>
			        	
			        	<div class="conditions_team">
			        		<label>类目名称：</label><input type="text" name="categoryName" class="form-control" placeholder="输入类目名称" />
			        	</div>
			        	
			        	<div class="conditions_team">
			        		<select name="status" class="form-control">
			        		   <option value="-1">--请选择状态--</option>
			        		   <option value="0">已停用</option>
			        		   <option value="1">已启用</option>
			        		</select>
			        	</div>
			        	<!-- <div class="conditions_team">
			        		<label>类目名称：</label>
			        		<input type="hidden" name="categoryId"  class="form-control" placeholder="选择类目名称" />
			        		<input type="text" name="categoryName"  class="form-control" placeholder="选择类目名称" />
			        	</div> -->
			        </div>
			        
			        <div class="panel-footer">
		            	<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
		           	</div>
		           	
			    </div>
			    <!-- 列表：查询条件组装  end -->
			    
			    
		        <div class="ticket_table_content cloud_list">
		        	<div id="buttonsId" class="row list-title">
			        	<div class="col-md-4"><h4>商品类目列表</h4></div>
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
       	 	$.changePage(_path+"/goods/purchase/tree/add"+"?_="+(new Date()).getTime());
        }

        
        var buttonsArr =[];
        <shiro:hasPermission name="merge_purchase_tree_add_access"> 
    		buttonsArr.push({text:'添加类目',icon:'add',handler:addfun});
   	 	</shiro:hasPermission>
        getData();
        function getData(){
            var _options ={
                url:_path+"/goods/purchase/tree/list"
                ,checkAll:true
                //查询条件
                ,data:{'categoryId':$("[name=categoryId]").val()
                	  	,'categoryName':$("[name=categoryName]").val()
                	  	,'status':$("[name=status]").val()
             			,'id':$("[name=id]").val()
                	 }
                ,cloumns:[
					{name:'类目id',value:'categoryId'}
                    ,{name:'类目名称',value:'categoryName'}
                    ,{name:'上级类目',value:'parentCategoryName'}
                    ,{name:'排序序号',value:'orderNumber'}
                    ,{name:'状态',value:'operate',type:"function", fun : function(obj){
						var html="";
                    	if (obj.status == 1) {
                    		html = "已启用";
                    	} else if (obj.status == 0) {
                    		html = "已停用";
                    	}
                	
                    	return html;
                      }
                    ,}
                    ,{name:'操作',value:'operate',type:"function", fun : function(obj){
                    	var html="";
                    	
                    	<shiro:hasPermission name="merge_purchase_tree_update_access">
	                		html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='updateObj("+obj.id+")'>修改</a>";
	                	</shiro:hasPermission>
	                		
	                	<shiro:hasPermission name="merge_purchase_tree_delete_access">
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
    	var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName,categoryLevel) {
    		$("[name=id]").val(nodeId);
    		getData();
    	});
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
    	$.changePage(_path+"/goods/purchase/tree/update"+"?_="+(new Date()).getTime()+"&id="+id);
    }
    
    //点击：删除
    function delObj(id) {
    	//alert("期待中。。");
    	var jumpUrl = "/goods/purchase/tree/list";
    	callmodalFun('您确认删除该记录吗？',function(){
	    	$.ajax({
				type : "post",
				url : _path+"/goods/purchase/tree/delete?__"+(new Date()).getTime(),
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
						timedTaskFun(1000,'类目删除成功',jumpUrl,'correct');
					} else if (data == 0) {
						timedTaskFun(1000,'类目删除失败','','err');
					} else if(data == 1000) {
						timedTaskFun(1000,'该类目已有子级类目，故无法删除！','','err');
					} else if(data == 1001) {
						timedTaskFun(1000,'该类目已被属性引用，故无法删除！','','err');
					} else if(data == 1002) {
						timedTaskFun(1000,'该类目已被商品引用，故无法删除！','','err');
					}
				}
			 }); 
    	});
    }
    	
</script>