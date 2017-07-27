<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!--上传文件-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/webuploader/style.css">
<!--富文本-->
<link href="<%=request.getContextPath() %>/static/js/summernote/summernote.css" rel="stylesheet">
<!--日历-->
<link href="<%=request.getContextPath() %>/static/css/bootstrap-datetimepicker.css" rel="stylesheet">
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">
   <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">电商数据管理</li>
        </ol>
        <form class="add-form" id="eshop-info-update-from" >
        	<!-- 图片相对路径 -->
        	<input type="hidden" name="oppositePath" id="oppositePath" value="${goodsInfo.oppositePath}" />
        	<!-- 图片绝对路径 -->
        	<input type="hidden" name="absolutePath" id="absolutePath" value="${goodsInfo.absolutePath}" />
        	<!-- 商品描述（提交时使用） -->
        	<input type="hidden" name="goodsDetailStr" id="goodsDetailStr" />
        	<!-- 销售属性和辅助属性结果集（提交时使用） -->
        	<input type="hidden" name="goodsInfoPropertys" id="goodsInfoPropertys" />
        	<!-- 辅助属性结果集 -->
        	<input type="hidden" name="assistantPropertyStr" id="assistantPropertyStr" value='${goodsInfo.assistantPropertyStr}'/>
        	<%--电商主图片地址集合，逗号分隔 --%>
        	<input type="hidden" name="goodsInfoImgs" id="goodsInfoImgs" value='${goodsInfoImgs}'/>
        	<input type="hidden" name="goodsId" value="${goods.id }" />
        	<input type="hidden" name="id" value="${goodsInfo.id }" />
        	<input type="hidden" name="goodsCategoryId" value="${goods.goodsCategoryId }" />
        	<div class="panel panel-default">
	            <div class="panel-heading">电商数据管理 </div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                    <th>所属分类:</th>
		                    <td>
		                            ${goodsCategoryAllName }
		                    </td>
		                	<th>商品名称:</th>
		                    <td>
		                            ${goods.goodsName }
		                    </td>
		                </tr>
		                <tr>
		                	<th>SPU:</th>
		                    <td>
		                        <div class="form-group ">
		                            ${goods.goodsSpu }
		                        </div>
		                    </td>
		                     </tr>
		                </tbody>
		            </table>
		            </div>
						<div class="panel-heading">辅助属性 </div>
	            <div class="panel-body table_add">
	            <table class="table table-bordered" id="assistantPropertyTable">
	            	<tbody>
	               		<tr>
	               			<td style="text-align: right;" colspan="2">
	               			  <button class="btn btn-primary distribution" type="button" id="popSelectPropertiesList">选择辅助属性</button>
	               			</td>
	               		</tr>
					</tbody>
                </table>
	            </div>
	            <div class="panel-heading">电商信息 </div>
	            <div class="panel-body table_add">
	            <table class="table table-bordered half-table">
	            <tbody>
	            <tr>
	            			<th style="text-align: left;">商品详情</th>
	            </tr>
	            	<tr>
		                    <td >
		                        <div id="summernote" class="click2edit">${goodsInfo.goodsDetailStr}</div>
		                    </td>
		               </tr>
		               <tr>
	            			<th style="text-align: left;">商品主图</th>
	            		</tr>
		    		<tr  class="uploadPictures">
                    	<td>
		                        <div id="mainTypePic"></div>
								<div class="editVal">
				                	<p>支持jpg、jpeg、png、gif格式</p>
					                <div id="mainUploader" class="uploader">
						                  <div class="queueList">
						                      <div id="mainDndArea" class="placeholder">
						                          <div id="mainFilePicker" class="fileAdd"></div>
						                          <p>单次最多可选30张</p>
						                      </div>
						                  </div>
						                  <div class="statusBar"  style="display:none;">
						                      <div class="progress"  style="display:none;">
						                          <span class="text">0%</span>
						                          <span class="percentage"></span>
						                      </div>
						                      <div class="info"></div>
						                      <div class="btns">
						                          <div id="mainFilePicker2" class="continueAdd"></div><div class="uploadBtn">开始上传</div>
						                      </div>
						                  </div>
					                </div>
				              	</div>                        
                    </td>
                </tr>
                </tbody>
                </table>
	            </div>
	            
	           <div class="panel-heading" id="eshopSearchMainProperty">
	            		请选择商品搜索主属性 ： 
