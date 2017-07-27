<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/select2.min.css" rel="stylesheet"><!--下拉框搜索  -->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet"><style>
<!--
/* 删除按钮居中 */
#property_assemble td{
	text-align: center;
}
-->
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
	        <div class="col-md-9">
		        <form class="add-form" id="actual-goods-update-form" >
		        	<!-- 销售属性组合 -->
		        	<input type="hidden" name="requestGoodsSaleInfo"  value="" />
		        	<input type="hidden" name="id"  value="${goods.id }" />
		        	<input type="hidden" name="goodsSpu"  value="${goods.goodsSpu }" />
		        	<input type="hidden"  name="isMultiProperties"    value="${goods.isMultiProperties }"/>
		        	
		        	<div class="panel panel-default">
		        	
			            <div class="panel-heading">修改商品 </div>
			              <div class="panel-body table_add">
				            <table class="table half-table">
				                <tbody>
						                <tr>
						                    <th><span class="required">*</span>商品名称</th>
						                    <td>
						                       	<div class="form-group">
						                            <input type="text" class="form-control"  placeholder="" name="goodsName" value="${goods.goodsName }">
						                  		</div>
						                    </td>
						                    <th><span class="required">*</span>商品类目</th>
						                    <td>
						                        <div class="form-group ">
						                            <input type="hidden" name="goodsCategoryId" disabled="disabled" value="${goods.goodsCategoryId }" />
						                            <input type="text"  class="form-control" disabled="disabled" placeholder="四级类目" name="categoryName" value="${goods.categoryName }" >
						                        </div>
						                    </td>
						                </tr>
						                <tr>
