<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	.conDiv{
		display: none;
	}
	
	
@media (min-width: 1000px){
	.form-search .btn{
		display: inline-block;
	    margin: 0 22px;
	    height: 30px;
	    line-height: 28px;
	    width: 110px;
	    padding: 0;
	}
}
@media (min-width: 1400px){
	.form-search .btn{
		display: inline-block;
	    margin: 0 36px;
	    height: 30px;
	    line-height: 28px;
	    width: 110px;
	    padding: 0;
	}
}
</style>

	
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li class="active">上架管理</li>
        </ol>
        
        <div class="row">
	        <div class="col-md-9">
	        <div class="panel panel-default form-search" style="    padding-bottom: 15px;">
	        	<div class="panel-body topStoreInfo">
		        	门店：<button type="button" class="btn btn-primary" id="selectStoreBtn" style="text-align: center;">点击选择门店</button>
		        	<button type="button" id="viewBtn" class="btn btn-primary" style=" text-align: center;   float: right;">查看</button>
		        	
	        	</div>
	        </div>
	        <ul class="nav nav-tabs list-tab conDiv">
	            <li role="presentation"  class="active" id="alreadyPutTab"><a href="javascript:;">已上架</a></li>
	            <li role="presentation"  id="notPutTab"><a href="javascript:;">未上架</a></li>
	            <input type="hidden" name="isPutWay" value="1">
	            <input type="hidden" name="goodsCategoryId" >
	        </ul>
	        
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
		                <label>商品状态：</label>
		                <select class="form-control" name="goodsState">
		                	<option value="-1">请选择商品状态</option>
		                    <option value="0">试销商品</option>
		                    <option value="1">可订货，可销售</option>
		                    <option value="2">可订货，不可销售</option>
		                    <option value="3">不可订货，可销售</option>
		                    <option value="4">不可订货，不可销售</option>
		                    <option value="5">快速出清</option>
		                    <option value="6">汰换品</option>
		                </select>
		            </div>
		            <div class="conditions_team">
		                <label>促销号：</label><input type="text" style="width:184px;" name="" class="form-control" placeholder="用;分割查询">
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
	                <button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
	            </div>
	        </div>
		        
	        <div class="ticket_table_content_goods cloud_list conDiv">
	         
	        </div>
	        
	      </div>
	      
	      <!-- #####################显示tree  start##################### -->
        	<div class="col-md-3">
        		<div class="panel panel-default">
        			<div class="panel-heading">类目树</div>
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

