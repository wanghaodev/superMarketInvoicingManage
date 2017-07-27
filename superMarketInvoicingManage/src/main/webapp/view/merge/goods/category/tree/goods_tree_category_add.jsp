<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">商品类目管理</li>
        </ol>
        <!-- 栅格 总框架开始 ---张健 -->
        <div class="row">
	        <div class="col-md-9">
	        
	        	<!-- ==============================之前原有的  start===========================-->
		        <form class="add-form" id="tree-category-add-form">
					<input type="hidden" name="roleIds" value="" />
					<div class="panel panel-default">
			            <div class="panel-heading">创建商品类目</div>
			            <div class="panel-body table_add">
				            <table class="table half-table">
				                <tbody>
					                <tr>
					                    <th><span class="required" style="display:none">*</span>父类目</th>
					                    <td>
					                        <div class="form-group ">
					                        	<input type="hidden" name="parentId" value="0" />
					                            <input type="text" disabled="disabled" class="form-control" name="parentName" placeholder="请选择右侧商品类目"/>
					                        </div>
					                    </td>
					                    <th><span class="required" >*</span>类目名称</th>
					                    <td>
					                        <div class="form-group ">
					                            <input type="text" class="form-control" name="categoryName" />
					                        </div>
					                    </td>
					                </tr>
					                <tr>
					                	<th><span class="required">*</span>排序序号</th>
					                    <td>
					                        <div class="form-group ">
					                            <input type="text" class="form-control" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  name="orderNumber" value="" />
					                        </div>
					                    </td>
					                    <th><span class="required">*</span>状态</th>
					                    <td>
					                        <div class="form-group ">
					                            <select name="status">
					                            	<option value="0">停用</option>
					                            	<option value="1" selected="selected">启用</option>
					                            </select>
					                        </div>
					                    </td>
					                </tr>
					                <tr>
					                	<th>进项税</th>
					                    <td>
					                        <div class="form-group ">
					                            <input type="text" class="form-control"  name="inputTax" />
					                        </div>
					                    </td>
					                    <th>销项税</th>
					                    <td>
					                        <div class="form-group ">
					                            <input type="text" class="form-control"  name="outputTax" />
					                        </div>
					                    </td>
					                </tr>
					                <tr>
					                	<th>消费税</th>
					                    <td colspan="3">
					                        <div class="form-group ">
					                            <input type="text" class="form-control"  name="consumeTax" />
					                        </div>
					                    </td>
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
    
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/category/tree/goods_tree_category_add.js"></script>    