<!-- 						               	    <th>厂家货号</th> -->
<!-- 						                    <td> -->
<!-- 						                        <div class="form-group "> -->
<%-- 						                        	<c:if test="${goods.isMultiProperties==0 }"> --%>
<%-- 						                            	<input type="text" class="form-control"  name="manufacturerNo" value="${manufacturerNo}"> --%>
<%-- 						                            </c:if> --%>
<%-- 						                        	<c:if test="${goods.isMultiProperties==1 }"> --%>
<!-- 						                            	<input type="text" class="form-control"  disabled="disabled" name="manufacturerNo"> -->
<%-- 						                            </c:if> --%>
<!-- 						                        </div> -->
<!-- 						                    </td> -->
											<th>商品类型</th>
					                	 	<td> 
				                    		 <select name="selfSupport" class="form-control form-controlinsmall form-controlindis">
				                    		 			<c:if test="${goods.selfSupport==1 }">
													        <option value="1"  selected="selected">自营</option>
													        <option value="0">非自营</option>
												        </c:if>
				                    		 			<c:if test="${goods.selfSupport==0 }">
													        <option value="1"  >自营</option>
													        <option value="0" selected="selected">非自营</option>
												        </c:if>
									         </select>
						                    </td>
						                    <th>条码</th>
						                    <td>
						                        <div class="form-group ">
						                        	<c:if test="${goods.isMultiProperties==0 }">
						                            	<input type="text" class="form-control"   placeholder="最多可输入80个汉字" name="barcode" value="${barcode }">
						                            </c:if>
						                            
						                        	<c:if test="${goods.isMultiProperties==1 }">
						                            	<input type="text" class="form-control"  disabled="disabled"  name="barcode" >
						                            </c:if>
						                        </div>
						                    </td>
						                  </tr>
									      <tr>
							                	<th>销售单位</th>
							                    <td>
							                        <div class="form-group ">
							                        	<!-- <input type="hidden" name="saleUnitEnglishName">
							                        	<input type="hidden" name="saleUnitName"> -->
							                        	<input type="hidden" id="saleUnitIdInput" value="${goods.goodsPackageEntity.saleUnitId}">
							                            <select class="form-control form-controlin"  name="saleUnitId">
										        			<option value="-1">请选择</option>
										        		</select>
							                        </div>
							                    </td>
							                </tr>
						                    
				                </tbody>
				            </table>
				         </div>
				         <div class="panel-body table_add">
			             	<div  id="goods_poperty_div" <c:if test="${goods.isMultiProperties==0 }"> style="display: none;" </c:if> >
			              			<table class="table table-bordered" id="selPropertyResult">
				                		<tr>
				                				<!-- <td>
				                				<input type="checkbox"  name="property"  id="1" value="重量">重量
				                					<input type="checkbox"  name="property"  id="2" value="功效"  style="margin-left:2%;">功效
				                				</td> -->
				                				<td>
				                					
				                				</td>
				                		</tr>
				                	</table>
						                	
				                	<table class="table table-bordered" id="selPropertyValue">
	                						<!-- <tr propertyId="1" propertyName="重量" >
	                							<th>重量</th>
	                							<td>
	                								<input type="checkbox"  name="propertyVal"  id='111'  propertyId="1" propertyName="重量" value="15g"> 15g
	                								&nbsp;<input type="checkbox"  name="propertyVal" id='222'  propertyId="1" propertyName="重量" value="25g"> 25g
	                								&nbsp;<input type="checkbox"  name="propertyVal" id='333'  propertyId="1" propertyName="重量" value="50g"> 50g
	                							</td>
	                						</tr>
	                						<tr propertyId="2" propertyName="功效">
	                							<th>功效</th>
	                							<td>
	                								<input type="checkbox"  name="propertyVal"  id='444'  propertyId="2" propertyName="功效" value="美白"> 美白
	                								&nbsp;<input type="checkbox"  name="propertyVal"  id='555'  propertyId="2" propertyName="功效" value="补水"> 补水
	                								&nbsp;<input type="checkbox" name="propertyVal"   id='666'  propertyId="2" propertyName="功效"  value=" 防晒"> 防晒
	                							</td>
	                						</tr> -->
	                				</table>
						  	</div> 	
			              </div>
			              <div class="panel-heading" id="rapidCombination_div" <c:if test="${goods.isMultiProperties==0 }"> style="display:none;" </c:if> >
			              			快速生成属性组合   
			              			<button class="btn btn-primary distribution" type="button" id="rapidCombination">快速生成</button>
			              </div>
			              <div class="panel-body table_add"  <c:if test="${goods.isMultiProperties==0 }"> style="display:none;" </c:if>>   
					            <table class="table table-bordered" id="property_assemble">
					            <!-- 		<tr>
					            				<th id="proName1"></th>
					            				<th id="proName2"></th>
					            				<th>SKU</th>
					            				<th>条形码</th>
					            				<th>厂家货号</th>
					            				<th>删除</th>
					            		</tr> -->
					            </table>
				          </div>
				    <div class="panel-heading" style="display: none">产地参数</div>
			              <div class="panel-body table_add" id="product-area-div" style="display: none">   
				            <table class="table half-table">
				                <tbody>
				                <tr>
				                    <th>品牌</th>
				                    <td>
				                    <input type="hidden" name="goodProduceAreaId" id="goodProduceAreaId" value="${goods.goodsProductAreaEntity.id}">
				                       	<div class="input-group">
				                       		<input type="hidden" class="form-control " aria-label="Amount (to the nearest dollar)" name="brandId" value="${goods.goodsProductAreaEntity.brandId }"/>
		                            		<input type="text" class="form-control " aria-label="Amount (to the nearest dollar)" name="brandName" value="${goods.goodsProductAreaEntity.brandName }" readonly="readonly" />
				                            <span class="input-group-btn">
				                                <button class="btn btn-primary distribution" id="checkBrand"  type="button">选择</button> 
				                          	</span>
		                  			   </div>
				                    </td>
				                 </tr>
				                 <tr>
				                    <th>产地</th>
				                    <td class="select-address" style="position: relative;">
				                    		    首先加载：省份
				                    		
				                    		<input type="hidden" id="countryInput" value="${goods.goodsProductAreaEntity.country }">
					                    	<select class="form-control" name="country" id="countryCode">
					                    			<option>请选择</option>
					                    	</select>
				                        	<div id="prov-div" style="position: absolute; top: 10px;left: 116px;width:300px;">
				                        		<input type="hidden" id="provInput" value="${goods.goodsProductAreaEntity.prov }"> 
				                        		<input type="hidden" id="cityInput" value="${goods.goodsProductAreaEntity.city }"> 
												<select class="form-control" name="prov" style="height: 30px;width:106px;">
													<c:forEach items="${cityList }" var="obj">
														<option id="${obj.id}" value="${obj.name}">${obj.name}
														</option>
													</c:forEach>
												</select> <select class="form-control" name="city" style="height: 30px;width:106px;">
													<option>选择市</option>
												</select>
											</div>
				                      
				                    </td>    
				                </tr>
				                <tr>
				                	<th >保质期</th>
				                    <td>
				                       <div >
				                      
				                       			<input type="radio"  name="isQualityAssurance"  value="1"  <c:if test='${goods.goodsProductAreaEntity.isQualityAssurance==1 }'> checked="checked" </c:if>>有
				            					<input type="radio"  name="isQualityAssurance"  value="0"  <c:if test='${goods.goodsProductAreaEntity.isQualityAssurance==0 }'> checked="checked" </c:if>>无
				            			</div>
				                      
				                    </td>
