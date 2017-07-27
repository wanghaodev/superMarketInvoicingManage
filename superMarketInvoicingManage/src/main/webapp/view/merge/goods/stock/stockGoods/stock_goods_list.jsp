<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	.conDiv{
		display: none;
	}
</style>
	
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="javascript:;">零售平台</a></li>
            <li><a href="javascript:;">库存管理</a></li>
            <li class="active">库存商品查询</li>
        </ol>
        <div class="row">
	        <div class="col-md-9">
		        <div class="panel panel-default form-search" style="    padding-bottom: 15px;">
		        	<div class="panel-body ">
			        	<input  type="hidden" name="storeIdIn" value="${storeId }">
			        	<input  type="hidden" name="stockGroundIdIn" value="${stockGroundId }">
			        	<div style="float: left;" >
			        		门店：
			        		<c:choose>
				        		<c:when test="${storeName != null }">
					        		<button type="button" class="btn btn-primary" id="selectStoreBtn" style="text-align: center;">${storeName }</button>
				        		</c:when>
				        		<c:otherwise>
					        		<button type="button" class="btn btn-primary" id="selectStoreBtn" style="text-align: center;">点击选择门店</button>
				        		</c:otherwise>
			        		</c:choose>
			        	
			        	</div>
			        	<div style="display:none;" class="storeStockGroundCla">
				        	<span style="float: left;padding-top: 4px;">库存地：</span>
				        	<select class="form-control" name="storeStockGround" style="margin: 0 26px;">
			                    
			                </select>
		                </div>
		                <div style="float: left;width: 15%;    padding-top: 4px;" class="topStoreInfo">
		                	<c:if test="${storeId != null }">
		                		<c:if test="${storeStatus == 1 }">
			                		<span class="afterAppend" style="margin-right: 15%;">店铺状态：启用</span>
		                		</c:if>
		                		<c:if test="${storeStatus == 0 }">
			                		<span class="afterAppend" style="margin-right: 15%;">店铺状态：停用</span>
		                		</c:if>
			                	<input class="afterAppend" type="hidden" name="store_id" value="${storeId }">
		                	</c:if>
		                </div>
		                <button type="button" id="viewBtn" class="btn btn-primary" style=" text-align: center;float: right; ">查看</button>
		        	</div>
		        </div>
		        <div class="panel panel-default form-search conDiv">
		            <div class="panel-body">
			        	<div class="conditions_team">
			                <label>商品名称：</label><input type="text" name="goodsName" class="form-control" placeholder="商品名称">
		                </div>
		            	<div class="conditions_team">
			                <label>SPU：</label><input type="text" name="goodsSpu" class="form-control" placeholder="SPU">
			            </div>
			            <div class="conditions_team">
			                <label>SKU：</label><input type="text" name="goodsSku" class="form-control" placeholder="SKU">
			            </div>
			               <div class="conditions_team">
		        		<label>商品类型：</label>
				              	<select name="selfSupport" class="form-control">
				        		   <option value="-1">--请选择商品类型--</option>
				        		   <option value="0">非自营</option>
				        		   <option value="1">自营</option>
				        		</select>
			        		</div>
			        </div>
		           	<div class="panel-footer">
		        		<input type="hidden" name="goodsCategoryId" />
		                <button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
		            </div>
		        </div>
		         <div class="ticket_table_content_goods cloud_list conDiv">
			         
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
			    
      </div>
        
