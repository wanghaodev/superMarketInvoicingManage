
/*日期*/
/*$(".form_datetime").datetimepicker({
    format: 'hh:ii:00',
    linked:true,
    weekStart: 1,
    autoclose: true,
    startView: 1,
    minView: 0,
    forceParse: false,
    language: 'zh-CN',
    todayBtn: true,
    pickerPosition: "bottom-left"
});*/

$('.form_datetime').datetimepicker({
    //language:  'fr',
    todayBtn:  true,
	autoclose: true,
	todayHighlight:true,
	startView: 2,
	forceParse: 1,
    language: 'zh-CN',
	format: 'yyyy-mm-dd',
	pickerPosition: "bottom-left"
});
var setting2 = {
	async: {
		enable: true,
		type: "post",
		url:_path+"/invoicing/system/org/tree",
		autoParam:["id"],
		otherParam:{"orgType":"10"},
		dataFilter: filter2
	},
	check: {
		enable: true,
		chkStyle: "radio",
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

//双击展开菜单
function dblClickExpand(treeId, treeNode) {
	return true;
}

//用于对 Ajax 返回数据进行预处理的函数	
function filter2(treeId, parentNode, childNodes) {
	if (!childNodes) {
		return null;	
	}
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}

//加载机构树
function loadOrgTree() {
	$.fn.zTree.init($("#orgTreeDemo"), setting2);
}


//级联加载省市县
$("[name=province]").change(function() {
	var id = $(this).find("option:selected").attr("id");
	$.ajax({
	type : "POST",
	url : _path+"/invoicing/system/store/get/city/list",
	data : {
		'pid' : id
	},
	success : function(data) {
		$("[name=city]").empty();
		$.each(data, function(index, value) {
			if(value.name=='${store.city}'){
				$("<option id="+value.id+" selected='selected'  value=" + value.name + ">"
						+ value.name + "</option>")
						.appendTo($("[name=city]"));
			}else{
				$("<option id="+value.id+"  value=" + value.name + ">"
						+ value.name + "</option>")
						.appendTo($("[name=city]"));
			}
				});
		$('[name=city]').trigger("change");
	}
});
});

$("[name=city]").change(function() {
	 var id = $(this).find("option:selected").attr("id");
	$.ajax({
	type : "POST",
	url : _path+"/merge/store/get/city/list",
	data : {
		'pid' : id
	},
	success : function(data) {
		$("[name=district]").empty();
		$.each(data, function(index, value) {
			if(value.name=='${store.district}'){
				$("<option id="+value.id+" selected='selected' value=" + value.name + ">"
						+ value.name + "</option>")
						.appendTo($("[name=district]"));
			}else{
				$("<option id="+value.id+" value=" + value.name + ">"
						+ value.name + "</option>")
						.appendTo($("[name=district]"));
			}
				});
	}
});
});
$('[name=province]').trigger("change");

$("[name=remark]").on('input propertychange', function(event) {
    var _val = $("[name=remark]").val();
    _val = _val < 100 ? _val : _val.substr(0,100);
    $("[name=remark]").val(_val);
});

//点击：选择管理机构触发事件
$("[name=orgCheck]").on("click",function(){
    //先加载：机构树
	loadOrgTree();
    
    $('#orgTreeDiv').modal('show');
});	

//选中机构带机构id返回界面
$("[name=checkOrgSure]").on("click",function(){
   
    var treeObj=$.fn.zTree.getZTreeObj("orgTreeDemo");
  	var selNodes=treeObj.getCheckedNodes(true);
  	var selAuthId = ""; 
  	for(var i=0;i<selNodes.length;i++){
  		$("[name=orgId]").val(selNodes[i].id);
  		$("[name=managerOrg]").val(selNodes[i].name);
      	selAuthId+=selNodes[i].id + ",";
      	
      }
  	if(selAuthId==""){
  		callmodalFun('选择机构','');
  		return false;
  	}
  	
  	 $('.modal-distribution').modal('hide');
});

$("#store-add-form").find("[name=cancelButton]").click(function(){
	$.changePage(_path+"/merge/store/list"+"?_="+(new Date()).getTime());
});

 $("#store-add-form").find("[name=addSub]").click(function(){
     
	if ($("[name=orgId]").val() == '') {
		callmodalFun('选择管理机构','');
  		return false;
	}
	 
	 $('#store-add-form').bootstrapValidator('validate');
	 if(!$('#store-add-form').data('bootstrapValidator').isValid()){  
         return false;  
     } 
	
	 if($("[name=formatType]").val() == 6){
		 $("[name=remark1]").remove();
		 $("#store-add-form").append('<input type="hidden" name="remark1" value="1" >')
	 }
	 
	  $.ajax({
		type : "post",
		url : _path+"/merge/store/add",
		data :$("#store-add-form").serialize(),
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
				var jumpUrl = '/merge/store/list';
					timedTaskFun(1000,'添加成功！',jumpUrl,'correct');
			}else if (data != null && data != 'undefined'
					&& data == 1113) {
				timedTaskFun(2000,'同顶级机构tree下，此门店名称已存在，请重新输入！','','err');
			} else if (data != null && data != 'undefined'
					&& data == 1111) {
				timedTaskFun(2000,'用户名已存在，请重新输入！','','err');
			}else {
				timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
			}
		}
	 });
}); 

 $('#store-add-form').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
			},
     fields: {
    	 storeName: {
             validators: {
                 notEmpty: {
                     message: '门店名称不能为空'
                 },
                 stringLength: {
                     min: 1,
                     max: 50,
                     message: '最多可输入50个汉字'
                 }
             }
         },
    	 storeAbbreviation: {
             validators: {
                 notEmpty: {
                     message: '门店简称不能为空'
                 },
                 stringLength: {
                     min: 1,
                     max: 25,
                     message: '最多可输入25个汉字'
                 }
             }
         },
         userName: {
             validators: {
                 notEmpty: {
                     message: '用户名称不能为空'
                 },
                 stringLength: {
                     min: 1,
                     max: 25,
                     message: '最多可输入25个字符'
                 },
                 regexp: {
                     regexp: /^[a-zA-Z0-9]+$/,
                     message: '用户名由英文或与数字组成'
                 }
             }
         },
         contactName: {
             validators: {
            	 stringLength: {
                     min: 1,
                     max: 25,
                     message: '最多可输入25个汉字'
                 }
             }
         },
         contactPhone: {
             validators: {
            	 regexp: {
                     regexp: /^1[3|5|8]{1}[0-9]{9}$/,
                     message: '请输入正确的联系人电话'
                 }
             }
         },
         type: {
             validators: {
                 notEmpty: {
                     message: '请选择门店类型'
                 }
             }
         },
         formatType: {
             validators: {
                 notEmpty: {
                     message: '请选择业态类型'
                 }
             }
         }
     }
 });