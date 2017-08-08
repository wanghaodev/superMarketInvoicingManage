<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户添加页</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">用户管理</a></li>
		<li><a href="####">添加用户</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="user-add-form" >
        	<div class="panel panel-default">
	            <div class="panel-heading">新增用户</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>用户姓名</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="最多可输入20个汉字" name="userName" value="">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>登录账号</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入字母"  name="loginName" value="">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                	<th><span class="required">*</span>登录密码</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入数字，字母组成的8位数" name="password" value="">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>手机号码</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请手机号"  name="phone" value="">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                <th>销售类型</th>
		                     <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="unitType" id="unitType">
					        			<option value="0" selected="selected">关闭</option>
					        			<option value="1">开启</option>
					        		</select>
		                        </div>
		                     </td>
		                     <th></th>
			                 <td>
			                 </td>
		                    </tr>
		                </tbody>
		            </table>
			        <div class="col-md-12 text-center btn-margin">
	                    <button class="btn  btn-info" type="button" name="addSub">
					        <i class="icon-ok bigger-110"></i>           
					                    提交
	                    </button>
	                    <button class="btn" type="button" name="cancelButton">
	                    	<i class="icon-undo bigger-110"></i>  
	                    	取消
	                    </button>
	                </div>
	           	</div>
            </div>
        </form>
	<!-- user-form end -->
</div>
</body>
</html>