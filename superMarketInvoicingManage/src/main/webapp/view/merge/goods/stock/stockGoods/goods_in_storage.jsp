<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="javascript:;">零售平台</a></li>
            <li><a href="javascript:;">库存管理</a></li>
            <li class="active">采购入库</li>
        </ol>
       
       <input type="hidden" name="storeId" value="${storeId }">
       <input type="hidden" name="stockGroundId" value="${stockGroundId }">
       <input type="hidden" name="storeName" value="${storeName }">
       <input type="hidden" name="stockGround" value="${stockGround }">
       
        <div class="panel panel-default">
            <div class="panel-heading">采购入库</div>
            <div class="panel-body table_add">
	            <table class="table half-table">
	                <tbody>
	                <tr>
	                    <th>凭证类型</th>
	                    <td>
	                    	采购入库
	                    	<input type="hidden" name="voucherType" value="1">
	                    </td>
	                    <th>凭证号</th>
	                    <td>
	                        ${voucherNum }
	                        <input type="hidden" name="voucherNum" value=" ${voucherNum }">
	                    </td>
	                </tbody>
	            </table>
	            
	            <button type="button" class="btn btn-primary" style=" margin-bottom: 10px;float: right;" id="selectGoodBtn">添加商品</button>
	            
	            <table class="table table-striped table-bordered channe">
	                <thead>
	                	<tr>
	                		<th>所属类目</th>
	                		<th>SPU</th>
	                		<th>商品名称</th>
	                		<th>商品类型</th>
	                		<th>SKU</th>
	                		<th>销售属性1</th>
	                		<th>销售属性2</th>
	                		<th>采购价</th>
	                		<th>入库数量</th>
	                		<th>入库单位</th>
	                		<th>操作</th>
	                	</tr>
	                </thead>
	                <tbody id="goodsSaleTbody" style="text-align: center;">
		                <tr class="tempTr">
	                		<td colspan="11">暂无数据！</td>
	                	</tr>
	                </tbody>
	            </table>
	            
           		<div class=" text-center btn-margin">
                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
                    <button class="btn btn-warning" type="button" id="cancelBtn">取消</button>
                </div>
            </div>
    	</div>
	
<!-- 选择商品 -->
<div id="goodsDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog" style="    width: 1000px;margin:30px auto;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title">商品列表</h4>
            </div>
            <div class="modal-body">
            	
	            <div class="ticket_table_content">
	            
			        <div class="panel panel-default form-search">
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
			                <button type="button" id="goodsSearchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
			            </div>
			        </div>
			        <div class="ticket_table_content_th_goods">
	        
	        		</div>
	        	</div>
        	</div>
            <div class="modal-footer" style="text-align: center;">
                <button type="button" class="btn btn-primary" style="margin: 0 15px;" id="addGoodsSaleBtn"  >确定<tton>
                <button type="button" class="btn btn-warning" data-dismiss="modal" style="margin: 0 15px;">取消<tton>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/stock/stockGoods/js/goodsInStorage.js"></script>
 <script type="text/javascript">