<!-- 				                    		  占空间用 ，  不能删除，影响样式 -->
				                   		 <th></th><td></td>
				                
				                </tr>
				                
				                <tr class="quality_Assurance_days">
				                	
				                    	<th>质保天数</th>
						                    <td>
						                        <div class="form-group">
						                            <input type="text"  class="form-control"   name="qualityAssuranceDays"  placeholder="输入数字类型"  value="${goods.goodsProductAreaEntity.qualityAssuranceDays}"  />
						                        </div>
						                	 </td>
				                
				                </tr>
				               </tbody>
				               </table>
				            </div>
				         
				         
				          <div class="panel-heading" style="display: none">包装参数</div>
			                <div class="panel-body table_add" id="good-package-div" style="display: none">   
				            <table class="table half-table">
				                <tbody>
				                <tr>
				                    <th>包装规格</th>
				                    <td class="form-rowtd">
				                    <input type="hidden" class="form-control form-controlin"   name="goodPackageId" value="${goods.goodsPackageEntity.id }">
				                       	<div class="form-group">
				                       	<!-- value="${goods.goodsProductAreaEntity.qualityAssuranceDays  }"  -->
				                            <input type="radio"  name="specifications"  value="0" <c:if test='${goods.goodsPackageEntity.specifications==0 }'> checked="checked" </c:if>> 	无包装
				            				<input type="radio"  name="specifications"  value="1" <c:if test='${goods.goodsPackageEntity.specifications==1 }'> checked="checked" </c:if>> 	有包装
				                  		</div>
				                    </td>
				                  </tr>
				                   <tr class="package_param">
				                	<th>包装件数</th>
				                    <td class="form-rowtd">
				                        <div class="form-group ">
				                            <input type="text" class="form-control form-controlin"  placeholder="请输入数字" name="number" value="${goods.goodsPackageEntity.number }">件（1包装单位内商品数）
				                        </div>
				                    </td>
				               	 </tr>
				                
				                <tr>
				                	<th>起售量</th>
				                    <td>
				                        <div class="form-group ">
				                            <input type="text" class="form-control form-controlin"  placeholder="" name="saleVolume" value="${goods.goodsPackageEntity.saleVolume }">
				                        </div>
				                    </td>
				                 </tr>
				                 <tr>
				                	<th>销售单位</th>
				                    <td>
				                        <div class="form-group ">
				                        	<input type="hidden" name="saleUnitEnglishName">
				                        	<input type="hidden" name="saleUnitName">
				                        	<input type="hidden" id="saleUnitIdInput" value="${goods.goodsPackageEntity.saleUnitId}">
				                            <select class="form-control form-controlin"  name="saleUnitId">
							        			<option value=" ">请选择</option>
							        		</select>
				                        </div>
				                    </td>
				                </tr>
				                <tr>
				                	<th>包装属性</th>
				                    <td>
				                        <div class="form-group ">
				                        <input type="hidden" id="packagePropertyInput" value="${goods.goodsPackageEntity.property}">
				                             <input type="radio"  name="packageProperty"  value="1" checked="checked">	普通商品
				            				<input type="radio"   name="packageProperty"  value="2">	易碎品
				            				<input type="radio"   name="packageProperty"  value="3">	带包装液体
				            				<input type="radio"   name="packageProperty"  value="4">	裸瓶液体
				                        </div>
				                    </td>
				                </tr>
				               </tbody>
				               </table>
				            </div>
				               
				          <div class="panel-heading" style="display: none">尺寸参数</div>
			              <div class="panel-body table_add" style="display: none">   
				            <table class="table half-table">
				                <tbody>
				                <tr>
				                    <th>尺寸</th>
				                    <td class="form-rowtd">
				                       	<table class="half-table form-rowops">
					                       	<tr>
						                       	<th>
						                       	长
						                       	</th>
						                       	<td>
						                       		<input type="hidden" class="form-control"  placeholder="" name="goodsMeasurementId" value="${goods.goodsMeasurementEntity.id}" >
							                       	<div class="form-group">
							                       			<input type="text" class="form-control"  placeholder="" name="length" value="${goods.goodsMeasurementEntity.length}" >
							                       </div>
						                       	</td>
						                       	<th>
						                       		宽
						                       	</th>
						                       	<td >
							                       	<div class="form-group">
							                       			<input type="text" class="form-control"  placeholder="" name="width" value="${goods.goodsMeasurementEntity.width }">
							                       	</div>
						                       	</td>
						                       	<th>
						                       	高
						                       	</th>
						                       	<td >
							                       	<div class="form-group">
							                       		<input type="text" class="form-control"  placeholder="" name="height" value="${goods.goodsMeasurementEntity.height }">
							                       	</div>
						                       	</td>
						                       	<td class="form-rowtd">
						                       	(mm)
						                       	</td>
					                       	</tr>
				                       	</table>
		                  			   </div>
				                    </td>
				                    <tr>
					                    <th>商品重量</th>
					                    <td >
					                    	<div class="form-group form-left">
						                    	
						                    		 <input type="text" class="form-control form-contdu"  placeholder="G，含包装" name="weight" value="${goods.goodsMeasurementEntity.weight }">
				
					                       </div>
					                    </td> 
				                    </tr>   
				                </tr>
				               </tbody>
				               </table>
				            </div>
				            
				            <div class="panel-heading" style="display: none">供商参数</div>
			               <div class="panel-body table_add" style="display: none">   
				            <table class="table half-table">
				                <tbody>
				                <tr>
				                	<tr>
					                    <th>主供商</th>
					                    <td>
					                    	<input type="hidden" class="form-control"  placeholder="" name="goodSupplierId" value="${goods.goodsSupplierEntity.id}">
					                       	<div class="input-group">
					                       		<input type="hidden" name="supplierId"  value="${goods.goodsSupplierEntity.supplierId}">
			                            		<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="supplierName"  value='${goods.goodsSupplierEntity.supplierName}'  readonly="readonly" />
					                            <span class="input-group-btn">
					                                <button class="btn btn-primary distribution" type="button">选择</button> 
					                          	</span>
			                  			   </div>
					                    </td>
				                    </tr>
				                    <tr>
					                    <th>最小起订量</th>
					                    <td >
					                        <div class="form-group ">
						                    	<input type="text" class="form-control"  placeholder="" name="minBuyNum" value="${goods.goodsSupplierEntity.minBuyNum}">
					                       </div>
					                    </td>    
				                	</tr>
				                <tr>
				                	<th>采购单位</th>
				                    <td>
					                    	<div class="form-group">
					                    		<input type="hidden" name="unitEnglishName">
					                        	<input type="hidden" name="unitName">
					                    		 <input type="text"    name="buyNum" value="${goods.goodsSupplierEntity.buyNum}" class="form-control form-controlinsmall form-controlindis">
					                        	<input type="hidden"    id="unitIdInput" value="${goods.goodsSupplierEntity.unitId}" class="form-control form-controlinsmall form-controlindis">
								                <select name="unitId" class="form-control form-controlinsmall form-controlindis">
											        <option value="">请选择</option>
								                </select>
				                        	</div>
				                    <td colspan="2">
				                    </td>
				                </tr>
				               </tbody>
				               </table>
				            </div>
				            
				            
					         <div class="col-md-12 text-center btn-margin">
			                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
			                    <button class="btn btn-warning" type="button" name="cancelButton">取消</button>
			                </div>
			                
		            </div>
		        </form>
		     </div>
		     
		     <!--  栅格右侧内容展现树 ---张健 -->	
		    <div class="col-md-3">
		    	<div class="panel panel-default">
        			<div class="panel-heading">商品类目</div>
        			<div class="panel-body">
        				<!-- <div class="tree_search">
			        		<input type="text" name="roleName" class="form-control" placeholder="输入角色名称">
			        		<a href="javascript:;"><i class="icon_search"></i></a>
		        		</div> -->
		        		<form  class="form-inline mb-20">
        					<ul id="serviceCategoryTreeDemo" class="ztree"></ul>
        				</form>
			        </div>
        		</div>
		    </div>
		    <!--  栅格右侧内容展现树 ---张健 -->
		    
	 </div>	       
    </div>
    <!-- 品牌弹出层  start-->
   <div class="modal fade in brand-modal-distribution"  id="brand-modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
	    <div class="modal-dialog" style="width: 850px;margin: 30px auto;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	                <h4 class="modal-title">请选择品牌 </h4>
	            </div>
	            <div class="panel panel-default form-search" style="border:none;">
			            <div class="panel-body">
				        	<div class="conditions_team">
				        		<input type="text" name="keywords" placeholder="品牌名称"  class="claBorder-ra"/>
				        		<button type="button" id="brandSearchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
				        	</div>
				        </div>
			            	
				    </div>
	            <div class="modal-body">
	               <div class="brand_table_content cloud_list">
			        	<div id="buttonsId" class="row list-title">
				        	<div class="col-md-4"><h4>品牌列表</h4></div>
				        </div>
			        </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-primary" name="checkbrandSure" id="checkbrandSure">确定</button>
	                <button type="button" class="btn btn-warning" data-dismiss="modal" id="cancelSure" name="cancelSure">取消</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div>
   
    <!-- 品牌弹出层  end-->
<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/select2.min.js"/><!--下拉框搜索  -->
<script type="text/javascript">
	//================获取保存的saleMap 用于显示已经保存的销售属性 选项 ===================
	var _saleMap = eval('('+'${goods.saleMap}'+')');
	console.log(_saleMap);
	var _goodsSaleList = ${goodsSaleJsonStr};
	console.log(_goodsSaleList);
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/actualGoods/js/actual_goods_update.js"/>
