<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.storeInfoCla,.tableCla,.pCla,.btnDivCla{
		display: none;
	}
	.add{
		margin-bottom:20px;
	}
</style>

<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="javascript:;">零售平台</a></li>
            <li><a href="javascript:;">库存管理</a></li>
            <li class="active">创建库存地</li>
        </ol>
        <input type="hidden" name="isUpdate" value="${isUpdate }">
        <input type="hidden" name="storeIdIn" value="${storeId }">
        <input type="hidden" name="storeNameIn" value="${storeName }">
        <input type="hidden" name="storeTypeIn" value="${storeTypeStr }">
       
        <div class="panel panel-default">
            <div class="panel-heading">创建库存地</div>
            <div class="panel-body table_add">
	            <table class="table half-table">
	                <tbody>
	                <tr>
	                    <th>请选择门店</th>
	                    <td>
	                    	<div class="form-group ">
	                        	<button class="btn btn-primary" type="button" id="selectStoreBtn">选择门店</button>
	                        </div>
	                    </td>
	                    <th class="emptyCla"></th>
	                    <td class="emptyCla"></td>
	                    <th class="storeInfoCla">店铺号</th>
	                    <td  class="storeInfoCla" id="storeIdTd">
	                        
	                    </td>
	                    <input type="hidden" name="storeIdHid" value="${storeId }">
	                <tr>
	                    <th  class="storeInfoCla">店铺名称</th>
	                    <td  class="storeInfoCla" id="storeNameTd">
	                    	
	                    </td>
	                    <th  class="storeInfoCla">店铺类型</th>
	                    <td  class="storeInfoCla" id="storeTypeTd"> 
	                    	
	                    </td>
	                    <input type="hidden" name="storeType" value="${storeType }">
	                    <input type="hidden" name="storeHierarchyId" value="${hierarchyId }">
	                    <input type="hidden" name="storeDirectlyOrgId" value="${directlyOrgId }">
	                </tr>
	                </tbody>
	            </table>
	            
	            <p class="view_title pCla">已存在库存地</p>
	            
	            <table class="table table-striped table-bordered channe tableCla">
	                <thead>
	                	<tr>
	                		<th>库存地编号</th>
	                		<th>库存地名称</th>
	                		<th>库存地说明</th>
	                		<th>状态</th>
	                		<th>操作</th>
	                	</tr>
	                </thead>
	                <tbody id="stockGroundTbody" style="text-align: center;">
		                
	                </tbody>
	            </table>
	            
           		<div class=" text-center btn-margin btnDivCla">
                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
                    <button class="btn btn-warning" type="button" id="cancelBtn">取消</button>
                </div>
            </div>
    	</div>
	

<!-- 选择门店 -->
<div id="storeDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog" style="    width: 1050px;margin:30px auto;">
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

<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/stock/stockGround/js/stockGroundAdd.js"></script>
 <script type="text/javascript">
