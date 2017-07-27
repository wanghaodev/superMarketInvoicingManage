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
	var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName) {
		$("[name=parentId]").val(nodeId);
		$("[name=parentName]").val(nodeName);
	});;
	
	//后：进行初始化
	$.fn.zTree.init($(_treeUlId),_setting);
}
//======================调用树  end===========================

$(function(){
	
	//点击：取消按钮触发事件
	$("#tree-category-add-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/purchase/tree/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：提交按钮触发事件
	$("#tree-category-add-form").find("[name=addSub]").click(function(){
		$('#tree-category-add-form').bootstrapValidator('validate');
		if(!$('#tree-category-add-form').data('bootstrapValidator').isValid()){  
			return false;
		}
		
		//校验通过，则可以进行提交表单
		$.ajax({
			type : "post",
			url : _path+"/goods/purchase/tree/add",
			data :$("#tree-category-add-form").serialize(),
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
					var jumpUrl ='/goods/purchase/tree/list';
					timedTaskFun(1000,'商品类目类目添加成功',jumpUrl,'correct');
				} else if (data == 1000) {
					timedTaskFun(1000,'商品类目类目最多可添加四级！','','err');
				} else if (data == 0) {
					timedTaskFun(1000,'很抱歉，商品类目类目添加失败！','','err');
				} else if(data == 1001){
					timedTaskFun(1000,'很抱歉，该节点名称已存在！','','err');
				} else if(data == 1002){
					timedTaskFun(1000,'很抱歉，类目排序序号不能重复！','','err');
				}else {
					timedTaskFun(1000,'系统异常，请与系统管理员联系！','','err');
				}	 
			}
		 });
		
	});
	
	
	
	
	
	//form表单进行校验
	$('#tree-category-add-form').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
			},
        fields: {
        	categoryName: {
                message: '类目名称验证失败',
                validators: {
                    notEmpty: {
                        message: '类目名称不能为空'
                    },
                    stringLength: {
                    	min:2,
                        max: 8,
                        message: '名称长度必须在2到8位之间'
                    }
                }
            },
            orderNumber: {
            	validators: {
            		notEmpty: {
                        message: '排序号不能为空'
                    }
                }
            },
            inputTax:{
            	validators: {
            		regexp: {
            			//匹配位数为0-1之间并保留灵位小数
            			regexp: /^[01]$|^0.\d{1,2}$/,
            			message: '进项税在0到1之间并保留两位小数'
            				}
            	}
            },
            outputTax:{
            	validators: {
            		regexp: {
            			regexp: /^[01]$|^0.\d{1,2}$/,
            			message: '销项税在0到1之间并保留两位小数'
            				}
            	}
            },
            consumeTax:{
            	validators: {
            		regexp: {
            			regexp: /^[01]$|^0.\d{1,2}$/,
            			message: '消费税在0到1之间并保留两位小数'
            				}
            	}
            }
        }
    });
	
});