<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/putway/js/putwayManagerList.js"></script>	
<script type="text/javascript">
$(function(){
	
	//门店上架
	var storeGoodsPutfun = function(){
		var j = 0;
		var putawaylist = [];
		var putawayIds = [];
		var isNotprice = 0;
		$("[name=checkchild]").each(function(){
			if ($(this).prop("checked")) {
				j++;
				var checkchild = $(this).val();
				
				var goodsId = $(this).parents("td").parents("tr").find("[name=goodsId]").val();
				var goodsSaleId = $(this).parents("td").parents("tr").find("[name=goodsSaleId]").val();
				var priceId = $(this).parents("td").parents("tr").find("[name=priceId]").val();
				if(priceId == 'undefined' || priceId == ''){
					isNotprice ++;
				}
				var entity ={"goodsId":goodsId,"goodsSaleId":goodsSaleId,"storeId":$("[name=store_id]").val()
						,"priceId":priceId,"status":1,"promoNum":""};
				
				var putawayId = $(this).parents("td").parents("tr").find("[name=putawayId]").val();
				if(putawayId != 'null' && putawayId != 'NULL' && putawayId != 'undefined' && putawayId ){
					//已下架的商品，再次需要上架，上架表记录id集合
					putawayIds.push(putawayId);
				}else{
					putawaylist.push(entity);
				}
				
			}
		});
		if (j == 0) {
			timedTaskFun(1000,'请选择商品','','err');
		} else {
			if(isNotprice > 0){
				timedTaskFun(3000,'请选择已维护价格的商品进行上架操作！','','err');
				return false;
			}
			
			var putawayIdsStr = "";
			if(putawayIds.length > 0){
				putawayIdsStr = JSON.stringify(putawayIds);
			}
			
			var putwayListStr = JSON.stringify(putawaylist);
			
			if(putawaylist.length > 0 || putawayIds.length > 0){
				
				$.ajax({
					type : "post",
					url : _path+"/merge/putway/put/on/shelves",
					data :{"putawaylist":putwayListStr,"putawayIds":putawayIdsStr,"storeType":$("[name=storeType]").val()},
					//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
					beforeSend: function () {
						//加载中
						waitload();
					},
					success : function(data) {
						closewait();
						
						//若执行成功的话，则隐藏进度条提示
						if (data != null && data != 'undefined'
							&& data == 1) {
							var jumpUrl = '';
							timedTaskFun(1000,'上架成功！',jumpUrl,'correct');
							if($("[name=isPutWay]").val() == 0){
								getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
							}else if($("[name=isPutWay]").val() == 1){
								getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
							}
						}else if (data != null && data != 'undefined'
							&& data == -1002) {
							timedTaskFun(2000,'上架失败，该商品没有电商数据！','','err');
						}else {
							timedTaskFun(1000,'上架失败！','','err');
						}
					}
				});
			}
		}
	}

	//门店下架
	var storeGoodsPutOfffun = function(){
		var j = 0;
		var putawayIds = [];
		$("[name=checkchild]").each(function(){
			if ($(this).prop("checked")) {
				j++;
				var checkchild = $(this).val();
				
				var putawayId = $(this).parents("td").parents("tr").find("[name=putawayId]").val();
				putawayIds.push(putawayId);
			}
		});
		if (j == 0) {
			timedTaskFun(1000,'请选择商品','','err');
		} else {
			
			if(putawayIds.length > 0){
				
				$.ajax({
					type : "post",
					url : _path+"/merge/putway/pull/off",
					data :JSON.stringify(putawayIds),
					dataType:"json",  
				    contentType : 'application/json;charset=utf-8',
					//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
					beforeSend: function () {
						//加载中
						waitload();
					},
					success : function(data) {
						closewait();
						
						//若执行成功的话，则隐藏进度条提示
						if (data != null && data != 'undefined'
							&& data == 1) {
							var jumpUrl = '';
							timedTaskFun(1000,'下架成功！',jumpUrl,'correct');
							
							if($("[name=isPutWay]").val() == 0){
								getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
							}else if($("[name=isPutWay]").val() == 1){
								getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
							}
							
						}else {
							timedTaskFun(1000,'下架失败！','','err');
						}
					}
				});
			}
			
		}
	}
	
	var buttonsArrGoods1 =[];
	<shiro:hasPermission name="merge_putway_put_on_shelves_access">
		buttonsArrGoods1.push({text:'门店上架',icon:'add',handler:storeGoodsPutfun});
	</shiro:hasPermission>
	var buttonsArrGoods2 =[];
	<shiro:hasPermission name="merge_putway_pull_off_access">
		buttonsArrGoods2.push({text:'门店下架',icon:'add',handler:storeGoodsPutOfffun});
	</shiro:hasPermission>
	function getDataPutwayGoods(buttonsArr,ajaxUrl){
	    var _options ={
	        url:_path+ajaxUrl
	        ,checkAll:true
	        //查询条件
	        ,data:{"isPutWay":$("[name=isPutWay]").val(),"storeId":$("[name=store_id]").val(),"goodsName":$("[name=goodsName]").val(),
	        	"goodsSpu":$("[name=goodsSpu]").val(),"goodsSku":$("[name=goodsSku]").val()
	        	,"goodsState":$("[name=goodsState]").val(),"goodsCategoryId":$("[name=goodsCategoryId]").val()
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
					
					if(properties != "" && properties != "undefined"){
						property1 = properties.propertyValueName1;
					}
	             	
	             	return property1;
	             }}
	             ,{name:'销售属性2',type:"function", fun : function(obj){
	            	 
	            	 var properties = $.parseJSON(obj.salePropertyList);
	            	 var property2 = "";
	            	 
	            	 if(properties != "" && properties != "undefined"){
	            		 property2 = properties.propertyValueName2;
	            	 }
	            	 
	            	 return property2;
	             }}
	             ,{name:'售价',type:"function", fun : function(obj){
	             	var html="";
	             	html += formatCurrency(obj.salePrice / 100);
	             	html += " <input type='hidden' name='priceId' value="+obj.priceId+" />";
	             	return html;
	             }}
	             ,{name:'商品状态',type:"function", fun : function(obj){
	             	var html="";
	             	if(obj.goodsState == 0){
	             		html += "试销商品";
	             	}else if(obj.goodsState == 1){
	             		html += "可订货，可销售";
	             	}else if(obj.goodsState == 2){
	             		html += "可订货，不可销售";
	             	}else if(obj.goodsState == 3){
	             		html += "不可订货，可销售";
	             	}else if(obj.goodsState == 4){
	             		html += "不可订货，不可销售";
	             	}else if(obj.goodsState == 5){
	             		html += "快速出清";
	             	}else if(obj.goodsState == 6){
	             		html += "汰换品";
	             	}
	             	html += " <input type='hidden' name='goodsId' value="+obj.goodsId+" />";
	             	html += " <input type='hidden' name='goodsSaleId' value="+obj.id+" />";
	             	html += " <input type='hidden' name='categoryId' value="+obj.categoryId+" />";
	             	html += " <input type='hidden' name='putawayId' value="+obj.putawayId+" />";
	             	return html;
	             }}
	             ,{name:'促销号',value:'managerOrg'}
	             
	        ]
	        ,buttons:buttonsArr
	        ,buttonMark:"#goodsbuttonsId"
	        
	    };
	    $(".ticket_table_content_goods").grid(_options);
	    $(".ticket_table_content_goods").find(".ticket_table_content").remove();
	    $('<div class="ticket_table_content"></div>').appendTo($(".ticket_table_content_goods"));
	}

	$("#searchBtn").click(function(){
		if($("[name=isPutWay]").val() == 0){
			getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
		}else if($("[name=isPutWay]").val() == 1){
			getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
		}
	});
	
	
	//未上架
	$("#notPutTab").click(function(){
		$(this).siblings().removeClass("active");
		$(this).addClass("active");
		$("[name=isPutWay]").val(0);
		
		$("[name=goodsCategoryId]").val('');
		 loadTree("serviceCategoryTreeDemo",_path+"/goods/purchase/tree/loadtree");
		
		getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
	});
	
	//已上架
	$("#alreadyPutTab").click(function(){
		$(this).siblings().removeClass("active");
		$(this).addClass("active");
		$("[name=isPutWay]").val(1);
		
		$("[name=goodsCategoryId]").val('');
		
		 loadTree("serviceCategoryTreeDemo",_path+"/goods/purchase/tree/loadtree");
		
		getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
	});
	
	//点击查看
	$("#viewBtn").click(function(){
		if($("[name=store_id]").val() != "" && $("[name=store_id]").val() != "undefined"
				&& $("[name=store_id]").val() != undefined){
			
			//只有已上架权限，没有未上架权限
			<shiro:hasPermission name="merge_putway_already_access">
				<shiro:lacksPermission name="merge_putway_not_on_shelves_list_access">
					$("#notPutTab").css("display","none");
				</shiro:lacksPermission>
				$("[name=isPutWay]").val(1);
			</shiro:hasPermission>
			
			
			<shiro:lacksPermission name="merge_putway_already_access">
				$("#alreadyPutTab").css("display","none");
				//没有已上架权限，有未上架权限
				<shiro:hasPermission name="merge_putway_not_on_shelves_list_access">
					$("#notPutTab").addClass("active");
					$("[name=isPutWay]").val(0);
				</shiro:hasPermission>
				
				//没有已上架权限，没有未上架权限
				<shiro:lacksPermission name="merge_putway_not_on_shelves_list_access">
					$(".conDiv").css("display","none");
					return false;
				</shiro:lacksPermission>
			</shiro:lacksPermission>
			
			$(".conDiv").css("display","block");
			
			if($("[name=isPutWay]").val() == 0){
				$("#notPutTab").siblings().removeClass("active");
				$("#notPutTab").addClass("active");
				
				getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
			}else if($("[name=isPutWay]").val() == 1){
				$("#alreadyPutTab").siblings().removeClass("active");
				$("#alreadyPutTab").addClass("active");
				
				getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
			}
			
		}
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
    		if(nodeId!=0){
				$("[name=goodsCategoryId]").val(nodeId);
			}else{
				$("[name=goodsCategoryId]").val('');
			}
    		if($("#notPutTab").hasClass('active')){
    			getDataPutwayGoods(buttonsArrGoods1,"/merge/putway/not/on/shelves/list");
    		};
    		if($("#alreadyPutTab").hasClass('active')){
    			getDataPutwayGoods(buttonsArrGoods2,"/merge/putway/already/list");
    		}
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

</script>