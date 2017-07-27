<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/select2.min.css" rel="stylesheet"><!--下拉框搜索  -->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">

<style>
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
<input type="hidden" name="userRelationCategory" value="${userRelationCategory }"/>       
<!-- 栅格 总框架开始 ---张健 -->
        <div class="row">
	        <div class="col-md-9">
		        <form class="add-form" id="actual-goods-add-form" >
		        	<!-- 销售属性组合 -->
		        	<input type="hidden" name="requestGoodsSaleInfo"  value="" />
		        	<div class="panel panel-default">
		        	
			            <div class="panel-heading">新增商品 </div>
			              <div class="panel-body table_add">
				            <table class="table half-table">
				                <tbody>
						                <tr>
						                    <th><span class="required">*</span>商品名称</th>
						                    <td>
						                       	<div class="form-group">
						                            <input type="text" class="form-control"  placeholder="" name="goodsName" value="">
						                  		</div>
						                    </td>
						                    <th><span class="required">*</span>商品类目</th>
						                    <td>
						                        <div class="form-group ">
						                            <input type="hidden" name="goodsCategoryId" value="" />
					                            	<input type="text" disabled="disabled" class="form-control" name="goodsCategoryName" placeholder="请选择右侧商品类目"/>
						                        </div>
						                    </td>
						                </tr>
						                <tr>
						                	<th>商品类型</th>
					                	 	<td> 
				                    		 <select name="selfSupport" class="form-control form-controlinsmall form-controlindis">
												        <option value="1">自营</option>
												        <option value="0">非自营</option>
									         </select>
						                    </td>
						                    <th>条码</th>
						                    <td>
						                        <div class="form-group ">
						                            <input type="text" class="form-control"  placeholder="整数0~18位" name="barcode"  id="barcode">
						                        </div>
						                    </td>
						                     </tr>
						                     <tr> 
			                					<th>销售单位</th> 
								                    <td>
								                        <div class="form-group ">
								                        <input type="hidden" name="saleUnitEnglishName">
								                        <input type="hidden" name="saleUnitName">
								                            <select class="form-control form-controlinsmall form-controlindis"  name="saleUnitId">
											        			<option value=" ">请选择</option>
											        		</select>
								                        </div>
								                    </td>
				                			</tr> 
				                </tbody>
				            </table>
				         </div>
				         <div class="panel-heading">
				         		多销售属性   <input type="checkbox"  name="isMultiProperties"   id="isMultiProperties"  value="1">
				         </div>
				         <div class="panel-body table_add">
			             	<div  id="goods_poperty_div" style="display: none;">
			              			<table class="table table-bordered" id="selPropertyResult">
				                		<tr>
				                			<td style="text-align: right;">
				                			  <button class="btn btn-primary distribution" type="button" id="popSelectPropertiesList">选择属性</button>
				                					<!-- <a href="javascript:void(0)" id="checkpro">选择属性</a> -->
				                			</td>
				                		</tr>
				                		<tr>
				                				 <td>
				                				<!--<input type="checkbox"  name="property"  id="1" value="重量">重量
				                					<input type="checkbox"  name="property"  id="2" value="功效"  style="margin-left:2%;">功效-->
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
			              <div class="panel-heading" id="rapidCombination_div" style="display: none;">
			              			快速生成属性组合   
			              			<button class="btn btn-primary distribution" type="button" id="rapidCombination">快速生成</button>
			              </div>
			              <div class="panel-body table_add">   
					            <table class="table table-bordered cloud_list" id="property_assemble" style="display: none;">
					            <!-- 		<tr>
					            				<th id="proName1"></th>
					            				<th id="proName2"></th>
					            				<th>条形码</th>
					            				<th>厂家货号</th>
					            				<th>删除</th>
					            		</tr> -->
					            </table>
				          </div>  
				        <!--  修改       -->
				        