<!-- 选择门店 -->
<div id="storeDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog" style="width: 1050px;margin:30px auto;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title">门店列表</h4>
            </div>
            <div class="modal-body">
            	
	            <div class="ticket_table_content">
	            
			        <div class="panel panel-default form-search clasbordernone">
			            <div class="panel-body">
				        	<div class="conditions_team">
				                <label>店铺ID：</label><input type="text" name="storeId" class="form-control" placeholder="店铺ID">
			                </div>
			            	<div class="conditions_team">
				                <label>店铺名称：</label><input type="text" name="storeName" class="form-control" placeholder="店铺名称">
			                </div>
			                 <button type="button" id="storeSearchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
				        </div>
			           
			               
			           
			        </div>
			        <div class="ticket_table_content_th_store">
	        
	        		</div>
	        	</div>
        	</div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
	
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/stock/stockGoods/js/stockGoodsList.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		if($("[name=storeIdIn]").val() != "" && $("[name=storeIdIn]").val() != "undefined"){
			loadStoreStockGrounds();
		}
		
		$("#viewBtn").click(function(){
			
			if($("[name=store_id]").val() != "" && $("[name=store_id]").val() != "undefined"
					&& $("[name=store_id]").val() != undefined ){
				if($("[name=storeStockGround]").val() != null && $("[name=storeStockGround]").val() != ""){
					$(".conDiv").css("display","block");
					getData();
				}else{
					timedTaskFun(1000,'请选择库存地！','','err');
				}
				
			}else{
				timedTaskFun(1000,'请选择门店！','','err');
			}
		});
		
		//入库
		var inStockfun =function(){
			
			var	_condition = {
					'storeId':$("[name=store_id]").val(),
					"stockGroundId":$("[name=storeStockGround]").val(),
					"storeName":$("#selectStoreBtn").html(),
					"stockGround":$("[name=storeStockGround]").find("option:selected").text()
					};
			// json字符串进行加密防止乱码和传参异常
  			var queryCondition = encodeURI(encodeURI(JSON.stringify(_condition)));
			$.changePage(_path+"/merge/stock/put/in/storage"+"?_="
					+(new Date()).getTime()
					+"&queryCondition="+queryCondition);
        }
		
		//库存导出
		var exportfun =function(){
			
        }
		
        var buttonsArr =[];
        <shiro:hasPermission name="merge_stock_put_in_storage_access">
        	buttonsArr.push({text:'入库',icon:'add',handler:inStockfun});
        </shiro:hasPermission>
        <shiro:hasPermission name="merge_stock_goods_search_export_access">
        	buttonsArr.push({text:'库存导出',icon:'add',handler:exportfun});
        </shiro:hasPermission>
        
        function getData(){
        	var _options ={
                url:_path+"/merge/stock/goods/search/list"
                ,checkAll:true
                //查询条件
                ,data:{	"goodsName":$("[name=goodsName]").val(),
                		"goodsSpu":$("[name=goodsSpu]").val(),
                		"goodsSku":$("[name=goodsSku]").val(),
                		"storeId":$("[name=store_id]").val(),
   	            	 	"goodsCategoryId":$("[name=goodsCategoryId]").val(),
                		"stockGroundId":$("[name=storeStockGround]").val()
                		, "selfSupport":($("[name=selfSupport]").val()=="-1")?"":$("[name=selfSupport]").val()		
                }
                ,cloumns:[
                     {name:'所属类目',value:'categoryName'}
                    ,{name:'SPU',value:'goodsSpu'}
                    ,{name:'商品名称',value:'goodsName'}
                    ,{name:'商品类型',value:'state',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.selfSupport == 0){
                    		html += "非自营";
                    	}else if(obj.selfSupport==1){
                    		html += "自营";
                    	}
                    	return html;
                		}
               		 }
                    ,{name:'SKU',value:'goodsSku'}
                    ,{name:'销售属性1',type:"function", fun : function(obj){
    	             	
                     	var properties = $.parseJSON(obj.salePropertyList);
        				var property1 = "";
        				
        				if(properties != "" && properties != undefined 
        					&& properties.propertyValueName1 != "" && properties.propertyValueName1 != undefined){
        					property1 = properties.propertyValueName1;
        				}
                     	
                     	return property1;
                     }}
                     ,{name:'销售属性2',type:"function", fun : function(obj){
                    	 
                    	 var properties = $.parseJSON(obj.salePropertyList);
                    	 var property2 = "";
                    	 
                    	 if(properties != "" && properties != undefined &&
                    			 properties.propertyValueName2 != "" && properties.propertyValueName2 != undefined){
                    		 property2 = properties.propertyValueName2;
                    	 }
                    	 
                    	 return property2;
                     }}
                     ,{name:'商品状态',type:"function",fun:function(obj){
                    	 var html ='';
                     	if(obj.goodsState == 0){
                     		html+="试销商品";
                     	}else if(obj.goodsState == 1){
                     		html+="可订货，可销售";
                     	}else if(obj.goodsState == 2){
                     		html+="可订货，不可销售";
                     	}else if(obj.state == 3){
                     		html+="不可订货，可销售";
                     	}else if(obj.goodsState == 4){
                     		html+="不可订货，不可销售";
                     	}else if(obj.goodsState == 5){
                     		html+="快速出清";
                     	}else if(obj.goodsState == 6){
                     		html+="汰换品";
                     	}
                     	
                     	return html;
                     }}
                    ,{name:'在库',value:'stockNum'}
                    
                ]
                ,buttons:buttonsArr
            };
        	$(".ticket_table_content_goods").grid(_options);
    	    $(".ticket_table_content_goods").find(".ticket_table_content").remove();
    	    $('<div class="ticket_table_content"></div>').appendTo($(".ticket_table_content_goods"));
        }
        
        //点击搜索按钮
        $("#searchBtn").click(function(){
       		//调用查询
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
    	
    	//先：加载ztree树
    	var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName) {
    		if(nodeId!=0){
				$("[name=goodsCategoryId]").val(nodeId);
			}else{
				$("[name=goodsCategoryId]").val('');
			}
			getData();
    	});;

		//设置根节点
		var _root = [{id:0,name:'全部类目',checked:false,isParent:true,open:true}];
    	//后：进行初始化
    	$.fn.zTree.init($(_treeUlId),_setting,_root);//自动展开根节点
		var _treeObj = $.fn.zTree.getZTreeObj(treeUlId);
		var node = _treeObj.getNodeByParam('id', 0);//获取id为1的点
		_treeObj.selectNode(node);//选择点
		_treeObj.expandNode(node,true,true,true);
    }
    //======================调用树  end===========================
		
    });

</script>