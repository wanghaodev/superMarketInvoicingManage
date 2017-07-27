<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">
   <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">单位管理</li>
        </ol>
        <form class="add-form" id="brand-add-form" >
 	<!-- 图片相对路径 -->
        	<input type="hidden" name="oppositePath" id="oppositePath" value="" />
        	<!-- 图片绝对路径 -->
        	<input type="hidden" name="absolutePath" id="absolutePath" value="" />
        	<div class="panel panel-default">
	            <div class="panel-heading">新增单位 </div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>单位名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="最多可输入20个汉字" name="unitName" value="">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>英文名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入字母"  name="unitEnglishName" value="">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                <th>销售类型</th>
		                     <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="unitType" id="unitType">
					        			<option value=" 1" selected="selected">销售单位</option>
					        			<option value=" 2">采购单位</option>
					        		</select>
		                        </div>
		                    </td>
		                     <th>换算关系</th>
		                    <td>
		                    	<div class="form-group ">
		                            <input type="text"  name="minimumUnitVal" value="">
		                            
		                            <select  name="minimumUnitType"  id="minimumUnitType">
					        			<option value=" 1" selected="selected">EA(最小包装单位)</option>
					        			<option value=" 2">G(克)</option>
					        		</select>
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
    </div>
<!-- 校验框架 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrapValidator.min.js"></script>
    
<script type="text/javascript">
$(function(){
	$("#brand-add-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/unit/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：添加按钮触发事件
	 $("#brand-add-form").find("[name=addSub]").click(function(){
	    $('#brand-add-form').bootstrapValidator('validate');
		 if(!$('#brand-add-form').data('bootstrapValidator').isValid()){  
             return false;  
         } 
		 
		//异步发送请求：进行添加
 			  $.ajax({
 				type : "post",
 				url : _path+"/goods/unit/add",
 				data :$("#brand-add-form").serialize(),
 				//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
                beforeSend: function () {
                    //加载中
                    waitload();
                },
 				success : function(data) {
					closewait();
 					
 					//若执行成功的话，则隐藏进度条提示
 					if (data != null && data != 'undefined'
 							&& data == 1) {
 						//alert-success 成功，alert-info信息，alert-warning警告，alert-danger错误 
 						var jumpUrl = '/goods/unit/list';
 							timedTaskFun(1000,'单位名称添加成功',jumpUrl,'correct');
 					} else if (data == -1) {
 						timedTaskFun(2000,'单位英文名称已存在','','err');
 					} else {
 						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
 					}
 				}
 			 });
 		//移除
 	}); 
 	
});
 
$(function() {
    $('#brand-add-form').bootstrapValidator({
			message: 'This value is not valid',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
				},
            fields: {
            	unitName: {
                    message: '单位中文称验证失败',
                    validators: {
                        notEmpty: {
                            message: '单位中文名不能为空'
                        },
                        stringLength: {
                        	min: 1,
                            max: 20,
                            message: '单位中文名长度必须在1到20位之间'
                        }
                        /* ,
                        regexp: {
                			regexp: /^[\u4e00-\u9fa5]{1,}$/,
                			message: '必须为中文'
                				} */
                        
                    }
                },
                unitEnglishName: {
                    message: '单位英文名称验证失败',
                    validators: {
                        notEmpty: {
                            message: '单位英文名不能为空'
                        },
                        stringLength: {
                        	min: 1,
                            max: 20,
                            message: '单位英文文名长度必须在1到20位之间'
                        },
                        regexp: {
                			regexp: /^[\x07-\xff]*$/,
                			message: '必须为英文'
                				}
                        
                    }
                },
                minimumUnitVal:{
                	 message: '单位英文名称验证失败',
                     validators: {
                	regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '只能为整数'
            				}
                }
        }
    }
   });
});

</script>