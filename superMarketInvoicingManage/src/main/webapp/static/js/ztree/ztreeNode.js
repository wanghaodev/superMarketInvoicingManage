var _url=_path+"/sys/org/ajaxList";
	//注意：autoParam中的id自动提交参数的前提是以isParent为前提，当isParent为true时候，则开始异步加载
		var setting = {
			async: {
				enable: true,
				type: "post",
				url:_treeUrl,
				autoParam:"",
				otherParam:"",
				dataFilter: filter
			},
			data: {
				simpleData: {
					enable: true,
					idKey : "id", // id编号命名     
	                pIdKey : "pId", // 父id编号命名      
	                rootId : 0  
				}
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
	//页面加载：调用方法
		function loadOrgTree() {
			$.fn.zTree.init($("#roleTree"), setting);
		}