<!-- 	            		<input type="checkbox"  name="1" value="1" checked="checked"  class="form-left-input"> 属性1 -->
<!-- 	            		&nbsp;<input type="checkbox"  name="1" value="1" checked="checked"  class="form-left-input"> 属性2 -->
	            </div>
	            <div class="panel-body table_add">
           		  <table class="table table-bordered"  id="goodsSaleImgTable">
		            <tbody>
			            <tr>
			            			<th style="text-align: left;" colspan="2">销售属性</th>
			            </tr>
			            <c:if test="${goods.goodsSaleList!=null && fn:length(goods.goodsSaleList)>0}">
			            <%--  =======================循环销售属性   start                                   --%>
			            	<c:forEach var="goodsSale" items="${goods.goodsSaleList}" varStatus="status">
		                    	<tr  class="uploadPictures" goodssaleId='${goodsSale.id }'>
		                    			<th id="goodsSaleTh${status.index}" style="padding-top:70px">
		                    			</th>
					                    <td>
					                        <div id="typePic${status.index}"></div>
											<div class="editVal">
							                	<p>支持jpg、jpeg、png、gif格式</p>
								                <div id="uploader${status.index}" class="uploader">
									                  <div class="queueList">
									                      <div id="dndArea${status.index}" class="placeholder">
									                          <div id="filePicker${status.index}" class="fileAdd"></div>
									                          <p>单次最多可选30张</p>
									                      </div>
									                  </div>
									                  <div class="statusBar"  style="display:none;">
									                      <div class="progress"  style="display:none;">
									                          <span class="text">0%</span>
									                          <span class="percentage"></span>
									                      </div>
									                      <div class="info"></div>
									                      <div class="btns">
									                          <div id="filePicker${status.index}" class="continueAdd"></div><div class="uploadBtn">开始上传</div>
									                      </div>
									                  </div>
								                </div>
							              	</div>                        
					                    </td>
							</tr>
							</c:forEach>
			            <%--  =======================循环销售属性  end                                         --%>
			            </c:if>
					 </tbody>
					</table>	            
			        <div class="col-md-12 text-center btn-margin">
	                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
	                    <button class="btn btn-warning" type="button" name="cancelButton">取消</button>
	                </div>
	                 </div>		
            </div>
        </form>
    </div>

    <!-- 属性列表弹出框  start-->
    <div class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
	    <div class="modal-dialog" style="width: 850px;margin: 30px auto;">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	                <h4 class="modal-title">请选择属性</h4>
	            </div>
	            <div class="panel panel-default form-search" style="border:none;">
			            <div class="panel-body">
				        	<div class="conditions_team">
				        		<input type="text" name="propertyName" placeholder="辅助属性名称" class="claBorder-ra"/>
				        		<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
				        	</div>
				        </div>
			            	
				    </div>
	            <div class="modal-body">
	               <div class="ticket_table_content cloud_list">
			        	<div id="buttonsId" class="row list-title">
				        	<div class="col-md-4"><h4>商品类目辅助属性列表</h4></div>
				        </div>
			        </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-primary" name="checkPropertySure">确定</button>
	                <button type="button" class="btn btn-warning" data-dismiss="modal" id="cancelSure" name="cancelSure">取消</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div>
   <!-- 属性列表弹出框  start--> 
<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>
<!--上传-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/webuploader/webuploader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/webuploader/upload.js"></script>
 <!--富文本-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/summernote/summernote.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/summernote/summernote-zh-CN.js"></script>
<!--summernote异步上传-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/summernote/ajax_upload.js"></script>
<script type="text/javascript">
<%--辅助属性结果集字符串用于页面初始化使用--%>
var _assistantPropertyMap = ${goodsInfo.assistantPropertyStr};
console.log(_assistantPropertyMap);
var _assistantGoodsValueList = ${assistantGoodsValueList};
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/actualGoods/js/eshop_info_update.js"></script>
<%-- 循环初始化图片上传并设置属性名称属性值 start--%>
<c:if test="${goods.goodsSaleList!=null && fn:length(goods.goodsSaleList)>0}">
	<script type="text/javascript">
  	<c:forEach var="goodsSale" items="${goods.goodsSaleList}" varStatus="status">
  	$(function(){
		 callUploader({
				fileNum:1 
				, uploaderID: "#uploader${status.index}"
				, filePicker:"#filePicker${status.index}"
				, dndArea: "#dndArea${status.index}"
				, continueAdd:"#filePicker2${status.index}"/*继续添加按钮*/
				, kideAddress: "#typePic${status.index}"
				, mark:"pic${status.index}"
				, hiddenArry: ['${goodsSale.imgUrl}']
			});
		 var _goodsSaleJSON = ${goodsSale.salePropertyList}
		 $('<div class="required-font" style="padding-top:10px;"><span>'+_goodsSaleJSON.propertyName1+' : </span><span>'+_goodsSaleJSON.propertyValueName1+'</span></div>').appendTo( $('#goodsSaleTh${status.index}'));
		 if(_goodsSaleJSON.propertyName2){
			 $('<div class="required-font" style="padding-top:10px;"><span>'+_goodsSaleJSON.propertyName2+' : </span><span>'+_goodsSaleJSON.propertyValueName2+'</span></div>').appendTo( $('#goodsSaleTh${status.index}'));
		 }
		 
  	});
	</c:forEach>
	</script>
</c:if>
<%-- 循环初始化图片上传并设置属性名称属性值 end--%>
<%-- 组装商品搜索主属性 --%>
<script type="text/javascript" >
$(function(){
	var saleMap = ${goods.saleMap};
	var goodsMainPropertyId = '${goodsInfo.goodsMainPropertyId}';
	$.each(saleMap.salePropertys,function(i,property){
		console.log(property);
		if(goodsMainPropertyId == property.propertyId){
			$('<input type="radio"  name="goodsMainPropertyId" value="'+property.propertyId+'"  class="form-left-input"  checked="checked"/>').appendTo($('#eshopSearchMainProperty'));
		}else {
			$('<input type="radio"  name="goodsMainPropertyId" value="'+property.propertyId+'"  class="form-left-input" />').appendTo($('#eshopSearchMainProperty'));
			
		}
		$('<span>'+property.propertyName+'</span>').appendTo($('#eshopSearchMainProperty'));
	});
	
});

</script>