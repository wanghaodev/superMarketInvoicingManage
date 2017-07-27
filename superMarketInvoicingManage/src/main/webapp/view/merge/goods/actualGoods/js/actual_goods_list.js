
		//点击：新增按钮触发事件
        function addfun(){
        	$.changePage(_path+"/merge/actual/goods/add"+"?_="+(new Date()).getTime());
        }
        
        //电商数据管理eshopInfofun
        function eshopInfofun(){
        	var j = 0;
	    	var checkchild;
	    	$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
				}
			});
	    	if (j == 0) {
	    		timedTaskFun(1000,'请选中一个商品进行查看','','err');
	    		return ;
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个商品进行查看','','err');
	    		return ;
			}
        	$.changePage(_path+"/merge/actual/goods/eshop/info"+"?_="+(new Date()).getTime()+"&id="+checkchild);
        }
	
	//修改商品
	function toUpdateGoods(id){
		if (id == '') {
			timedTaskFun(1000,'请选中一个商品进行编辑','','err');
		} else {
			$.changePage(_path+"/merge/actual/goods/update"+"?_="+(new Date()).getTime()+"&id="+id);
		}
	}
	
	//查看商品
	function toViewGoods(id){
		if (id == '') {
			timedTaskFun(1000,'请选中一个商品进行查看','','err');
		} else {
			$.changePage(_path+"/merge/actual/goods/view"+"?_="+(new Date()).getTime()+"&id="+id);
		}
	}

        //点击：查看按钮触发事件
        function viewfun(){
        	var j = 0;
	    	var checkchild;
	    	var state = '1';
	    	$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
				}
			});
	    	if (j == 0) {
	    		timedTaskFun(1000,'请选中一个商品进行查看','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个商品进行查看','','err');
			} else {
				if (state == '0') {
					
				} else {
					$.changePage(_path+"/merge/actual/goods/view"+"?_="+(new Date()).getTime()+"&id="+checkchild+"&queryType=1");
				}
			}
        }
        
        //点击：编辑按钮触发事件
        function editfun(){
        	var j = 0;
	    	var checkchild;
	    	var state = '1';
	    	$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
				}
			});
	    	if (j == 0) {
	    		timedTaskFun(1000,'请选中一个商品进行编辑','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个商品进行编辑','','err');
			} else {
				if (state == '0') {
					
				} else {
					$.changePage(_path+"/merge/actual/goods/update"+"?_="+(new Date()).getTime()+"&id="+checkchild);
				}
			}
        }
		
		/**
		 * 修改商品状态
		 */
		function toUpdateGoodsState(id,name,spu,state){
			//==============修改商品状态模态框 start =================
			if (id == '') {
				timedTaskFun(1000,'请选中一个商品进行修改','','err');
			} else {
				var _goodsTr = $(this);
				$('#updateStateForm [name=updateGoodsId]').val(id);
				$('#updateStateForm [name=updateState]').val(state);
				$('#updateStateForm').find('#goodsName').text(name);
				$('#updateStateForm').find('#spu').text(spu);
				$('#updateStateModal').modal('show');
			}
			//==============修改商品状态模态框 end =================
		}
		
		//add by wanghao 删除商品
		function deleteGoods(id){
			callmodalFun('您确认删除该记录吗？',function(){
	    		$.ajax({
	    			type : "post",
	    			url : _path+"/merge/actual/goods/delete?__"+(new Date()).getTime(),
	    			data : {
	    				'goodsId' : id
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
	    					var jumpUrl = '/merge/actual/goods/list';
	    					timedTaskFun(1000,'商品删除成功',jumpUrl,'correct');
	    				} else if (data == 0) {
	    					timedTaskFun(1000,'商品删除失败','','err');
	    				} else if(data == -2) {
	    					timedTaskFun(1000,'该商品已关联其他业务。','','err');
	    				}
	    				
	    			}
	    		 });
	    	});
		}
$(function(){
	

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
			if(nodeId!=0){
				$("[name=goodsCategoryId]").val(nodeId);
			}else{
				$("[name=goodsCategoryId]").val('');
			}
			getData();
		});
		//设置根节点
		var _root = [{id:0,name:'全部类目',checked:false,isParent:true,open:true}];
		
		//后：进行初始化
		$.fn.zTree.init($(_treeUlId),_setting,_root);
		
		//自动展开根节点
		var _treeObj = $.fn.zTree.getZTreeObj(treeUlId);
		var node = _treeObj.getNodeByParam('id', 0);//获取id为1的点
		_treeObj.selectNode(node);//选择点
		_treeObj.expandNode(node,true,true,true);
	}
	//======================调用树  end===========================
	
	//====================商品状态修改【取消】按钮事件 start==============
	$('#cancleUpdateGoodsState').click(function(){
		$('#updateStateModal').modal('hide');
	});
	//====================商品状态修改【取消】按钮事件 end ==============
	//=================商品状态修改提交按钮事件 start=====================
	$('#updateGoodsStateSure').click(function(){
			var jumpUrl = "/merge/actual/goods/list";
			$.ajax({
				type : "post",
				url : _path+"/merge/actual/goods/status?__"+(new Date()).getTime(),
				data :$('#updateStateForm').serialize(),
				beforeSend: function () {
                    //加载中
                    waitload();
                },
				success : function(data) {
					closewait();
					//若执行成功的话，则隐藏进度条提示
					if (data != null && data != 'undefined'
							&& data == 1) {

						timedTaskFun(1000,'修改商品状态成功',jumpUrl,'correct');
						$('#updateStateModal').modal('hide');
					}else if (data == 0) {
						timedTaskFun(1000,'修改商品状态失败','','err');
					}else{
						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
					}	 
				}
			 });
	});
	//=================商品状态修改提交按钮事件 end =====================
  })
			

