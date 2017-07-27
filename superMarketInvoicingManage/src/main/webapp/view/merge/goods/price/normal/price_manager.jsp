<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.afterShowTrCla,.afterShowPCla,.afterShowTableCla,.afterShowBtnCla{
		display:none;
	}
	.selectGoodsAfterDiv,.selectStoresAfterDiv,.selectAfterShowDiv{
		display:none;
	}
	.right_listbtn{
		 margin-bottom: 20px;
	
	}
</style>

<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li class="active">价格维护</li>
        </ol>

       <form class="add-form" id="price-manager-form">
        	<input type="hidden" name="storeIds" value="${storeId }">
        	<input type="hidden" name="storeNames" value="${storeName }">
        	<input type="hidden" name="storeTypes" value="${storeType }">
        	<input type="hidden" name="goodsId" value="${goodsId }">
        	<input type="hidden" name="isCheck" value="${isCheck }">
        	<input type="hidden" name="categoryId" value="${categoryId }">
        <div class="panel panel-default">
          <div class="panel-heading">请选择商品</div>
            <div class="panel-body table_add">
	            <table class="table  half-table">
	                <tbody>
	                <c:if test="${isCheck == 0 }">

		                <tr>
		                    <th class="form-rowth">请选择商品：</th>
		                    <td>
		                    	<div class="input-group">
		                			<button class="btn btn-primary" type="button" id="selectGoodBtn">选择一个商品</button>
		                  		</div>
		                    </td>
		                </tr>

	                </c:if>
	            </tbody>
	        </table>

	            <table class="table  half-table">
	                <tbody>
	                <tr>
	                    <th class="selectGoodsAfterDiv form-rowth">类目：</th>
	                    <td class="selectGoodsAfterDiv">
	                    	<span id="treeCon"></span>
	                    </td>
	                </tr>
	                <tr>
	                    <th class="selectGoodsAfterDiv form-rowth">商品名称：</th>
	                    <td class="selectGoodsAfterDiv">
	                    	<span id="goodsNameCon">${goodsName }</span>
	                    </td>
	                </tr>
	                 <tr>
	                    <th class="selectGoodsAfterDiv form-rowth">SPU：</th>
	                    <td  class="selectGoodsAfterDiv">
	                        <span id="spuCon" >${goodsSpu }</span>
	                    </td>
	                </tr>

	                </tbody>
	             </table>



	   		 </div>
		</div>
	<div class="panel panel-default">
          <div class="panel-heading">请选择门店</div>
            <div class="panel-body table_add">
	            <table class="table  half-table">
	                <tbody>
	                <c:if test="${isCheck == 0 }">
	                	 <tr>
							<th class="form-rowth">请选择门店：</th>
		                    <td >
		                        <div class="form-group ">
		                        	<button class="btn btn-primary" type="button" id="selectStoreBtn">选择门店清单</button>
		                        </div>
		                    </td>
		                </tr>

 					</c:if>
 				</tbody>
 			</table>

 			<table class="table half-table">
	            <tbody>
								<tr>
											<th class="selectStoresAfterDiv form-rowth">涉及门店：</th>
	                    <td class="selectStoresAfterDiv">
	                        <span id="storeSelectCon" >${storeName }</span>
	                    </td>

								</tr>
				 </tbody>
	    </table>
 		</div>
 	</div>




		<div class="panel panel-default selectAfterShowDiv">
            <div class="panel-body table_add">
	            <table class="table  half-table">
  					<tbody>
							<tr class="afterShowTrCla">
									 <th class="form-rowth">商品状态：</th>
									 <input type="hidden" name="goodsState" value="${goodsState }">
									 <td id="goodsStatusTd">
										 <c:choose>
											 <c:when test="${goodsState != null and goodsState == 0}">
												 试销商品
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 1}">
												 可订货，可销售
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 2}">
												 可订货，不可销售
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 3}">
												 不可订货，可销售
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 4}">
												 不可订货，不可销售
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 5}">
												 快速出清
											 </c:when>
											 <c:when test="${goodsState != null and goodsState == 6}">
												 汰换品
											 </c:when>
										 </c:choose>
									 </td>
							 </tr>
							 <tr class="afterShowTrCla">
									 <th class="form-rowth">供商：</th>
	 								<td>

	 								</td>
							 </tr>

							 <tr class="afterShowTrCla">
								 		<th class="form-rowth">售价：</th>
									 <td>
										 <div class="form-group ">
												修改为
												<input type="text" class="form-control toPriceInCla form-controlin form-controlindis"  placeholder="" name="salePriceA" value="">
									 	</div>
									 </td>
							 </tr>

							 <tr class="afterShowTrCla">
								 		<th class="form-rowth">市场价：</th>
										 <td>
											 <div class="form-group ">
			                    	修改为
														<input type="text" class="form-control toPriceInCla form-controlin form-controlindis"  placeholder="" name="marketPriceA" value="">
				                </div>
										 </td>
							 </tr>
							 <tr class="afterShowTrCla">
								 		<th class="form-rowth">采购价：</th>
										 <td>
											 <div class="form-group ">
		                    	修改为
													<input type="text" class="form-control toPriceInCla form-controlin form-controlindis" placeholder="" name="purchasePriceA" value="">
			                </div>
										 </td>
							 </tr>


  					</tbody>
  				</table>
					<p class="view_title afterShowPCla" style="font-size:14px;color:#303030;">
							<input type="checkbox" checked="checked" id="checkBoxIn" >应用到所有SKU
					</p>

					 <table class="table table-striped table-bordered channe afterShowTableCla">
							 <thead>
								 <tr>
									 <th>门店</th>
									 <th>属性1</th>
									 <th>属性2</th>
									 <th>SKU</th>
									 <th>条码</th>
									 <!-- <th>厂家货号</th> -->
									 <th>售价</th>
									 <th>市场价</th>
									 <th>采购价</th>
								 </tr>
							 </thead>
							 <tbody id="skuConTbody" style="text-align: center;">

							 </tbody>
					 	</table>


  			</div>
  		</div>

								<div class=" text-center btn-margin afterShowBtnCla">
                    <button class="btn btn-primary" type="button" name="addSub">修改并提交</button>
                    <button class="btn btn-warning" type="button" name="setDefaultButton">重置</button>
                </div>
 </form>
</div>











<!-- 选择商品 -->
<div id="goodsDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog" style="width: 1000px;margin:30px auto;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title">商品列表</h4>
            </div>
            <div class="modal-body">

	            <div class="ticket_table_content">

			        <div class="panel panel-default form-search clasbordernone">
			            <div class="panel-body">
				        	<div class="conditions_team">
				                <label>商品名称：</label><input type="text" name="goodsName" class="form-control" placeholder="商品名称">
			                </div>
			            	<div class="conditions_team">
				                <label>SPU：</label><input type="text" name="goodsSpu" class="form-control" placeholder="SPU">
			                </div>
			                <div class="conditions_team">
				                <label>商品类型：</label>
				                <select name="selfSupport" class="form-control">
				        		   <option value="-1">--请选择商品类型--</option>
				        		   <option value="0">非自营</option>
				        		   <option value="1">自营</option>
				        		</select>
			                </div>
			                <button type="button" id="goodsSearchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
				        </div>
			           	
			                
			            
			        </div>
			        <div class="ticket_table_content_th_goods">

	        		</div>
	        	</div>
        	</div>
            <div class="modal-footer">
            </div>
        </div>
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



<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/price/normal/js/priceManagerList.js"></script>