$(function(){
	
	$("#cancelBtn").click(function(){
		$.changePage(_path+"/merge/stock/place/manager/list"+"?_="+(new Date()).getTime());
	});
	
	 $("[name=addSub]").click(function(){
		
		//新增的自定义库存地列表
		var  newStoreStockArray = new Array(); 
		//要更新或新增的门店库存地列表
		var  storeStockArray = new Array(); 
		//要更新的自定义库存地列表
		var  stockGroundArray = new Array(); 
		
		var stockNameErrTip = 0;
		var stockNameLenErrTip = 0;
		var stockInstructionErrTip = 0;
		var stockInstructionLenErrTip = 0;
		$("#stockGroundTbody").find(".subTr").each(function(index,domEle){
			
			var stockGroundId = $(domEle).find("[name=stockGroundId]").val();
			
			var stockGroundIsInitialise = $(domEle).find("[name=stockGroundIsInitialise]").val();
			
			var stockNumber = $(domEle).find("[name=stockNumber]").text();
			
			var stockName = $(domEle).find("[name=stockName]").val();
			
			var stockInstruction = $(domEle).find("[name=stockInstruction]").val();
			
			if(stockGroundIsInitialise == 0){
				if(stockName == "" || stockName == "undefined"){
					stockNameErrTip ++;
				}else {
					if(stockName != null && stockName.length > 10){
						
						stockNameLenErrTip ++ ;
					}
				}
				if(stockInstruction == "" || stockInstruction == "undefined"){
					stockInstructionErrTip ++;
				}else {
					if(stockInstruction != null &&  stockInstruction.length > 50){
						
						stockInstructionLenErrTip ++;
					}
				}
			}
			
			var stockStatus = $(domEle).find("[name=stockStatus]").val();
			
			var storeStockGroundId = $(domEle).find("[name=storeStockGroundId]").val();
			if(stockGroundId != "" && stockGroundId != "undefined" && stockGroundId != undefined){
				
				if(storeStockGroundId != "" && storeStockGroundId != "undefined" && storeStockGroundId != undefined){
					//该门店非首次添加库存地，组装要更新的门店库存地列表
					var entity ={"id":storeStockGroundId,"storeId":$("#storeIdTd").text(),"stockGroundId":stockGroundId,"status":stockStatus,
							"directlyOrgId":$("[name=storeDirectlyOrgId]").val(),"hierarchyId":$("[name=storeHierarchyId]").val()};
					storeStockArray.push(entity);
				}else{
					//门店首次添加库存地，组装新增的门店库存地列表
					var entity ={"storeId":$("#storeIdTd").text(),"stockGroundId":stockGroundId,"status":stockStatus,
							"directlyOrgId":$("[name=storeDirectlyOrgId]").val(),"hierarchyId":$("[name=storeHierarchyId]").val()};
					storeStockArray.push(entity);
				}
				
				if(stockGroundIsInitialise == 0){
					//自定义库存地更新列表
					var entity ={"id":stockGroundId,"name":stockName,"instruction":stockInstruction};
					stockGroundArray.push(entity);
				}
				
			}else if(stockName != "" && stockName != "undefined" && stockName != undefined){
				//自定义库存地新增列表
				var entity ={"number":stockNumber,"name":stockName,"instruction":stockInstruction,"status":stockStatus};
				newStoreStockArray.push(entity);
			}
		});
		
		//门店是否首次创建库存地
		var firstTimeAdd = 1;
		if($("[name=storeStockGroundId]").val() != "" && $("[name=storeStockGroundId]").val() != "undefined" 
				&& $("[name=storeStockGroundId]").val() != undefined){
			firstTimeAdd = 0;
		}
		
		if(stockNameErrTip > 0){
			timedTaskFun(1000,'库存地名称不能为空！','','err');
			return false;
		}else if(stockNameLenErrTip > 0){
			timedTaskFun(1000,'库存地名称不能超过10个字符！','','err');
			return false;
		}else if(stockInstructionErrTip > 0){
			timedTaskFun(1000,'库存地说明不能为空！','','err');
			return false;
		}else if(stockInstructionLenErrTip > 0){
			timedTaskFun(1000,'库存地说明不能超过50个字符！','','err');
			return false;
		}
		
		var newStoreStockList = JSON.stringify(newStoreStockArray);
		var storeStockList = JSON.stringify(storeStockArray);
		var stockGroundList = JSON.stringify(stockGroundArray);
		
		  $.ajax({
			type : "post",
			url : _path+"/merge/stock/place/manager/add",
			data :{"storeId":$("#storeIdTd").text(),"storeStockList":storeStockList,
				"newStockGroundList":newStoreStockList,"firstTime":firstTimeAdd,"stockGroundList":stockGroundList,
				"storeHierarchyId":$("[name=storeHierarchyId]").val(),"storeDirectlyOrgId":$("[name=storeDirectlyOrgId]").val()},
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
					var jumpUrl = '/merge/stock/place/manager/list';
						timedTaskFun(1000,'创建成功！',jumpUrl,'correct');
				}else {
					timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
				}
			}
		 });
 	}); 
 	
	 
});
 
</script>