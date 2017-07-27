<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <title>商户服务平台</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/style.css" rel="stylesheet">
    	<style type="text/css">
    	
    			.login-container{
    				min-width: 100% !important;
    			}
    		/* 	.loginTeam{
    				position: relative;
    			} */
    			.span_errow{
    				color:#ff1515;
    				font-size: 12px;
    				position: absolute;
    				left: 45px;
   					top: 240px;
    			}
    			.icon_sign img{
    				    height: 14px;
					    width: 14px;
					    display: inline-block;
					    position: relative;
					    top: -1px;
    			}
    			
    	</style>
</head>
<body class="login-container">
	<div class="verify-prompt">用户名/密码不能为空</div>
	<div class="login_head">
	    <img src="<%=request.getContextPath() %>/static/image/login_color_logo.png" alt="国安生活宝系统后台" height="39" width="142">
	</div>
	<div class="login_body">
		<form class="form-signin" id="loginForm" name="loginForm" action="<%=request.getContextPath() %>/login" method="post">
			<dl class="loginTeam">
			    <dt>
                	<h2 class="form-signin-heading">
                    	<img src="<%=request.getContextPath() %>/static/image/login_system.png" alt="国安生活宝系统后台" height="127" width="127">
                    	商户服务后台
                	</h2>
                </dt>
				<dd>
				    <label for="inputUserName" class=""></label>
				    <input type="text" id="username" name="username" class="form-control" placeholder="用户名">
				</dd>
				<dd>
				    <label for="inputPassword" class="pwd"></label>
				    <input type="password" id="password" name="password" class="form-control" placeholder="密码">   	
				</dd>		
				
					<c:if test="${param.error!=null}">
						<span class="span_errow">
							<span class="icon_sign">
								<img src="<%=request.getContextPath() %>/static/image/errowspan_03.png">
							</span>
								${param.error}
						</span>
					</c:if>	
				<dd class="btn_team" style="margin-top:30px;"><button class="btn btn-lg btn-primary btn-block"  id="loginSub" name="loginSub" onclick="onSubmit()">登录</button>
		    </dl>
		</form>
	</div>
	<p class="loginCopyright">版权所有：北京云池科技软件有限公司</p>
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.js"></script>

</body>
<script type="text/javascript">


$(function(){
	//计算页面高度
	function loginHeight(){
        $(".login_body").height($(window).height()- 95 -180);
        var formSignin = $(".form-signin")
        var signinWidth = "-" +  parseInt($(".form-signin").width())/2 + "px";
        var signinHeight = "-" +  $(".form-signin").width()/2 + "px";
        formSignin.css({"margin-left":signinWidth,"margin-top":signinHeight})
    }
    loginHeight();
    $(window).resize(function() { //在浏览器变化窗口的时候执
        loginHeight();
    });
	//绑定敲回车事件
	//用户名：敲回车触发事件
 	$('[name=username]').bind('keypress',function(event){
        if(event.keyCode == "13") {
        	//密码获取焦点
        	$("[name=password]").focus();
         }
     });
	
	//密码：敲回车触发事件
 	$('[name=password]').bind('keypress',function(event){
        if(event.keyCode == "13") {
        	//校验表单信息
        	$("[name=login]").trigger("click");
         }
     });
	
	$("[name=loginSub]").click(function(){
		var isOk =true;
		if($("[name=username]").val() == ''){
			$.showTip("请填写用户名",'alert alert-warning');
			isOk = false;
			$("[name=username]").focus();
			return false;
		}
		if($("[name=password]").val() == ''){
			$.showTip("请填写用户密码",'alert alert-warning');
			isOk = false;
			$("[name=password]").focus();
			return false;
		}
		if(isOk){
			$('<div class="jiazaiz" id="checkDiv"><span>正在处理...</span></div>').appendTo($('body'));
			$("#loginForm").submit();
		}
	});	
})
</script>
</html>