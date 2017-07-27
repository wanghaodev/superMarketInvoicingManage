<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>业务类目编辑</title>
</head>
<body>
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="####">零售平台</a></li>
            <li class="active">业务类目配置</li>
        </ol>
        
        <!-- 列表查询条件控件div start -->
        <div class="panel panel-default form-search">
            <div class="panel-body">
	        	<div class="conditions_team">
	        		<label>应用ID：</label>
	        		<input type="text" id="appId" name="appId" class="form-control" placeholder="输入应用id">
	        	</div>
	        	<div class="conditions_team">
	        		<label>应用名称：</label>
	        		<input type="text" id="appName" name="appName" class="form-control" placeholder="输入应用名称">
	        	</div>
	        </div>
	        <div class="panel-footer">
            	<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button>
           	</div>
	    </div>
	    <!-- 列表查询条件控件div  end -->
        <!-- 列表页 start -->
        <div id="appListDiv" class="ticket_table_content cloud_list" style="overflow: hidden;">
        	
   		</div>

</body>
</html>

<!--  第一步 选择类目div窗体 start -->
<div class="modal fade in modal-distribution" id="categoryTreeDiv"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                	<span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title">请选择类目</h4>
            </div>
            <div class="modal-body" style="height:200px;overflow:auto">
                <form  class="form-inline mb-20" >
                <ul id="categoryTreeDemo" class="ztree">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" name="categoryTreeSure" id="categoryTreeSure">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" id="cancelSure" name="cancelSure">取消</button>
            </div>
        </div>
    </div>
</div>
<!--  第一步 选择类目div窗体 end -->

<!-- 列表操作相关js -->
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/category/appconf/js/appCategoryList.js"/>