$(function(){
	
	$("#cancelBtn").click(function(){
		var	_condition = {"storeId":$("[name=storeId]").val(),"stockGroundId":$("[name=stockGroundId]").val()};
		var queryCondition = JSON.stringify(_condition);
		$.changePage(_path+"/merge/stock/goods/search/list"+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition);
	});
	
	 $("[name=addSub]").click(function(){
		 
		 var purchasePriceErrTip = 0;
		 var storageNumErrTip = 0;
		 var unitIdTip = 0;
		 var goodsSaleIdErrTip = 0;
		 
		var  stockInDetailArray = new Array(); 
		
		$("#goodsSaleTbody").find("tr").each(function(index,domEle){
			
			var goodsSaleId = $(domEle).find("[name=goodsSaleId]").val();
			
			if(goodsSaleId == "" || goodsSaleId == null || goodsSaleId == "undefined" || goodsSaleId == undefined){
				timedTaskFun(1000,'请添加商品！','','err');
				goodsSaleIdErrTip ++ ;
				return false;
			}
			
			var goodsId = $(domEle).find("[name=goodsId]").val();
			
			var purchasePrice = $(domEle).find("[name=purchasePrice]").val();
			
			if(purchasePrice == "" || purchasePrice == "undefined"){
				timedTaskFun(1000,'采购价不能为空！','','err');
				purchasePriceErrTip ++;
				return false;
			}else if(!checkPrice(purchasePrice)){
	    		timedTaskFun(1000,'采购价金额格式不合法！','','err');
	    		purchasePriceErrTip ++;
				return false;
	    	}
			
			purchasePrice = parseFloat(purchasePrice) * parseInt(100);
			
			var storageNum = $(domEle).find("[name=storageNum]").val();
			
			if(storageNum == "" || storageNum == "undefined"){
				timedTaskFun(1000,'入库数量不能为空！','','err');
				storageNumErrTip ++;
				return false;
			}else if(!checkNum(storageNum)){
				timedTaskFun(1000,'入库数量填写不正确！','','err');
				storageNumErrTip ++;
				return false;
			}
			
			var unitId = $(domEle).find("[name=unitId]").val();
			
			if(unitId == "" || unitId == "undefined"){
				timedTaskFun(1000,'入库单位不能为空！','','err');
				unitIdTip ++;
				return false;
			}
			
			var categoryName = $(domEle).find("[name=categoryName]").text();
			var goodsSpu = $(domEle).find("[name=goodsSpu]").text();
			var goodsName = $(domEle).find("[name=goodsName]").text();
			var goodsSku = $(domEle).find("[name=goodsSku]").text();
			var salePropertyList = $(domEle).find("[name=salePropertyList]").text();
			
			var goodsDetails = {"goodsSaleId":goodsSaleId,"goodsId":goodsId,"categoryName":categoryName,"goodsSpu":goodsSpu
					,"goodsName":goodsName,"goodsSku":goodsSku,"salePropertyList":salePropertyList};
			
			var entity = {"goodsSaleId":goodsSaleId,"goodsId":goodsId,"purchasePrice":purchasePrice,"storageNum":storageNum
					,"unitId":unitId,"goodsDetails":goodsDetails};
			stockInDetailArray.push(entity);
			
		});
		
		if(purchasePriceErrTip > 0){
			return false;
		}
		if(storageNumErrTip > 0){
			return false;
		}
		if(unitIdTip > 0){
			return false;
		}
		if(goodsSaleIdErrTip > 0){
			return false;
		}
		
		var stockInDetailList = JSON.stringify(stockInDetailArray);
		
		if(stockInDetailList.length > 0){
			
		  $.ajax({
			type : "post",
			url : _path+"/merge/stock/put/in/storage",
			data :{
				"storeId":$("[name=storeId]").val(),
				"voucherNum":$("[name=voucherNum]").val(),
				"voucherType":$("[name=voucherType]").val(),
				"stockInDetailList":stockInDetailList,
				"stockGroundId":$("[name=stockGroundId]").val(),
				//"storeName":encodeURI(encodeURI($("[name=storeName]").val())),
				//"stockGround":encodeURI(encodeURI($("[name=stockGround]").val()))},
				"storeName":$("[name=storeName]").val(),
				"stockGround":$("[name=stockGround]").val()},
			//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
            beforeSend: function () {
                //加载中
                waitload();
            },
			success : function(data) {
				closewait();
				
				//若执行成功的话，则隐藏进度条提示
				if (data != null && data != 'undefined' && data == 1) {
					var	_condition = {"storeId":$("[name=storeId]").val(),"stockGroundId":$("[name=stockGroundId]").val()};
					var queryCondition = JSON.stringify(_condition);
					var jumpUrl = '/merge/stock/goods/search/list'+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition;
					timedTaskFun(1000,'入库成功！',jumpUrl,'correct');
				}else {
					timedTaskFun(1000,'入库失败！','','err');
				}
			}
		 });
		  
		}	
		
 	}); 
 	
	//校验金额的正则方法
	 function checkPrice(price){
	 	return (/^(([1-9]\d*)|\d)(\.\d{1,2})?$/).test(price.toString());
	 }
	
	//校验数量的正则方法
	 function checkNum(num){
	 	return (/^(([1-9]\d*)|\d)?$/).test(num.toString());
	 }
	 
});
 
</script>