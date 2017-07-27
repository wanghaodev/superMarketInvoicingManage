<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">服务类目属性管理</li>
        </ol>
        <!-- 栅格 总框架开始 ---张健 -->
        <div class="row">
	        <div class="col-md-9">
	        
	        	<!-- ==============================之前原有的  start===========================-->
		        <form class="add-form" id="tree-property-add-form">
					<input type="hidden" name="propertyValueJson" value="" />
					<div class="panel panel-default">
			            <div class="panel-heading">创建商品类目属性</div>
			            <div class="panel-body table_add">
				            <table class="table half-table">
				                <tbody>
					                <tr>
					                    <th><span class="required">*</span>属性名称</th>
					                    <td>
					                        <div class="form-group ">
					                            <input type="text" class="form-control"  placeholder="" name="propertyName" />
					                        </div>
					                    </td>
					                    <th><span class="required">*</span>所属分类</th>
					                    <td>
					                        <div class="form-group ">
					                        	<input type="hidden" name="categoryId" value="" />
					                            <input type="text" disabled="disabled" class="form-control" name="categoryName" placeholder="请选择右侧商品类目"/>
					                        </div>
					                    </td>
					                </tr>
					                <tr>
<!-- 					                	<th><span class="required">*</span>排序序号</th> -->
<!-- 					                    <td> -->
<!-- 					                        <div class="form-group "> -->
<!-- 					                            <input type="text" class="form-control"  name="orderNumber" value="" /> -->
<!-- 					                        </div> -->
<!-- 					                    </td> -->
					                    <th><span class="required">*</span>属性类型</th>
					                    <td >
					                        <div class="form-group">
					                            <select class="form-control" name="propertyType">
					                            	<option value="1" selected="selected">销售属性</option>
					                            	<option value="2">辅助属性</option>
					                            </select>
					                        </div>
					                        <div class="form-group">
					                        </div>
					                    </td>
					                    
					                </tr>
				                </tbody>
				            </table>
			        	</div>
			        	
			        	<div class="panel-heading">
			        		属性值维护<input type="button" class="btn btn-primary" name="addPropertyValue" value="新增" style="margin-left:4%;" />
			        	</div>
		            	<div class="panel-body table_add">
		            		
		            		<table class="table table-bordered">
				                <tbody id="propertyValueTable">
					                <tr>
					                    <th>属性值</th>
					                    <th>操作</th>
					                </tr>
					             </tbody>
					         </table>     
			            
				            <div class="col-md-12 text-center btn-margin">
			                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
			                    <button class="btn btn-warning" type="button" name="cancelButton">取消</button>
			                </div>
		                
		                
		            	</div>
			            	
		                
		                	
		            </div>
		        </form>
		        <!-- ==============================之前原有的  end ===========================-->
		        
		        
		        
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
    
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/property/tree/goods_tree_property_add.js"></script>    
