<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
 <!-- GLOBAL STYLES -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css" />
<!--[if IE 7]>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome-ie7.min.css" />
<![endif]-->
<!-- page specific plugin styles -->
<!-- fonts -->
<!-- ace styles -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ace.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ace-skins.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/static/js/ztree/zTreeStyle.css" type="text/css"/>
<!--[if lte IE 8]>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ace-ie.min.css" />
<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="<%=request.getContextPath()%>/static/js/ace-extra.min.js"></script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="<%=request.getContextPath()%>/static/js/html5shiv.js"></script>
<script src="<%=request.getContextPath()%>/static/js/respond.min.js"></script>
<![endif]-->

<!--END GLOBAL STYLES -->
<!-- GLOBAL SCRIPTS -->
	<script src="<%=request.getContextPath()%>/static/plugins/jquery-1.11.3.min.js"></script>
    <%-- <script src="<%=request.getContextPath()%>/static/plugins/jquery-2.0.3.min.js"></script> --%>
    <!-- END GLOBAL SCRIPTS -->

<script type="text/javascript">
if("ontouchend" in document) document.write("<script src='<%=request.getContextPath()%>/static/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
</script>
<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
  <script src="<%=request.getContextPath()%>/static/js/excanvas.min.js"></script>
<![endif]-->

<script src="<%=request.getContextPath()%>/static/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.ui.touch-punch.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.slimscroll.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.easy-pie-chart.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.sparkline.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/flot/jquery.flot.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/flot/jquery.flot.pie.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/flot/jquery.flot.resize.min.js"></script>
<!-- table start -->
<script src="<%=request.getContextPath()%>/static/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/jquery.dataTables.bootstrap.js"></script>
<!-- pageTable -->
<script src="<%=request.getContextPath()%>/static/js/public.js"></script>

<!-- table end -->
<!-- ace scripts -->

<script src="<%=request.getContextPath()%>/static/js/ace-elements.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/ace.min.js"></script> 

<!-- ztree start -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/ztree/jquery.ztree.exedit-3.5.js"></script>
<!-- ztree end  --> 

<script>
var _path ="<%=request.getContextPath()%>";
</script>
