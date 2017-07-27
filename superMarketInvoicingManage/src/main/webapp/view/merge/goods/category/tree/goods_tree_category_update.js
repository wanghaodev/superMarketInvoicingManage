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
		if($("[name=id]").val() != nodeId){//防止自关联
			$("[name=parentName]").val(nodeName);
			$("[name=parentId]").val(nodeId);
		}else{
			//取消选中状态
			$.fn.zTree.getZTreeObj(treeUlId).cancelSelectedNode();
			timedTaskFun(2000,'父类目不能选中自身！','','err');
			return false;
		}
	});;
	
	//后：进行初始化
	$.fn.zTree.init($(_treeUlId),_setting);
}
//======================调用树  end===========================

$(function(){
	
	//点击：取消按钮触发事件
	$("#tree-category-update-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/goods/purchase/tree/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：提交按钮触发事件
	$("#tree-category-update-form").find("[name=addSub]").click(function(){
		$('#tree-category-update-form').bootstrapValidator('validate');
		if(!$('#tree-category-update-form').data('bootstrapValidator').isValid()){  
			return false;
		}
		
		//校验通过，则可以进行提交表单
		$.ajax({
			type : "post",
			url : _path+"/goods/purchase/tree/update",
			data :$("#tree-category-update-form").serialize(),
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
					timedTaskFun(1000,'商品类目类目修改成功',jumpUrl,'correct');
				} else if (data == 1000) {
					timedTaskFun(1000,'商品类目类目最多可添加四级！','','err');
				} else if (data == 0) {
					timedTaskFun(1000,'很抱歉，商品类目类目修改失败！','','err');
				} else if(data == 1001){
					timedTaskFun(1000,'很抱歉，该节点名称已存在！','','err');
				} else if(data == 1002){
					timedTaskFun(1000,'很抱歉，类目排序序号不能重复！','','err');
				} else {
					timedTaskFun(1000,'系统异常，请与系统管理员联系！','','err');
				}	 
			}
		 });
		
	});
	
	
	
	
	
	//form表单进行校验
	$('#tree-category-update-form').bootstrapValidator({
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
                        max: 50,
                        message: '最多可输入50个汉字'
                    }
                }
            },
            orderNumber: {
            	validators: {
            		notEmpty: {
                        message: '排序号不能为空'
                    }
                }
            }
        }
    });
	
	
	
});