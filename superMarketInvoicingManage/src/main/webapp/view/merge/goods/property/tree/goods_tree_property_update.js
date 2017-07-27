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
	
	//页面加载：处理数据
	if (_propertyValueJsonStr != null && _propertyValueJsonStr != undefined
				&& _propertyValueJsonStr != '') {
		 var jsonArray =JSON.parse(_propertyValueJsonStr);
		 $.each(jsonArray,function(index,obj){
			 //动态：创建属性值tr
			var _tr = $('<tr></tr>').appendTo($("#propertyValueTable"));
			var _td = $('<td></td>').appendTo(_tr);
			var _propertyValueInput = $('<input type="text" class="form-control" name="propertyValue" isAdd=0 propertyValueId="'+obj.id+'" value="'+obj.propertyValue+'" />').appendTo(_td);
			
			var _delTd = $('<td align="center"></td>').appendTo(_tr);
			var _saveInput = $('<input type="button" name="saveValue" class="btn btn-primary" value="保存" style="display:inline-block;" />').appendTo(_delTd);
			//点击：保存
			_saveInput.click(function(){
				var _isOk = true;
				var oldPropertyValue = obj.propertyValue;
				var newPropertyValue = $(this).parents("tr").find("[name=propertyValue]").val();
				if (oldPropertyValue != newPropertyValue) {
					//判断：若旧值和新值一样，则不需要保存。若不一样，需要异步进行修改。【修改值需要判断是否参与业务】，若参与业务，则提示不能修改。否则可以修改
					var tempPropertyValue = "";
					//组装所有属性值
					$("#propertyValueTable").find("tr").each(function(){
						if ($(this).find("[name=propertyValue]").val() != undefined 
								&& $(this).find("[name=propertyValue]").val() != null) {
							tempPropertyValue = tempPropertyValue+$(this).find("[name=propertyValue]").val()+","
						}
					});
					//判断：属性值是否有重复的
					var k = 0;
					var propertyArray = tempPropertyValue.split(",");
					for (var i=0;i<propertyArray.length;i++) {
						var tempA = propertyArray[i];
						if (tempA == newPropertyValue) {
							k++;
						}
					}
					if (k > 1) {
						//校验：属性值是否重复
						callmodalFun("属性值【"+newPropertyValue+"已存在】!",'');
						_isOk = false;
						return false;
					}
					
					if (_isOk) {
						//说明：属性值可以修改，异步请求后台进行修改【接下来：需要检验是否参与业务】
						$.ajax({
							type : "post",
							url : _path+"/goods/purchase/tree/property/value/update?__"+(new Date()).getTime(),
							data : {
								'id' : obj.id,
								'propertyValue' : newPropertyValue
							},
							beforeSend: function () {
				                //加载中
				                waitload();
				            },
							success : function(data) {
								closewait();
								//若执行成功的话，则隐藏进度条提示
								if (data != null && data != 'undefined'
										&& data == 1) {
									timedTaskFun(1000,'属性值修改成功','','correct');
								} else if (data != null && data != 'undefined'
										&& data == 0) {
									timedTaskFun(1000,'属性值修改失败','','err');
								} else if(data != null && data != 'undefined'
										&& data == 1000) {
									timedTaskFun(1000,'该属性值，已参与其他业务，故无法修改！','','err');
								}
								
							}
						 });
					}
				}
			});
			
			var _delInput = $('<input type="button" name="del" class="btn btn-primary" value="删除" style="display:inline-block;margin-left:10px;" />').appendTo(_delTd);
			_delInput.click(function(){
				var _tr = $(this).parents("tr");
				//移除当前对象：需异步判断该属性值是否已参与业务，若参与业务，则提示不能删除。否则可以删除
				$.ajax({
					type : "post",
					url : _path+"/goods/purchase/tree/property/value/delete?__"+(new Date()).getTime(),
					data : {
						'propertyValueId' : obj.id
					},
					beforeSend: function () {
		                //加载中
		                waitload();
		            },
					success : function(data) {
						closewait();
						//若执行成功的话，则隐藏进度条提示
						if (data != null && data != 'undefined'
								&& data == 1) {
							_tr.remove();
							
							
							timedTaskFun(1000,'属性值删除成功','','correct');
						} else if (data != null && data != 'undefined'
								&& data == 0) {
							timedTaskFun(1000,'属性值删除失败','','err');
						} else if(data != null && data != 'undefined'
								&& data == 1000) {
							timedTaskFun(1000,'该属性值，已参与其他业务，故无法删除！','','err');
						}
						
					}
				 });
			});
				
		 });
	}
	
	//点击：取消按钮触发事件
	$("#tree-property-update-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/purchase/tree/property/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：提交按钮触发事件
	$("#tree-property-update-form").find("[name=addSub]").click(function(){
		$('#tree-property-update-form').bootstrapValidator('validate');
		if(!$('#tree-property-update-form').data('bootstrapValidator').isValid()){  
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
				
				var _jsonObj = {'propertyValue':$(this).find("[name=propertyValue]").val()
						,'isAdd':$(this).find("[name=propertyValue]").attr("isAdd")};
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
				url : _path+"/goods/purchase/tree/property/update",
				data :$("#tree-property-update-form").serialize(),
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
						timedTaskFun(1000,'商品类目类目属性修改成功',jumpUrl,'correct');
					} else if (data == 1000) {
						timedTaskFun(1000,'属性已参与业务，属性名称不能修改！','','err');
					} else if (data == 0) {
						timedTaskFun(1000,'很抱歉，商品类目类目属性修改失败！','','err');
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
		var _propertyValueInput = $('<input type="text" class="form-control" isAdd=1 name="propertyValue" />').appendTo(_td);
		
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
	//页面初始化属性值维护是否显示
//	if($("[name=propertyType]").val()=="2"){
//		$("#propertyValueTable").parent().hide();
//		$("[name=addPropertyValue]").parent().hide();
//	}else {
//		$("#propertyValueTable").parent().show();
//		$("[name=addPropertyValue]").parent().show();
//	}
	//form表单进行校验
	$('#tree-property-update-form').bootstrapValidator({
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
                        max: 50,
                        message: '最多可输入50个汉字'
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