<!-- 				         <div class="panel-heading">产地参数</div> -->
<!-- 			              <div class="panel-body table_add">    -->
<!-- 				            <table class="table half-table"> -->
<!-- 				                <tbody> -->
<!-- 				                <tr> -->
<!-- 				                    <th>品牌</th> -->
<!-- 				                    <td> -->
<!-- 				                       	<div class="input-group"> -->
<!-- 				                       		<input type="hidden" class="form-control " aria-label="Amount (to the nearest dollar)" name="brandId" value=""/> -->
<!-- 		                            		<input type="text" class="form-control " aria-label="Amount (to the nearest dollar)" name="brandName" value="" readonly="readonly" /> -->
<!-- 				                            <span class="input-group-btn"> -->
<!-- 				                                <button class="btn btn-primary distribution" id="checkBrand"  type="button">选择</button>  -->
<!-- 				                          	</span> -->
<!-- 		                  			   </div> -->
<!-- 				                    </td> -->
<!-- 				                 </tr> -->
<!-- 				                 <tr> -->
<!-- 				                    <th>产地</th> -->
<!-- 				                    <td class="select-address"  style="position: relative;"> -->
<!-- 				                    		    首先加载：省份 -->
<!-- 				                    	 <div id="prov-divs" style="display: inline-block;width:300px;"> -->
<!-- 					                    	<select name="country" id="countryCode" class="form-control" style="border:1px solid #ccc;"> -->
<!-- 					                    			<option>请选择</option> -->
<!-- 					                    	</select> -->
<!-- 					                    </div> -->
					                  
<!-- 				                       		 <div id="prov-div" style="display: inline-block;width:300px;position: absolute;top: 11px;left:116px;"> -->
<!-- 												<select name="prov" style="border:1px solid #ccc;height:29px;border-radius: 4px;width:106px;"> -->
<%-- 													<c:forEach items="${cityList }" var="obj"> --%>
<%-- 														<option id="${obj.id}" value="${obj.name}">${obj.name} --%>
<!-- 														</option> -->
<%-- 													</c:forEach> --%>
<!-- 												</select>  -->
<!-- 												<select name="city" style="border:1px solid #ccc;height: 29px;border-radius: 4px;width:106px;"> -->
<!-- 													<option>选择市</option> -->
<!-- 												</select> -->
<!-- 											</div> -->
				                     
<!-- 				                    </td>     -->
<!-- 				                </tr> -->
<!-- 				                <tr> -->
<!-- 				                	<th >保质期</th> -->
<!-- 				                    <td> -->
<!-- 				                       <div class="form-group"> -->
<!-- 				                            <input type="radio"  name="isQualityAssurance"  value="1" checked="checked">  有 -->
<!-- 				            				<input type="radio"   name="isQualityAssurance"  value="0">  无 -->
<!-- 				            			</div> -->
				                      
<!-- 				                    </td> -->
<!-- 				                    		  占空间用 ，  不能删除，影响样式 -->
<!-- 				                   		 <th></th><td></td> -->
				                
<!-- 				                </tr> -->
				                
<!-- 				                <tr class="quality_assurance_days"> -->
				                	
<!-- 				                    	<th>质保天数</th> -->
<!-- 						                    <td > -->
<!-- 						                        <div class="form-group"> -->
<!-- 						                            <input type="text"  class="form-control"   name="qualityAssuranceDays"  placeholder="输入数字类型"  value=""  /> -->
<!-- 						                        </div> -->
<!-- 						                	 </td> -->
				                
<!-- 				                </tr> -->
<!-- 				               </tbody> -->
<!-- 				               </table> -->
<!-- 				            </div> -->
				         
				         
<!-- 				          <div class="panel-heading">包装参数</div> -->
<!-- 			                <div class="panel-body table_add">    -->
<!-- 				            <table class="table half-table"> -->
<!-- 				                <tbody> -->
<!-- 				                <tr> -->
<!-- 				                    <th>包装规格</th> -->
<!-- 				                    <td class="form-rowtd"> -->
<!-- 				                       	<div class="form-group"> -->
<!-- 				            				<input type="radio"   name="specifications"  value="1" checked="checked">有包装 -->
<!-- 				                  			<input type="radio"  name="specifications"  value="0">无包装 -->
<!-- 				                  		</div> -->
<!-- 				                    </td> -->
<!-- 				                  </tr> -->
<!-- 				                  <tr class="package_param"> -->
<!-- 					                	<th>包装件数</th> -->
<!-- 					                    <td class="form-rowtd"> -->
<!-- 					                        <div class="form-group "> -->
<!-- 					                            <input type="text" class="form-control form-controlin"  placeholder="请输入数字" name="number" value="">件（1包装单位内商品数） -->
<!-- 					                        </div> -->
<!-- 					                    </td> -->
<!-- 				               	 </tr> -->
				                
