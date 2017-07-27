<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet"><style>
<!--
/* 删除按钮居中 */
#property_assemble td{
	text-align: center;
}

-->
.blop th{
	font-weight: 500 !important;
}

</style>
   <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">商品管理</a></li>
            <li class="active">实物商品管理</li>
        </ol>
        
<!-- 栅格 总框架开始 ---张健 -->
        <div class="row">
	        <div class="col-md-12 container-fluid">
	        	<div class="ticket_table_content cloud_list panel-default" style="overflow: hidden;"> 
					<table class="table table-striped table-bordered text-center">
						  
						   <tbody>
						   	<c:if test="${goods.isMultiProperties ==0 }">
							     <tr>
							       <th class="form-row-th">商品名称</th>
							       <td class="form-row-td">${goods.goodsName}</td>
							     	<th class="form-row-th">SPU</th>
							       <td class="form-row-td">${goods.goodsSpu}</td>
							     </tr>
							     <tr>
							       <th class="form-row-th">商品类目属性</th>
							       <td class="form-row-td">${goodsCategoryAllName }</td>
							       <th class="form-row-th">条码</th>
							       <td class="form-row-td">${barcode}</td>
							     </tr>
							     <tr>
							       <%-- <th class="form-row-th">厂家货号</th>
							       <td class="form-row-td">${manufacturerNo }</td> --%>
							       <th class="form-row-th">SKU</th>
							       <td class="form-row-td">${defaultSKU}</td>
							       <th class="form-row-th">销售单位</th>
								   <td class="form-rowtd">${packageSaleUnit}</td>
							     </tr>
						     </c:if>
						   	<c:if test="${goods.isMultiProperties ==1 }">
							     <tr>
							       <th class="form-row-th">商品名称</th>
							       <td class="form-row-td">${goods.goodsName}</td>
							     	<th class="form-row-th">SPU</th>
							       <td class="form-row-td">${goods.goodsSpu}</td>
							     </tr>
							     <tr>
							       <th class="form-row-th">商品类目属性</th>
							       <td class="form-row-td">${goodsCategoryAllName }</td>
							        <th class="form-row-th">销售单位</th>
									<td class="form-rowtd">${packageSaleUnit}</td>
							     </tr>
						     </c:if>
						   </tbody>
					 </table>
				<c:if test="${goods.isMultiProperties ==1 }"> 
					 <div class="panel-heading">详细参数</div>
					 	<table class="table table-striped table-bordered text-center" id="property_assemble">
						   <thead class="blop">
						   </thead>
						   <tbody>
						   </tbody>
						</table>
					</div>
				</c:if>	
				 <%-- <div class="ticket_table_content cloud_list panel-default form-margtop" style="overflow: hidden;">	 
						<div class="panel-heading">产地参数 <span class="form-span">非必填项</span></div>
					 
					 	<table class="table table-striped table-bordered">
						  	<tbody>
								     <tr>
								       <th class="form-row-th">品牌</th>
								       <td class="form-row-td">${goods.goodsProductAreaEntity.brandName }</td>
								       <th class="form-row-th">质保</th>
										<td class="form-row-td">
											<c:if test="${goods.goodsProductAreaEntity.isQualityAssurance==1 }">
													有
											</c:if>
											<c:if test="${goods.goodsProductAreaEntity.isQualityAssurance==0 }">
													无
											</c:if>
										</td>
									</tr>
								 
								  
								     <tr>
								     	<th class="form-row-th">产地</th>
								       <td class="form-row-td">${goods.goodsProductAreaEntity.country }  ${goods.goodsProductAreaEntity.prov}${goods.goodsProductAreaEntity.city}</td>
								       <c:if test="${goods.goodsProductAreaEntity.isQualityAssurance==1 }">
									       <th class="form-row-th">质保天数</th>
									       <td class="form-rowtd">${goods.goodsProductAreaEntity.qualityAssuranceDays }</td>
										</c:if>
										<c:if test="${goods.goodsProductAreaEntity.isQualityAssurance==0 }">
									       <th class="form-row-th"></th>
									       <td class="form-rowtd"></td>
										</c:if>
								     </tr>
						   </tbody>
						 </table>
				</div> --%>
				 <%-- <div class="ticket_table_content cloud_list panel-default form-margtop" style="overflow: hidden;">		 
						 <div class="panel-heading">包装参数  <span class="form-span">非必填项</span></div>
					 
					 	<table class="table table-striped table-bordered">包装规格和包装件数有互动
						  		 <tbody>
								     <tr>
								       <th class="form-row-th">包装规格</th>
								       <td class="form-row-td">
											<c:if test="${goods.goodsPackageEntity.specifications==1}">
												无包装
											</c:if>
											<c:if test="${goods.goodsPackageEntity.specifications==2}">
												有包装
											</c:if>
										</td>
								       <th class="form-row-th">起售量</th>
								       <td class="form-row-td">${goods.goodsPackageEntity.saleVolume}</td>
								     </tr>
								     包装规格和包装件数有互动 start
								     无包装规格，不显示包装件数
								     <c:if test= "${goods.goodsPackageEntity.specifications==1}" >
									     <tr>
									       <th class="form-row-th">销售单位</th>
									       <td class="form-rowtd">${packageSaleUnit}</td>
									       <th class="form-row-th">包装属性</th>
									       <td class="form-row-td">
										   		<c:if test="${ goods.goodsPackageEntity.property==1}">
										   			普通商品
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==2}">
										   			易碎品
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==3}">
										   			带包装液体
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==4}">
										   			裸瓶液体
										   		</c:if>
										   </td>
									     </tr>
								     </c:if>
								     有包装规格，显示包装件数
								     <c:if test= "${goods.goodsPackageEntity.specifications==2}" >
									     <tr>
									       <th class="form-row-th">包装件数</th>
									       <td class="form-row-td">${goods.goodsPackageEntity.number}件</td>
									       <th class="form-row-th">销售单位</th>
									       <td class="form-rowtd">${packageSaleUnit}</td>
									     </tr>
									     <tr>
									       <th class="form-row-th">包装属性</th>
									       <td class="form-row-td">
										   		<c:if test="${ goods.goodsPackageEntity.property==1}">
										   			普通商品
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==2}">
										   			易碎品
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==3}">
										   			带包装液体
										   		</c:if>
										   		<c:if test="${ goods.goodsPackageEntity.property==4}">
										   			裸瓶液体
										   		</c:if>
										   </td>
									       <th class="form-row-th"></th>
									       <td class="form-rowtd"></td>
									     </tr>
								     </c:if>
								     包装规格和包装件数有互动 end
						   </tbody>
						 </table>
					</div> --%>
					 <%-- <div class="ticket_table_content cloud_list panel-default form-margtop" style="overflow: hidden;">	 
						  <div class="panel-heading">尺寸参数 <span class="form-span">非必填项</span></div>
					 
					 	<table class="table table-striped table-bordered">
						  		 <tbody>
								     <tr>
								       <th class="form-row-th">尺寸</th>
								       <td class="form-row-td">
								       	<c:if test='${goods.goodsMeasurementEntity.length!=null }'>长（${goods.goodsMeasurementEntity.length }mm）</c:if>    
								       	<c:if test='${goods.goodsMeasurementEntity.width!=null }'>宽（${goods.goodsMeasurementEntity.width }mm）</c:if>    
								       	<c:if test='${goods.goodsMeasurementEntity.height!=null }'>高（${ goods.goodsMeasurementEntity.height}mm）</c:if>
								       	</td>
								       <th class="form-row-th">商品重量</th>
								       <td class="form-row-td">
								       		<c:if test='${goods.goodsMeasurementEntity.weight!=null }'>${goods.goodsMeasurementEntity.weight}G，含包装</c:if>
								       	</td>
								     </tr>
								
							   
						   </tbody>
						 </table>
					</div> --%>
					 <%-- <div class="ticket_table_content cloud_list panel-default form-margtop" style="overflow: hidden;">
						   <div class="panel-heading">供商参数 <span class="form-span">非必填项</span></div>
					 
					 	<table class="table table-striped table-bordered">
							<tbody>
								     <tr>
								       <th class="form-row-th">主供商</th>
								       <td class="form-row-td">${goods.goodsSupplierEntity.supplierName }</td>
								       <th class="form-row-th">采购单位</th>
								       <td class="form-row-td">${goods.goodsSupplierEntity.buyNum} ${suplierBuyUnit}</td>
								     </tr>
								     <tr>
								       <th class="form-row-th">最小起订量</th>
								       <td class="form-row-td">${goods.goodsSupplierEntity.minBuyNum }</td>
								       <th class="form-row-th"></th>
								       <td class="form-row-td"></td>
								     </tr>
						   </tbody>
						 </table>
						 
			           </div> --%>   
		 		</div>	 
		 		
		 		<div class="col-md-12 text-center btn-margin">
			               
			                    <button class="btn btn-warning" type="button" name="cancelButton">返回</button>
			     </div>      
    </div>
<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>
<script type="text/javascript">
	//================获取保存的saleMap 用于显示已经保存的销售属性 选项 ===================
	var _saleMap = eval('('+'${goods.saleMap}'+')');
	console.log(_saleMap);
	var _goodsSaleList = ${goodsSaleJsonStr};
	console.log(_goodsSaleList);
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/actualGoods/js/actual_goods_detail.js"/>
