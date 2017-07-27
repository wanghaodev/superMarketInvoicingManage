/*页面加载完成事件*/
$(document).ready(function(){
	//加载列表数据
	getData();
	
});

/*列表数据加载方法*/
function getData() {
	var _options = {
			url : _path + "/goods/purchase/appconf/searchApps",
			checkAll : false,
			sequenceNum : false,
			data : {
				"appId" : $("#appId").val(),
				"appName" : $("#appName").val()
			},
			//列名
			cloumns : [
			    {name : '应用ID',type : "function",
					fun : function(row) {
						var htmlStr = "<font id='appId"+row.appId+"'>"+row.appId+"</font>";
						return htmlStr;
					}
				},
				{name : '应用名称',value : 'appName'},
				{name : '应用类型',type : "function",
					fun : function(row) {
						var appType = row.appType;
						if(appType == 1){
							return "商品类型";
						}
					}
				},
				{name : '收银台',type : "function",
					fun : function(row) {
						console.log(row);
						var status = row.status;
						var resultVal = "";
						if(status == 2){
							resultVal = "停用";
						}else if(status == 1) {
							resultVal = "启用";
						}
						return resultVal; 
					}
				},
				{name : '智能POS',type : "function",
					fun : function(row) {
						var status = row.posStatus;
						var resultVal = "";
						if(status == 2){
							resultVal = "停用";
						}else if(status == 1) {
							resultVal = "启用";
						}
						return resultVal; 
					}
				},
				{name : '操作',type : "function",
					fun : function(row) {
						//将查询条件拼成json字符串
						var btnStr='';
				  		btnStr+='<a href="javascript:showCategory('+row.orgId+','+row.appId+')" id="openStatus'+row.orgId+'" style="cursor:pointer;color:blue" >关联类目</a>';
					  	btnStr += "<input type='hidden' id='category"+row.appId+"' value='"+row.categoryIds+"' />";
				  		return btnStr;
					}
				}
			],
			buttons : []
		}
		$("#appListDiv").grid(_options);
}

//用于对 Ajax 返回数据进行预处理的函数	
function filter1(treeId, parentNode, childNodes) {
	if (!childNodes) {
		return null;	
	}
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}

//定义加载机构商户树列表操作参数
var categoryTreeSetting = {
	async: {
		enable: true,
		type: "post",
		url:_path+"/goods/purchase/appconf/loadtree",
		autoParam:["id=id"],
		otherParam:{
			"categoryIds":function(){return $("#"+pub_categoryId).val();}
		},
		dataFilter: filter1
	},
	check: {
		enable: true,
		chkStyle: "checkbox",
		radioType: "all"
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

//加载活动发起方机构商户列表
function loadCategoryTree() {
	$.fn.zTree.init($("#categoryTreeDemo"), categoryTreeSetting);
}

var pub_appId = null;
var pub_categoryId = null;
/*查询并展示类目div*/
function showCategory(orgId,appId){
	pub_appId = appId;
	pub_categoryId = "category"+appId;
	//加载类目树
	loadCategoryTree();
    //展示模块窗
    $('#categoryTreeDiv').modal('show');
}

function openStatus(orgId,appId){
	$.ajax({
		async:false,//设置为同步请求
		type:"post",
		url:_path+"/system/org/appconf/statusOpenOneByOrgId",
		data:"orgId="+orgId+"&appId="+appId,
		dataType:'json',
		success: function(dataObj){
					if(dataObj.code == 1){
						getData();
						/*$("#closeStatus"+orgId).show();//显示删除按钮
						$("#openStatus"+orgId).remove();//隐藏结束按钮*/
					}else{
						//弹出失败提示框
					} 
      			 }
	});
}

function closeStatus(orgId,appId){
	$.ajax({
		async:false,//设置为同步请求
		type:"post",
		url:_path+"/system/org/appconf/statusCloseOneByOrgId",
		data:"orgId="+orgId+"&appId="+appId,
		dataType:'json',
		success: function(dataObj){
					if(dataObj.code == 1){
						getData();
						/*$("#closeStatus"+orgId).show();//显示删除按钮
						$("#openStatus"+orgId).remove();//隐藏结束按钮*/
					}else{
						//弹出失败提示框
					}
      			 }
	});
}


$("#searchBtn").on("click",function(){
	
	getData();
	
});

/*选中机构带机构id返回界面*/ 
$("#categoryTreeSure").on("click",function(){
    var treeObj=$.fn.zTree.getZTreeObj("categoryTreeDemo");
  	var selNodes=treeObj.getCheckedNodes(true);
  	
  	var nodeObj = null;
  	var nodeObjStr = "";
  	
  	for(var i=0;i<selNodes.length;i++){
  		nodeObj = selNodes[i];
  		if(nodeObj.pId != null){
  			nodeObjStr = nodeObj.id+","+(nodeObj.pId == null ? 0 : nodeObj.pId)+","+nodeObj.name +";"+ nodeObjStr;
  		}
    }
  	/*判断是否有选中*/
  	if(nodeObjStr.length == 0){
  		callmodalFun('请选择类目!','');
  		return false;
  	}else{
  		//获取appId
  		var appId = $("#appId"+pub_appId).text();
  		//将类目字符串、记录对应appId传至类目编辑接口
  		$.ajax({
  			async:false,//设置为同步请求
  			type:"post",
  			url:_path+"/goods/purchase/appconf/saveCategorys",
  			data:"categoryStr="+nodeObjStr+"&appId="+appId,
  			dataType:'json',
  			success: function(dataObj){
  						if(dataObj.code == 1){
  							getData();//刷新数据
  						}else{
  							callmodalFun('类目编辑失败!','');
  						}
  						$('.modal-distribution').modal('hide');//关闭发起方选择窗口
  	      			 }
  		});
  	}
  	/*//判断是否有选中 
  	if(value == 0){
  		callmodalFun('请选择机构？','');
  		return false;
  	}else{
  		//验证活动发起方数据
  		$('#from-promo-info1').data('bootstrapValidator').updateStatus('sponsorNameId', 'NOT_VALIDATED').validateField('sponsorNameId'); 
  		
  		//查询子级机构商户的数量
  		var orgCount = getOrgCountByPid(value);
  		//判断子级机构商户的数量
  		if(orgCount == 1){
  			//查询子级机构对象 var obj = getOrgObjByPid(value);obj = obj[0];
			$("#selectRangeCode").find("option[value='1']").attr("selected",true);//"选择机构商户范围"下拉选框设置为"全部"的状态
    		$("#selectRangeCode").attr("disabled",true);//"选择机构商户范围"下拉选框设置为禁用
    		$("#selectRangeId").attr("disabled",true);//"选择机构商户按钮"下拉选框设置为禁用
    		$("#allRangeValues").val("");//"选择机构/商户按钮"范围值置空
  		}else if(orgCount == 0){
  			$("#selectRangeCode").find("option[value='0']").attr("selected",true);//"选择机构商户范围"下拉选框设置为"无"的状态
  			$("#selectRangeCode").attr("disabled",true);//"选择机构商户范围"下拉选框设置为禁用
  			$("#selectRangeId").attr("disabled",true);//"选择机构商户按钮"下拉选框设置为禁用
  			$("#allRangeValues").val("");//"选择机构商户按钮"范围值置空
  		}
  		$('.modal-distribution').modal('hide');//关闭发起方选择窗口
  	}*/
});