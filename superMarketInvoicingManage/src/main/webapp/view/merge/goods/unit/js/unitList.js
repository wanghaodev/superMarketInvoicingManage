
		//点击：新增按钮触发事件
        function addfun(){
        	$.changePage(_path+"/goods/brand/add"+"?_="+(new Date()).getTime());
        }
        
        //查看品牌
	function toViewOrg(id){
		if (id == '') {
			timedTaskFun(1000,'请选中一个品牌进行查看','','err');
		} else {
			$.changePage(_path+"/goods/brands/view"+"?_="+(new Date()).getTime()+"&id="+id+"&queryType=1");
		}
	}
	
	//修改品牌
	function toUpdateBrand(id){
		if (id == '') {
			timedTaskFun(1000,'请选中一个品牌进行编辑','','err');
		} else {
			$.changePage(_path+"/goods/brands/update"+"?_="+(new Date()).getTime()+"&id="+id);
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
	    		timedTaskFun(1000,'请选中一个品牌进行查看','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个品牌进行查看','','err');
			} else {
				if (state == '0') {
					
				} else {
					$.changePage(_path+"/goods/brands/view"+"?_="+(new Date()).getTime()+"&id="+checkchild+"&queryType=1");
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
	    		timedTaskFun(1000,'请选中一个品牌进行编辑','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个品牌进行编辑','','err');
			} else {
				if (state == '0') {
					
				} else {
					$.changePage(_path+"/goods/brands/update"+"?_="+(new Date()).getTime()+"&id="+checkchild);
				}
			}
        }
        
        //点击：开启按钮触发事件
		function openfun(){
			var j = 0;
	    	var checkchild;
	    	var state = '1';
	    	$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
					state = $(this).parents("td").parents("tr").find("[name=state]").val();
				}
			});
	    	if (j == 0) {
				timedTaskFun(1000,'请选中一个品牌启用','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个品牌启用','','err');
			} else {
				if (state == '3') {
					callmodalFun('您确认开启品牌吗？',function(){
						var jumpUrl = "/goods/brands/list";
						$.ajax({
							type : "post",
							url : _path+"/goods/brands/open?__"+(new Date()).getTime(),
							data : {
								'id' : checkchild
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
									
									timedTaskFun(1000,'启用成功',jumpUrl,'correct');
								}else if (data == 0) {
									timedTaskFun(1000,'启用失败','','err');
								}else{
									timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
								}	 
							}
						 });
					});
				} else {
					timedTaskFun(1000,'只有品牌处于停用状态下，才能启用','','err');
				}
			}
        }
		
		//点击：停用按钮触发事件
		function stopfun(){
			var j = 0;
	    	var checkchild;
	    	var state = '1';
	    	$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
					state = $(this).parents("td").parents("tr").find("[name=state]").val();
				}
			});
	    	if (j == 0) {
				timedTaskFun(1000,'请选中一个品牌停用','','err');
			} else if (j > 1) {
				timedTaskFun(1000,'只能选中一个品牌停用','','err');
			} else {
				if (state == '1') {
					callmodalFun('您确认停用品牌吗？',function(){
						var jumpUrl = "/goods/brands/list";
						$.ajax({
							type : "post",
							url : _path+"/goods/brands/stop?__"+(new Date()).getTime(),
							data : {
								'id' : checkchild
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
									
									timedTaskFun(1000,'停用成功',jumpUrl,'correct');
								}else if (data == 0) {
									timedTaskFun(1000,'停用失败','','err');
								}else{
									timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
								}	 
							}
						 });
					});
				} else {
					timedTaskFun(1000,'只有品牌处于开启状态下，才能停用','','err');
				}
			}
		}
		
			
		
		 var buttonsArr =[];

		 	//点击：搜索按钮触发事件
	        $("#reSearchBtn").click(function(){
	        	getDataOrgCardBin();
			})

		 	//点击：搜索按钮触发事件
	        $("#reSearchBtnCh").click(function(){
	        	getDataChildOrgCardBin();
			})

			
			

