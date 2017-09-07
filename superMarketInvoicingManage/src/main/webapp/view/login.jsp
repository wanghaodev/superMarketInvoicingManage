<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>登录页</title>
</head>
<body class="">
	<div class="main-container" style="margin-top: 100px;background-color: #3074c1;">
		<div class="main-content" >
			<div class="row" >
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container ">
						<div class="center">
							<h2>
								 <i class="icon-leaf green"></i>
								<span class="white">超市货物进销存管理系统</span>
							</h2>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box" class="login-box visible widget-box no-border ">
								<div class="widget-body">
									<div class="widget-main">
										<h3 class="header blue lighter bigger">
											<i class="icon-coffee green"></i>
											系统登录
										</h3>

										<div class="space-6"></div>

										<form action="/superMarketInvoicingManage/invoicing/login" method="post" id="loginForm">
											<fieldset>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="text" name="loginName" class="form-control" placeholder="Username" style="height: 45px;"/>
														<i class="icon-user" style="padding: 7px 3px;"></i>
													</span>
												</label>

												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="password" name="password" class="form-control" placeholder="Password" style="height: 45px;"/>
														<i class="icon-lock" style="padding: 7px 3px;"></i>
													</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<!-- <label class="inline">
														<input type="checkbox" class="ace" />
														<span class="lbl"> 记住密码</span>
													</label> -->

													<button type="button" id="loginCommit" class="width-100 pull-right btn btn-sm btn-primary" style="text-align: center;height: 45px;font-size: 16px;font-weight: 700;">
														<!-- <i class="icon-key"></i> -->
														登&nbsp;&nbsp;&nbsp;&nbsp;录
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>
									</div>
						</div>
					</div>
				</div><!-- /.col -->
		</div><!-- /.row -->
	</div>
</div><!-- /.main-container -->
<script type="text/javascript">
	if("ontouchend" in document) document.write("<script src='<%=request.getContextPath()%>/static/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<!-- inline scripts related to this page -->
<script type="text/javascript">
function show_box(id) {
	 jQuery('.widget-box.visible').removeClass('visible');
	 jQuery('#'+id).addClass('visible');
}

//绑定敲回车事件
//用户名：敲回车触发事件
 $('[name=loginName]').bind('keypress',function(event){
  if(event.keyCode == "13") {
  	//密码获取焦点
  	$("[name=password]").focus();
   }
});

//密码：敲回车触发事件
$('[name=password]').bind('keypress',function(event){
  if(event.keyCode == "13") {
  	//校验表单信息
  	$("#loginCommit").trigger("click");
   }
}); 
//登录校验
$("#loginCommit").click(function(){
	var isOK=true;
	var loginName=$("input[name=loginName]").val();
	var password=$("input[name=password]").val();
	if(null==loginName||loginName==""){
		alert("请输入登录名");
		$("[name=loginName]").focus();
		return false;
	}
	if(null==password||password==""){
		alert("请输入密码");
		$("[name=password]").focus();
		return false;
	}
	if(isOK){
		$("#loginForm").submit();
	}
});
//后台返回提示信息
var info="${info}";
if(null!=info&&info!=""){
	alert(info);
}
</script>
</body>
</html>