<!-- 				                <tr> -->
<!-- 				                	<th>起售量</th> -->
<!-- 				                    <td> -->
<!-- 				                        <div class="form-group "> -->
<!-- 				                            <input type="text" class="form-control form-controlin"  placeholder="" name="saleVolume" value=""> -->
<!-- 				                        </div> -->
<!-- 				                    </td> -->
<!-- 				                 </tr> -->
<!-- 				                 <tr> -->
<!-- 				                	<th>销售单位</th> -->
<!-- 				                    <td> -->
<!-- 				                        <div class="form-group "> -->
<!-- 				                        <input type="hidden" name="saleUnitEnglishName"> -->
<!-- 				                        <input type="hidden" name="saleUnitName"> -->
<!-- 				                            <select class="form-control form-controlin"  name="saleUnitId"> -->
<!-- 							        			<option value=" ">请选择</option> -->
<!-- 							        		</select> -->
<!-- 				                        </div> -->
<!-- 				                    </td> -->
<!-- 				                </tr> -->
<!-- 				                <tr> -->
<!-- 				                	<th>包装属性</th> -->
<!-- 				                    <td> -->
<!-- 				                        <div class="form-group "> -->
<!-- 				                             <input type="radio"  name="packageProperty"  value="1" checked="checked">	普通商品 -->
<!-- 				            				<input type="radio"   name="packageProperty"  value="2">	易碎品 -->
<!-- 				            				<input type="radio"   name="packageProperty"  value="3">	带包装液体 -->
<!-- 				            				<input type="radio"   name="packageProperty"  value="4">	裸瓶液体 -->
<!-- 				                        </div> -->
<!-- 				                    </td> -->
<!-- 				                </tr> -->
<!-- 				               </tbody> -->
<!-- 				               </table> -->
<!-- 				            </div> -->
				               
<!-- 				          <div class="panel-heading">尺寸参数</div> -->
<!-- 			              <div class="panel-body table_add">    -->
<!-- 				            <table class="table half-table"> -->
<!-- 				                <tbody> -->
<!-- 				                <tr> -->
<!-- 				                    <th>尺寸</th> -->
<!-- 				                    <td class="form-rowtd"> -->
<!-- 				                       	<table class="half-table form-rowops"> -->
<!-- 					                       	<tr> -->
<!-- 						                       	<th> -->
<!-- 						                       	长 -->
<!-- 						                       	</th> -->
<!-- 						                       	<td> -->
<!-- 							                       	<div class="form-group"> -->
<!-- 							                       			<input type="text" class="form-control"  placeholder="" name="length" value="" > -->
<!-- 							                       </div> -->
<!-- 						                       	</td> -->
<!-- 						                       	<th> -->
<!-- 						                       		宽 -->
<!-- 						                       	</th> -->
<!-- 						                       	<td > -->
<!-- 							                       	<div class="form-group"> -->
<!-- 							                       			<input type="text" class="form-control"  placeholder="" name="width" value=""> -->
<!-- 							                       	</div> -->
<!-- 						                       	</td> -->
<!-- 						                       	<th> -->
<!-- 						                       	高 -->
<!-- 						                       	</th> -->
<!-- 						                       	<td > -->
<!-- 							                       	<div class="form-group"> -->
<!-- 							                       		<input type="text" class="form-control"  placeholder="" name="height" value=""> -->
<!-- 							                       	</div> -->
<!-- 						                       	</td> -->
<!-- 						                       	<td class="form-rowtd"> -->
<!-- 						                       	(mm) -->
<!-- 						                       	</td> -->
<!-- 					                       	</tr> -->
<!-- 				                       	</table> -->
<!-- 		                  			   </div> -->
<!-- 				                    </td> -->
<!-- 				                    <tr> -->
<!-- 					                    <th>商品重量</th> -->
<!-- 					                    <td > -->
<!-- 					                    	<div class="form-group form-left"> -->
						                    	
<!-- 						                    		 <input type="text" class="form-control form-contdu"  placeholder="G，含包装" name="weight" value=""> -->
				
<!-- 					                       </div> -->
<!-- 					                    </td>  -->
<!-- 				                    </tr>    -->
<!-- 				                </tr> -->
<!-- 				               </tbody> -->
<!-- 				               </table> -->
<!-- 				            </div> -->
				            
