//======================调用树  start===========================
loadTree("serviceCategoryTreeDemo",_path+"/goods/purchase/tree/loadtree");

/**
 * @fun 加载：树（文件夹）
 * @param treeUlId			传入【<ul id="positionTreeDemo" class="ztree">】中的positionTreeDemo
 * @param _ajaxTreeUrl		请求参数url
 */
function loadTree(treeUlId,_ajaxTreeUrl) {
	//组装id
	var _treeUlId = "#"+treeUlId;
	
	//先：加载ztree树
	var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName,treeNode) {
		var is4Level = (treeNode.categoryLevel==4);
		if(!is4Level){
			callmodalFun('您只能在第四级类目下创建类目属性！');
		}else{
			$("[name=categoryId]").val(nodeId);
			$("[name=categoryName]").val(nodeName);
		}
	});;
	
	//后：进行初始化
	$.fn.zTree.init($(_treeUlId),_setting);
}
//======================调用树  end===========================

$(function(){
	
	//点击：取消按钮触发事件
	$("#tree-property-add-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/purchase/tree/property/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：提交按钮触发事件
	$("#tree-property-add-form").find("[name=addSub]").click(function(){
		$('#tree-property-add-form').bootstrapValidator('validate');
		if(!$('#tree-property-add-form').data('bootstrapValidator').isValid()){  
			return false;
		}
		
		if ($("[name=categoryId]").val() == '') {
			callmodalFun("请选择所属分类",'');
			return false;
		}
		
		var isOk = true;
		var tempPropertyValue = "";
		var propertyValuesArray = [];
		//判断：添加的属性值是否为空
		$("#propertyValueTable").find("tr").each(function(){
			if ($(this).find("[name=propertyValue]").val() != undefined 
					&& $(this).find("[name=propertyValue]").val() != null) {
				if ($(this).find("[name=propertyValue]").val() == '') {
					callmodalFun("属性值不能为空!",'');
					isOk = false;
					return false;
				}
				if ((tempPropertyValue).indexOf($(this).find("[name=propertyValue]").val()+",") != -1) {
					//校验：属性值是否重复
					callmodalFun("属性值【"+$(this).find("[name=propertyValue]").val()+"已存在】!",'');
					isOk = false;
					return false;
				}
				tempPropertyValue = tempPropertyValue+$(this).find("[name=propertyValue]").val()+","
				
				var _jsonObj = {'propertyValue':$(this).find("[name=propertyValue]").val()};
				propertyValuesArray.push(_jsonObj);
			}
		});
		if (propertyValuesArray.length > 0) {
			//将组装好的信息，存放到隐藏域中
			$("[name=propertyValueJson]").val(JSON.stringify(propertyValuesArray));
		}
		
		//校验通过，则可以进行提交表单
		if (isOk) {
			$.ajax({
				type : "post",
				url : _path+"/goods/purchase/tree/property/add",
				data :$("#tree-property-add-form").serialize(),
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
						var jumpUrl = '/goods/purchase/tree/property/list';
						timedTaskFun(1000,'商品类目类目属性添加成功',jumpUrl,'correct');
					} else if (data == 1000) {
						timedTaskFun(1000,'商品类目类目属性添加失败！','','err');
					} else if (data == 0) {
						timedTaskFun(1000,'很抱歉，商品类目类目属性添加失败！','','err');
					} else if (data == 1001) {
						timedTaskFun(1000,'很抱歉，商品类目类目属性名称已存在！','','err');
					} else {
						timedTaskFun(1000,'系统异常，请与系统管理员联系！','','err');
					}	 
				}
			 });
		}
		
	});
	
	
	//点击：新增属性值触发事件
	$("[name=addPropertyValue]").click(function(){
		var _tr = $('<tr></tr>').appendTo($("#propertyValueTable"));
		var _td = $('<td></td>').appendTo(_tr);
		var _propertyValueInput = $('<input type="text" class="form-control" name="propertyValue" />').appendTo(_td);
		
		var _delTd = $('<td align="center"></td>').appendTo(_tr);
		var _delInput = $('<input type="button" name="del" class="btn btn-primary" value="删除" />').appendTo(_delTd);
		_delInput.click(function(){
			//移除当前对象
			$(this).parents("tr").remove();
		});
	});
	
//	//修改属性类型时触发
//	$("[name=propertyType]").change(function(){
//		if($(this).val()=="2"){
//			$("#propertyValueTable").parent().hide();
//			$("[name=addPropertyValue]").parent().hide();
//		}else {
//			$("#propertyValueTable").parent().show();
//			$("[name=addPropertyValue]").parent().show();
//		}
//	});
	//form表单进行校验
	$('#tree-property-add-form').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
			},
        fields: {
        	propertyName: {
                message: '属性名称验证失败',
                validators: {
                    notEmpty: {
                        message: '属性名称不能为空'
                    },
                    stringLength: {
                    	min: 1,
                        max: 8,
                        message: '属性名称长度必须在1到8位之间'
                    }
                }
            },
            categoryId: {
                message: '所属分类验证失败',
                validators: {
                    notEmpty: {
                        message: '所属分类不能为空'
                    },
                    stringLength: {
                        max: 50,
                        message: '最多可输入50个汉字'
                    }
                }
            }
//            orderNumber: {
//            	validators: {
//            		notEmpty: {
//                        message: '排序号不能为空'
//                    },
//            		stringLength: {
//                        max: 50,
//                        message: '最大长度不能大于50'
//                    },
//                    numeric: {
//                    	message: '排序号只能输入数字'
//                    }
//                }
//            }
        }
    });
	
	
	
});
