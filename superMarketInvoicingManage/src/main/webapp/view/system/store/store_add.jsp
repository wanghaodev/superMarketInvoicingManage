<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>门店添加页</title>
<!--日历--> 
<link href="<%=request.getContextPath() %>/static/css/bootstrap-datetimepicker.css" rel="stylesheet">

<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">

<style type="text/css">
		/**数据框后面的button按钮**/
	.input-btn{
		height: 34.2px;
	}
</style>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">门店管理</a></li>
		<li><a href="####">添加门店</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="authority-add-form" >
        	<div class="panel panel-default">
	            <div class="panel-heading">新增门店</div>
	            <div class="panel-body table_add">
	            <table class="table half-table">
	                <tbody>
	                <tr>
	                    <th><span class="required">*</span>管理机构：</th>
	                    <td>
	                    	<div class="input-group">
	                            <input type="text" class="form-control " aria-label="Amount (to the nearest dollar)" name="managerOrg" value="${org.orgName }" readonly="readonly" />
	                            <input type="hidden" name="orgId" value="${org.id }"/>
	                            <span class="input-group-btn">
	                                <button class="btn btn-primary distribution input-btn" name="orgCheck" type="button">选择</button> 
	                            </span>
	                  		</div>
	                    </td>
	                <tr>
	                    <th><span class="required">*</span>门店名称：</th>
	                    <td>
	                        <div class="form-group ">
	                        	<input type="text" class="form-control"  placeholder="最多可输入50个汉字" name="storeName" value="">
	                        </div>
	                    </td>
	                    <th><span class="required">*</span>门店简称：</th>
	                    <td>
	                    	<div class="form-group ">
	                            <input type="text" class="form-control"  placeholder="最多可输入25个汉字" name="storeAbbreviation" value="">
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th><span class="required">*</span>门店类型：</th>
	                    <td> 
	                    	<div class="form-group ">
		                    	<select class="form-control" name="type">
			                    	<option value="1">门店</option>
				                    <option value="2">网店</option>
				                    <option value="3">DC</option>
				                </select>
				            </div>
	                    </td>
	                    <th><span class="required">*</span>业态类型：</th>
	                    <td> 
	                    	<div class="form-group ">
		                    	<select class="form-control" name="formatType">
			                    	<option value="1">便利店</option>
			                    	<option value="4">大卖场</option>
			                    	<option value="6">餐饮店</option>
				                </select>
			                </div>
	                    </td>
	                    <!-- <th><span class="required">*</span>用户名(默认密码123456)：</th>
	                    <td>
	                    	<div class="form-group ">
	                    		<input type="text" class="form-control"  placeholder="英文或与数字组合，最多可输入25个字符" name="userName" value="">
	                    		<input type="hidden" name="initPwd" value="123456">
	                    	</div>
	                    </td> -->
	                </tr>
	                
	                <tr>
	                    <th>联系人：</th>
	                    <td>
	                        <div class="form-group ">
	                            <input type="text" class="form-control"  placeholder="最多可输入25个汉字" name="contactName" value="">
	                        </div>
	                    </td>
	                    <th>联系电话：</th>
	                    <td>
	                        <div class="form-group ">
	                            <input type="text" class="form-control"  placeholder="输入正确手机号" name="contactPhone" value="">
	                        </div>
	                    </td>
	                    <th></th>
	                    <td>
	                    </td>
	                </tr>
	                
	                <tr>
	                    <th><span class="required">*</span>地址：</th>
	                    <td class="select-address">
	                    	<div class="form-group ">
		                    	<!-- 首先加载：省份 -->
		                        <select class="form-control" name="province">
		                            <c:forEach items="${proList}" var="obj">
		                    			<option id="${obj.id}" value="${obj.name}">${obj.name} </option>
		                    		</c:forEach>
		                        </select>
		                        <select class="form-control" name="city">
		                            <option value="">选择市</option>
		                        </select>
		                        <select class="form-control" name="district">
		                            <option value="">选择区</option>
		                        </select>
	                        </div>
	                    </td>
	                    <th>详细地址：</th>
	                    <td>
	                        <div class="form-group ">
	                            <input type="text" class="form-control"  placeholder="详细地址" name="address" value="">
	                        </div>
	                    </td>
	                </tr>
	                
	                <tr>
	                    <th>营业时间：</th>
	                    <td>
	                        
			                <div style="display: inline-block;width: 45%;" class="input-append date form_datetime" id="datetimepicker1" data-date="" data-date-format="dd-mm-yyyy">
				                <input size="16" type="text" value="${tradeTime }"  class="form-control" name="startTime" id="startDate">
				                <span class="add-on "><i class="icon-th glyphicon glyphicon-th-large"></i></span>
			                </div>
			            	<label  style="min-width:0px;"> 至  </label>
			            	<div style="display: inline-block;width: 45%;" class="input-append date form_datetime" id="datetimepicker1" data-date="" data-date-format="dd-mm-yyyy">
				                <input size="16" type="text" value="${tradeTime }"  class="form-control" name="endTime" id="endDate">
				                <span class="add-on "><i class="icon-th glyphicon glyphicon-th-large"></i></span>
			                </div>
	                        
	                    </td>
	                    <th>备注：</th>
	                    <td>
	                        <textarea class="form-control" placeholder="最多可输入100个汉字" name="remark"></textarea>
	                    </td>
	                </tr>
	                
	                </tbody>
	            </table>
           		<div class=" text-center btn-margin">
                    <button class="btn btn-primary" type="button" name="addSub">提交</button>
                    <button class="btn btn-warning" type="button" name="cancelButton" >取消</button>
                </div>
            </div>
            </div>
        </form>
	<!-- user-form end -->
</div>
<!-- 弹出：选择框  start -->
	<div id="orgTreeDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
	                <h4 class="modal-title">请选择机构</h4>
	            </div>
	            <div class="modal-body">
	                <form  class="form-inline mb-20" >
	                	<!-- 显示：机构树  start -->
	                	<ul id="orgTreeDemo" class="ztree"></ul>
	                	<!-- 显示：机构树  end -->
	                </form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-primary" name="checkOrgSure" id="checkOrgSure">确定</button>
	                <input type="button" class="btn btn-warning" data-dismiss="modal" id="cancelSure" name="cancelSure" value="取消"/>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div>
	<!-- 弹出：选择框  start -->

<script type="text/javascript">
	$(document).ready(function(){
		//加载父门店
		loadOrgTree();
	});
	$("#addBtn").click(function (){
	     $.ajax({
 			type : "post",
 			url : _path+"/invoicing/system/authority/add?__"+(new Date()).getTime(),
 			 data:$('#authority-add-form').serialize(),// 你的formid
              async:false,
 			 	success : function(data) {
 				if(data.code==1){
 					alert("门店保存成功！");
 					var url=_path+"/invoicing/system/authority/list";
 					$.get(url,function(data){
 						$("#mian_div").html(data);
 					});
 				}else{
 					alert("门店保存失败");
 				}
 			}
         });
	});
	
	//返回列表页
	$("#cancelBtn").click(function (){
		var url=_path+"/invoicing/system/store/page/list";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});
	});
	
	//加载机构tree
	function loadOrgTree(){
		$.ajax({
			type : "post",
			url : _path+"/invoicing/system/org/tree",
			data : '',
			success : function(data) {
				if(data!=null){
					$.each(data,function (index,obj){
						console.log(obj.orgName);
					});
				}
				
			}
		 });
	}
</script>
<!--日历控件-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.fr.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.zh-CN.js"></script>

<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/view/system/store/js/storeAdd.js"></script>
</body>
</html>