<!-- 				            <div class="panel-heading">供商参数</div> -->
<!-- 			               <div class="panel-body table_add">    -->
<!-- 				            <table class="table half-table"> -->
<!-- 				                <tbody> -->
<!-- 				                <tr> -->
<!-- 				                	<tr> -->
<!-- 					                    <th>主供商</th> -->
<!-- 					                    <td> -->
<!-- 					                       	<div class="input-group"> -->
<!-- 					                       		<input type="hidden" name="supplierId"  value="1"> -->
<!-- 			                            		<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="supplierName"  readonly="readonly" /> -->
<!-- 					                            <span class="input-group-btn"> -->
<!-- 					                                <button class="btn btn-primary distribution" type="button">选择</button>  -->
<!-- 					                          	</span> -->
<!-- 			                  			   </div> -->
<!-- 					                    </td> -->
<!-- 				                    </tr> -->
<!-- 				                    <tr> -->
<!-- 					                    <th>最小起订量</th> -->
<!-- 					                    <td > -->
<!-- 					                        <div class="form-group "> -->
						                    	
<!-- 						                    		 <input type="text" class="form-control"  placeholder="" name="minBuyNum" value=""> -->
					                        	
<!-- 					                       </div> -->
<!-- 					                    </td>     -->
<!-- 				                	</tr> -->
<!-- 				                <tr> -->
<!-- 				                	<th>采购单位</th> -->
<!-- 				                    <td> -->
<!-- 					                    	<div class="form-group"> -->
<!-- 						                    	<input type="hidden" name="unitEnglishName"> -->
<!-- 					                        	<input type="hidden" name="unitName"> -->
<!-- 					                    		 <input type="text"   placeholder="请输入数字" name="buyNum" value="" class="form-control form-controlinsmall form-controlindis"> -->
<!-- 					                        	<select name="unitId" class="form-control form-controlinsmall form-controlindis"> -->
<!-- 											        			<option value="">请选择</option> -->
<!-- 								                </select> -->
<!-- 				                        	</div> -->
<!-- 				                    </td> -->
<!-- 				                    <td colspan="2"> -->
<!-- 				                    </td> -->
<!-- 				                </tr> -->
<!-- 				               </tbody> -->
<!-- 				               </table> -->
<!-- 				            </div> -->
				            
				            
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
			        		<input type="text" name="roleName" class="form-control" placeholder="">
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
    <!-- 属性列表弹出框  start-->
    <div class="modal fade in modal-distribution"  id="property-modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
	    <div class="modal-dialog" style="width:850px;margin: 30px auto;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	                <h4 class="modal-title">请选择属性</h4>
	            </div>
	            <div class="panel panel-default form-search">
			            <div class="panel-body">
				        	<div class="conditions_team">
				        		<input type="text" name="propertyName" placeholder="属性名称" />
				        		<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
				        	</div>
				        </div>
			            	
				    </div>
	            <div class="modal-body">
	               <div class="ticket_table_content cloud_list">
			        	<div id="buttonsId" class="row list-title">
				        	<div class="col-md-4"><h4>商品类目属性列表</h4></div>
				        </div>
			        </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-primary" name="checkPropertySure" id="checkOrgSure">确定</button>
	                <button type="button" class="btn btn-warning" data-dismiss="modal" id="cancelSure" name="cancelSure">取消</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div>
   <!-- 属性列表弹出框  end-->
   
   <!-- 品牌弹出层  start-->
   <div class="modal fade in brand-modal-distribution"  id="brand-modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
	    <div class="modal-dialog" style="width: 850px;margin: 30px auto;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	                <h4 class="modal-title">请选择品牌 </h4>
	            </div>
	            <div class="panel-default">
			            <div class="panel-body" style="border:none;">
				        	<div class="conditions_team">
				        		<input type="text" name="keywords" placeholder="品牌名称"  class="claBorder-ra"/>
				        		<button type="button" id="brandSearchBtn" class="btn btn-primary clsmaring-letf"><i class="icon_search"></i>搜索</button>
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
<script type="text/javascript" >
<%--js页面公共变量声明，此处js只能在actual_goods_add.js以前--%>
	var _userRelationCategory = $('[name=userRelationCategory]').val();
	if(_userRelationCategory){
		_userRelationCategory = JSON.parse(_userRelationCategory);
	}else {
		_userRelationCategor=[];
	}
</script>   
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/actualGoods/js/actual_goods_add.js"/>

			        
