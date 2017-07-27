<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--上传文件-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/webuploader/style.css">
<!--日历-->
<link href="<%=request.getContextPath() %>/static/css/bootstrap-datetimepicker.css" rel="stylesheet">
<!--校验-->
<link href="<%=request.getContextPath() %>/static/css/bootstrapValidator.min.css" rel="stylesheet">
   <div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">数据字典</a></li>
            <li class="active">品牌管理</li>
        </ol>
        <form class="add-form" id="brand-add-form" >
 	<!-- 图片相对路径 -->
        	<input type="hidden" name="oppositePath" id="oppositePath" value="" />
        	<!-- 图片绝对路径 -->
        	<input type="hidden" name="absolutePath" id="absolutePath" value="" />
        	<div class="panel panel-default">
	            <div class="panel-heading">新增品牌 </div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>中文名</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control" name="brandName" value="">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>英文名</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  name="brandEnglishName" value="">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                    <th>品牌首字母</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="品牌首字母大写" name="brandInitial" value="">
		                        </div>
		                    </td>
		                     <th>品牌状态</th>
		                    <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="state">
					        			<option value=" 1" selected="selected">启用</option>
					        			<option value=" 0">停用</option>
					        		</select>
		                        </div>
		                    </td>
		                    </tr>
		                <tr class="uploadPictures">
                    <th>上传图片</th>
                    <td colspan="3">
                       <div id="typePic">
                       		
                       </div>
                        
		              <div class="editVal">
		                <p>支持jpg、jpeg、png、gif格式</p>
		                <div id="uploader" class="uploader">
		                  <div class="queueList">
		                      <div id="dndArea" class="placeholder">
		                          <div id="filePicker" class="fileAdd"></div>
		                      </div>
		                  </div>
		                  <div class="statusBar"  style="display:none;">
		                      <div class="progress"  style="display:none;">
		                          <span class="text">0%</span>
		                          <span class="percentage"></span>
		                      </div>
		                      <div class="info"></div>
		                      <div class="btns">
		                          <!-- <div id="filePicker2" class="continueAdd"></div> --><div class="uploadBtn">开始上传</div>
		                      </div>
		                  </div>
		                </div>
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
<!--上传-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/webuploader/webuploader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/webuploader/upload.js"></script>
    
<script type="text/javascript">
$(function(){
	$("#brand-add-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/brand/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：添加按钮触发事件
	 $("#brand-add-form").find("[name=addSub]").click(function(){
	    $('#brand-add-form').bootstrapValidator('validate');
		 if(!$('#brand-add-form').data('bootstrapValidator').isValid()){  
             return false;  
         } 
		 
		//设置图片隐藏域
	   		var picArray =[];
	   		$('#typePic input[name=pic]').each(function(i,n){
	   			picArray.push($(this).val());
	   		});
	   		
		//获取图片绝对路径
   		//$('input[name=absolutePath]').val(picArray.join(';'));
	
   		/* var picAbsolutePath = $("[name=pic]");
   		var picAbsolutePaths=[];
  		for(var i = 0 ; i < picAbsolutePath.length;i++){
   				var s = picAbsolutePath[i].value;
   				console.log(s);
   				picAbsolutePaths.push(s);
   			}
	  		console.log(picAbsolutePaths); */
   			/* $.each(picAbsolutePath,function (index,obj){
   				var s = obj.val();
   				console.log(s);
   			}); */
   		 var picAbsolutePath = $("[name=pic]").val();	
   		var picOppositePath = $("[name=pic]").attr("alt");
   		$("#absolutePath").val(picAbsolutePath);
   		$("#oppositePath").val(picOppositePath);
		//异步发送请求：进行添加
 			  $.ajax({
 				type : "post",
 				url : _path+"/goods/brand/add",
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
 						var jumpUrl = '/goods/brand/list';
 							timedTaskFun(1000,'品牌添加成功',jumpUrl,'correct');
 					} else if (data == -1) {
 						timedTaskFun(2000,'品牌名称已存在','','err');
 					} else {
 						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
 					}
 				}
 			 });
 		//移除
 	}); 
 	
	    //资讯配图上传功能
     callUploader({
			  fileNum:1 
			, uploaderID: "#uploader"
			, filePicker:"#filePicker"
			, dndArea: "#dndArea"
			, kideAddress: "#typePic"
			, mark:"pic"
			, hiddenArry: []
		}); 
     
     //资讯配图大小提示
		$("#dndArea").find("p").html("最多可上传1张，且图片大小不超过500kb");
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
                brandName: {
                    message: '品牌中文称验证失败',
                    validators: {
                        notEmpty: {
                            message: '品牌中文名不能为空'
                        },
                        stringLength: {
                        	min:2,
                            max: 20,
                            message: '品牌中文名长度必须在2到20位之间'
                        }
                        /* ,
                        regexp: {
                			regexp: /^[\u4e00-\u9fa5]{1,}$/,
                			message: '必须为中文'
                				} */
                        
                    }
                },
                brandEnglishName: {
                    message: '品牌英文名称验证失败',
                    validators: {
                        notEmpty: {
                            message: '品牌英文名不能为空'
                        },
                        stringLength: {
                        	min:2,
                            max: 20,
                            message: '品牌英文名长度必须在2到20位之间'
                        },
                        regexp: {
                			regexp: /^[\x07-\xff]*$/,
                			message: '品牌英文名只允许为英文字母或数字。'
                				}
                        
                    }
                },
                brandInitial: {
                    message: '品牌首字母验证失败',
                    validators: {
                        stringLength: {
                            max: 1,
                            message: '品牌首字母只能为1位'
                        },
                        regexp: {
                			regexp: /^[a-zA-Z]+$/,
                			message: '请输入英文字母'
                				}
                    }
                }
                
        }
    });
});

</script>