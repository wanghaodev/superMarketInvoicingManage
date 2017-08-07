
	//注意：autoParam中的id自动提交参数的前提是以isParent为前提，当isParent为true时候，则开始异步加载
		var setting = {
			async: {
				enable: true,
				type: "post",
				url:_treeUrl,
				autoParam:["id=authId"],
				otherParam:{"otherParam":"zTreeAsyncTest"},
				dataFilter: filter
			},
			check: {
				enable: true
			},
			open: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true,
					idKey : "id", // id编号命名     
	                pIdKey : "pId", // 父id编号命名      
	                rootId : 0,
	                roleId : '55555555555'
				}
			},
			callback: {
				//捕获异步加载出现异常错误的事件回调函数 和 成功的回调函数    
	            onAsyncSuccess : function(event, treeId, treeNode, msg){    
	                //  alert("调用成功！");  
	                //var nodes=getCheckedNodes(true));  
	                //alert(treeNode);  
	            },  
			}
		};

		//双击展开菜单
		function dblClickExpand(treeId, treeNode) {
			return true;
		}
		
		//用于对 Ajax 返回数据进行预处理的函数	
		function filter(treeId, parentNode, childNodes) {
			if (!childNodes) {
				return null;	
			}
			for (var i=0, l=childNodes.length; i<l; i++) {
				childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
			}
			return childNodes;
		}
