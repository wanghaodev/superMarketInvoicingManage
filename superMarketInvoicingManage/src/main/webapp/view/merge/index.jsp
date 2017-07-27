<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <title>商户后台</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath() %>/static/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/js/jBox/Skins/Blue/jbox.css" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/ztree/zTreeStyle.css" type="text/css" />
    <!--校验-->
	<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">
</head>
<script>
var _path ="<%=request.getContextPath()%>";
</script>
<body>
<div class="w-header">
    <!-- 菜单导航 -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid" id="mainContent">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="nav-logo" href="index">
                    <img src="<%=request.getContextPath() %>/static/image/logo.png">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <a class="nav_left" href="javascript:;"></a>
                 <div id="nav_maxwid" class="nav_maxwid">
                 </div>
                <a class="nav_right" href="javascript:;"></a>
                <a class="nav_toggle no_submenu" href="javascript:;"></a>
                <ul class="members_info">
                    <li>
                    	<img src="<%=request.getContextPath() %>/static/image/merchants.png" alt=""/> 
                    	【<span  style="cursor: pointer;" id="toUserUpdatePwd">${name}</span>】
                    </li>
                    <li><a  class="members_exit" href="<%=request.getContextPath() %>/logout">退出</a></li>
                </ul>
                <%-- <div class=" head-userinfo">
                    <span>欢迎：【${name}】 </span>
                    <span class="hide768">${systemTime}</span>
                    <span class="hide768">登录IP：${ip}</span>
                    <a href="<%=request.getContextPath() %>/logout">[退出]</a>
                </div> --%>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>
<div class="page-wrapper no_submenu" style="">
    <div class="container-fluid">
        <!-- <div class="jumbotron">
            <div id="main" style="height:550px"></div>
        </div> -->
        <div class="panel panel-default">
            <div class="panel-heading">
               	 机构/商户管理流程
            </div>
            <div class="panel-body narrow-input">
                <a href="####"><img class="	flowChart" src="<%=request.getContextPath() %>/static/image/rtryu.png" alt="" style="
               
                "/></a>
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->
        
        <div class="panel panel-default clasbordernone">
            <div class="panel-heading" style="border:none;">机构/商户运营数据</div>
            <div class="panel-body narrow-input" style="padding:0">
                <div class="table-responsive" style="padding:0">
                    <table class="table table-bordered half-table panel-tabel">
                        <tbody>
                            <tr class="clatr">
                               <!--  <th>机构总数</th>
                                <td id="orgCount">0个</td>
                                <th>商户总数</th>
                                <td id="merchantCount">0个</td> -->
                                <td>
                                	<div class="cladivimg">
                                		<div>
                                			<img src="<%=request.getContextPath() %>/static/image/bang_03.png" alt="" />
                                		</div>
                                        <p class="clap1">机构总数</p>
                                        <p class="clap2"><span class="claspan1">${orgCount }</span>个</p>
                                	</div>	
                                	
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_05.png" alt="" />
                                        </div>
                                        <p class="clap1">店铺总数</p>
                                        <p class="clap2"><span class="claspan2">${storeCount }</span>个</p>
                                	</div>
                                
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_07.png" alt="" />
                                        </div>
                                	   <p class="clap1">今日收益金额</p>
                                       <p class="clap2"><span class="claspan3">${todayIncomeAmount }</span>元</p>
                                	</div>
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_09.png" alt="" />
                                        </div>
                                	 <p class="clap1">累计收益金额</p>
                                     <p class="clap2"><span class="claspan4">${incomeAmount }</span>元</p>
                                	</div>
                                </td>
                                <td>
                                	<div class="cladivimg">
                                	   <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_11.png" alt="" />
                                        </div>
                                	 <p class="clap1">累计卡充值金额</p>
                                     <p class="clap2"><span class="claspan5">${cardRechargeAmount }</span>元</p>
                                	</div>
                                
                                </td>
                                
                            </tr>
                           
                           
                            
                             
                        </tbody>
                    </table>
                </div><!-- /.table-responsive -->
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->
        <%-- <div class="panel panel-default clasbordernone">
            <div class="panel-heading" style="border:none;">平台运营数据</div>
            <div class="panel-body narrow-input" style="padding:0">
                <div class="table-responsive" style="padding:0">
                    <table class="table table-bordered half-table panel-tabel">
                        <tbody>
                        <tr>
                            <td>
                                    <div class="cladivimg">
                                        <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_03.png" alt="" />
                                        </div>
                                        <p class="clap1">机构总数</p>
                                        <p class="clap2"><span class="claspan1">0</span>元</p>
                                    </div>  
                                    
                                </td>
                                <td>
                                    <div class="cladivimg">
                                       <div>
                                            <img src="<%=request.getContextPath() %>/static/image/bang_05.png" alt="" />
                                        </div>
                                        <p class="clap1">商户总数</p>
                                        <p class="clap2"><span class="claspan2">0</span>元</p>
                                    </div>
                                </td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- /.table-responsive -->
            </div><!-- /.panel-body -->
        </div><!-- /.panel --> --%>
    </div>
</div>
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery.cookie.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jBox/jquery.jBox.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
<%-- <script src="<%=request.getContextPath() %>/assets/js/commen/commen.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/public.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/base64.js"></script>
<script src="<%=request.getContextPath() %>/static/js/init.js"></script>


<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/ztree/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.core.js" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.excheck.js" type="text/css"> --%>


<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.exedit-3.5.js"></script>

<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>
<style type="text/css">
	.ztree li span.button.add {margin-left:2px; margin-right: -1px; background-position:-144px 0; vertical-align:top; *vertical-align:middle}
</style>
<script type="text/javascript">
$(function(){
	if($(window).width()<=768){
		var isrc = $(".nav-logo img").attr("src");
		var imgindex = isrc.lastIndexOf("/");
		var imgsrc = isrc.substring(0,imgindex+1) + "loginSmini.png";
		$(".nav-logo img").attr("src",imgsrc);
	}
	var _indexOf =location.href.indexOf("#!");
	
	var firMenu =getCookieVal("firMenu");
	if(firMenu != null){
		$("#"+firMenu).trigger('click');
	}
	var secMenu =getCookieVal("secMenu");
	if(secMenu != null){
// 		$("#"+secMenu).trigger('click');
	}

	if(_indexOf != -1){
		var _locationHref =location.href.substring((_indexOf+2),location.href.length);
		
		$.changePage($.base64({data:_locationHref,type:1}));
	}
	function getCookieVal(name){
		return $.base64({data:$.cookie(name),type:1});
	}
	
	//点击顶部导航登录用户名，进入修改用户密码页面
	$("#toUserUpdatePwd").click(function(){
		$.changePage(_path+"/login/user/update/pwd"+"?_="+(new Date()).getTime());
	});
	
})

</script>
</body>
</html>