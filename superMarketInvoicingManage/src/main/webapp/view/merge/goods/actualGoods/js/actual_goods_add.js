//加载商品类目
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
		var _setting = zTree(_ajaxTreeUrl,"",false,function(nodeId,nodeName,treeNode) {
			var canUse = false;
			var is4Level = (treeNode.categoryLevel==4);
			if(_userRelationCategory.length>0){
				$.each(_userRelationCategory,function(i,obj){
					if(nodeId == obj){
						canUse = true;
						return false;
					}
				});
			}
			if(!canUse){
				callmodalFun('您没有关联该类目，无法在该类目下创建商品！');
			}else if(!is4Level){
				callmodalFun('您只能在第四级类目下创建商品！');
			}else {
				$("[name=goodsCategoryName]").val(nodeName);
				$("[name=goodsCategoryId]").val(nodeId);
			}
		});
		//设置根节点
		var _root = [{id:0,name:'全部类目',checked:false,isParent:true,open:true}];
		//后：进行初始化
		$.fn.zTree.init($(_treeUlId),_setting);
		//自动展开根节点
		var _treeObj = $.fn.zTree.getZTreeObj(treeUlId);
		var node = _treeObj.getNodeByParam('id', 0);//获取id为0的点
		_treeObj.selectNode(node);//选择点
		_treeObj.expandNode(node,true,true,true);
	}
	//======================调用树  end===========================
		
  //=======================属性列表单出层start======================
    $("#popSelectPropertiesList").on("click",function(){
        $('#property-modal-distribution').modal('show');
        getData();
    });

  //加载属性列表
    var buttonsArr =[];
      function getData(){
          var _options ={
              url:_path+"/goods/purchase/tree/property/list"
              ,checkAll:true
              //查询条件
              ,data:{'propertyName':$("[name=propertyName]").val()
              	  ,'propertyType':1,'categoryId':$('[name=goodsCategoryId').val()}
              ,cloumns:[
			{name:'序号',value:'orderNumber'}
                  ,{name:'所属分类',value:'categoryName'}
                  ,{name:'属性名称',value:'propertyName'}
                  ,{name:'属性类型',value:'operate',type:"function", fun : function(obj){
                  	var html="";
                  	
                  	if (obj.propertyType == 1) {
                  		html = "销售属性";
                  	} else if (obj.propertyType == 2) {
                  		html = "辅助属性";
                  	}
              	
                  	return html;
                    }
                  ,}
              ]
              ,buttons:buttonsArr
          };
          $(".ticket_table_content").grid(_options);
      }
      //搜索
      $("#searchBtn").click(function(){
		getData();
		})
	//选中属性将属性名称和属性ID返回界面
    $("[name=checkPropertySure]").on("click",function(){
    	$("#property-modal-distribution [name=checkchild]").empty();
    	if($("#property-modal-distribution [name=checkchild]").filter(":checked").length>2){
    		callmodalFun('最多只能选择两个属性！');
    		return false;
    	}
	
      	//清空属性checkbox列表
      	$("#selPropertyResult").find('tr:eq(1) td').empty();
    	var _td = $("#selPropertyResult tr:eq(1) td");
      	//===========对销售属性列表中的checkbox 按id进行排序 start ==========
      	var checkedCheckchildList = $.makeArray($('#property-modal-distribution :checked[name=checkchild]'));
      	checkedCheckchildList.sort(function(a,b){
				var aPropertyId = parseInt($(a).val());
				var bPropertyId = parseInt($(b).val());
				return aPropertyId-bPropertyId;
			});
      	//===========对销售属性列表中的checkbox 按id进行排序 end ==========
      	//获取选择的结果
      	var proArr=[];
      	var selPropertyResultTrListHtml=[];
      	$.each(checkedCheckchildList,function(i,ele){
      			var propertyId = $(this).val();
      			var propertyName = $(this).closest("tr").find("td:eq(3)").text().trim();
      			var _input = $('<input type="checkbox" name="property" id="'+propertyId
      					+'" value="'+propertyName
      					+'" style="margin-left:2%;">').appendTo(_td);
      			var _span = $('<span>&nbsp;'+propertyName+'</span>').appendTo(_td);
      			
      			//选择：属性触发事件
      			_input.click(function(e){
      				if($("#selPropertyResult").find("[name=property]").filter(":checked").length>2){
      					e.preventDefault();
      					callmodalFun('最多只能选择两个属性！');
      					return ;
      				};
      				if ($(this).prop("checked")) {
      					var _propertyId = $(this).attr("id");
      				  //异步发送请求：进行查询
      	 			  $.ajax({
      	 				type : "post",
      	 				url : _path+"/merge/actual/goods/get/property/detail",
      	 				data :{'propertyId':_propertyId},
      	 				//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
      	                beforeSend: function () {
      	                    //加载中
      	                    waitload();
      	                },
      	 				success : function(data) {
      						closewait();
      	 					//若执行成功的话，则隐藏进度条提示
      	 					if (data != null && data != 'undefined') {
      	 						var _propertyName = data.propertyName;
      	 						var _propertyId = data.id;
      	 						
      	 						var _tr = $('<tr propertyId="'+_propertyId+'" propertyName="'+_propertyName+'" ></tr>').appendTo($("#selPropertyValue"));
      	 						var _th = $('<th>'+_propertyName+'</th>').appendTo(_tr);
      	 						var _td = $('<td></td>').appendTo(_tr);
      	 						
      	 						$.each(data.propertyValueList,function(i,obj){
      	 							var _input = $('<input type="checkbox"  name="propertyVal"  id="'+obj.id+'"  propertyId="'+obj.propertyId+'" propertyName="'+_propertyName+'" value="'+obj.propertyValue+'" style="margin-left:2%;" /> ').appendTo(_td);
      	 							var _span = $('<span>&nbsp;'+obj.propertyValue+'</span>').appendTo(_td); 
      	 							/* alert(obj.id);
      	 							alert(obj.propertyValue);
      	 							alert(obj.propertyId); */
      	 						});
      	 						//============对属性值列表按属性id大小重排序 start===============
      	 						var propertyValTrList = $.makeArray($('#selPropertyValue').find('tr'));
      	 						propertyValTrList.sort(function(a,b){
      	 							var aPropertyId = parseInt($(a).attr('propertyid'));
      	 							var bPropertyId = parseInt($(b).attr('propertyid'));
      	 							return aPropertyId-bPropertyId;
      	 						});
      	 						$.each(propertyValTrList,function(i,ele){
      	 							$('#selPropertyValue').find('tbody').append(ele);
      	 						});
      	 						
      	 						//============对属性值列表按属性id大小重排序 end===============
      	 					} else {
      	 						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
      	 					}
      	 				}
      	 			 });
      				
      				}else {
          				$("#selPropertyValue").find("tr[propertyid='"+$(this).attr("id")+"'] ").remove();
      				}
      			});
      	});
      	//清空属性值checkbox列表
      	$("#selPropertyValue").empty();
      	//清空销售属性商品列表 。。。
      	$("#property_assemble").empty();
      	$('#property-modal-distribution').modal('hide');
    });
    //=======================属性列表单出层end======================	
    	
});

//=========================add by wanghao 加载品牌弹出层start======================
$(function(){
	
	 $("#checkBrand").on("click",function(){
	        $('#brand-modal-distribution').modal('show');
	        getBrandData();
	    });
	 
	 var buttonsArr =[];
	 function getBrandData(){
		// debugger;
         var _options ={
             parentMark:".brand_table_content",	 
             url:_path+"/goods/brand/list"
             ,checkAll:true
             //查询条件
             ,data:{'keywords':$("[name=keywords]").val()}
             ,cloumns:[
					{name:'品牌编号',value:'id'}
                 ,{name:'品牌名称',value:'brandName'}
                 ,{name:'英文名称',value:'brandEnglishName'}
                 ,{name:'首字母',value:'brandInitial'}
             ]
             ,buttons:buttonsArr
         };
         $(".brand_table_content").grid(_options);
     }
		//根据品牌名搜索
		$("#brandSearchBtn").click(function(){
			getBrandData();
			
		});
		//选中一个品牌并返回到添加页面
		
		$("#checkbrandSure").click(function (){
			var brandId;
			var brandName;
			var n=0;
			$("[name=checkchild]").empty();
			$("#brand-modal-distribution [name=checkchild]").each(function (i){
				//debugger;
				if($(this).prop("checked")){
					n++;
					brandId = $(this).val();
					brandName=$(this).closest("tr").find("td:eq(2)").text().trim();
				}
			});
				if(n==0){
					timedTaskFun(1000,'至少选中一个品牌名','','err');
					}else if(n>1){
					timedTaskFun(1000,'只能选择一个品牌名','','err');
					}else{
					$("[name=brandName]").val(brandName);
					$("[name=brandId]").val(brandId);
			      	$('#brand-modal-distribution').modal('hide');
				}
			
		});
		
	//判断是否有保质期，若没有保质期则隐藏保质期文本框
		$("[name=isQualityAssurance]").click(function(){
			var isQualityAssurance=$(this).val();
			if(isQualityAssurance==0){
				$(".quality_assurance_days").hide();
			}else{
				$(".quality_assurance_days").show();
			}
			
		});
		
		//判断是否有包装参数，若没有则隐藏有关包装参数的设置。
		$("input[name=specifications]").click(function (){
			var specificationsV=$(this).val();
			if(specificationsV==0){
				$(".package_param").hide();
			}else{
				$(".package_param").show();
			}
		});	
});
//=========================加载品牌弹出层end======================

//========================加载国别start=========================
$(function(){
	//加载国别
	getCountryTypeDate();
	
	function getCountryTypeDate(){
		$.ajax({
			type : "post",
			url : _path+"/merge/goods/country/code/list",
			data :{
				'countryCode':''
			},
			//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
        beforeSend: function () {
            //加载中
            waitload();
        },	
			success : function(data) {
			closewait();
			var countryCodeOption=$("#countryCode");
				$.each(data,function(i,obj){
					if(obj.countryCode==142){
						countryCodeOption.append("<option value='"+obj.countryName+"' selected=selected countryValue='"+obj.countryCode+"'>"+obj.countryName+"</option>");
					}else{
						countryCodeOption.append("<option value='"+obj.countryName+"'countryValue='"+obj.countryCode+"'>"+obj.countryName+"</option>");
					}
					
				});
			}
		 });
	}
	//国别选择其他国家时隐藏省市
	//$('#prov-div').hide();
	$("[name=country]").change(function (){
		var countryCode = $(this).find("option:selected").attr("countryValue");
		if(countryCode!="142"){
			$('#prov-div').hide();
			//$('#prov-div').empty();
			$('[name=prov]').attr("disabled",true);
			$('[name=city]').attr("disabled",true);
		}else{
			$('#prov-div').show();
			$('[name=prov').attr("disabled",false);
			$('[name=city]').attr("disabled",false);
		}
	});
	//加载省市区start
	$("[name=prov]").change(function() {
		var id = $(this).find("option:selected").attr("id");
		$.ajax({
		type : "POST",
		url : _path+"/merge/actual/goods/city/getListByPid",
		data : {
			'pid' : id
		},
		success : function(data) {
			$("[name=city]").empty();
			$.each(data, function(index, value) {
						$("<option id="+value.id+"  value=" + value.name + ">"
								+ value.name + "</option>")
								.appendTo($("[name=city]"));
					});
			$('[name=city]').trigger("change");
		}
	});
	});
//加载省市区end
$('[name=prov]').trigger("change");
//========================加载国别end=========================
//加载销售单位
getSaleGoodsUnit();
//加载采购单位

//获取销售单位数据
function getSaleGoodsUnit(){
	$.ajax({
		type : "POST",
		url : _path+"/goods/unit/units",
		data : {
			'unitType':""
		},
		success : function(data) {
				$.each(data, function(index, value) {
					//用来判断区分销售单位和采购单位1-undefined
					//alert(value.id+"-"+value.unitType);
					if(value.unitType==1||value.unitType==undefined){
						$("<option  saleunitenglishname="+value.unitEnglishName+" saleunitname="+value.unitName+"  value=" + value.id+ ">"+ value.unitName + "</option>").appendTo($("[name=saleUnitId]"));
					}
					if(value.unitType==2||value.unitType==undefined){
						$("<option  unitenglishname="+value.unitEnglishName+" unitname="+value.unitName+"  value=" + value.id+ ">"+ value.unitName + "</option>").appendTo($("[name=unitId]"));
					}
				});
			
		}
	});
}
});




$(function(){
	//点击：取消按钮
	$("#actual-goods-add-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/merge/actual/goods/list"+"?_="+(new Date()).getTime());
	});
	
	
	
	//点击：添加按钮触发事件
	 $("#actual-goods-add-form").find("[name=addSub]").click(function(){
		//==================数据字段校验 start===================
	    $('#actual-goods-add-form').bootstrapValidator('validate');
		if(!$('#actual-goods-add-form').data('bootstrapValidator').isValid()){  
	            return false;  
	        }
		if($('#isMultiProperties').is(':checked')){//多销售属性，提示选择属性和属性值
			
			if($("input:checked[name=property]").length<=0){
			 	callmodalFun("请至少选择一个属性。");
				return;
			}
			 
			if($("input:checked[name=propertyVal]").length<=0){
			 	callmodalFun("请至少选择一个属性值。");
				return;
			}
			if($("#property_assemble").find("tr:gt(0)").length<=0){
			 	callmodalFun("请点击快速生成按钮，生成属性组合。");
				return;
			}
		}
		//==================数据字段校验 end ===================
		 var _properList = {};
		 
		 
		//===============获取：所选属性 start
		var _selPropertyList = [];
		if ($("#selPropertyResult").find("[name=property]").length > 0) {
			$("#selPropertyResult").find("[name=property]").each(function(){
				if ($(this).prop("checked")) {
					var _selPropertyObj = {'propertyId':$(this).attr('id'),'propertyName':$(this).val()};
					_selPropertyList.push(_selPropertyObj);
				}
			})
			
			_properList['salePropertys'] = _selPropertyList;
		}
		//===============获取：所选属性 end
		
		
		//===============获取：所选属性值 start
		if ($("#selPropertyValue").find("tr").length > 0) {
			$("#selPropertyValue").find("tr").each(function(){
				//每行对应一个【属性值】数组
				var _selPropertyValueList = [];
				$(this).find("[name=propertyVal]").each(function() {
					if ($(this).prop("checked")) {
						var _selPropertyValueObj = {'propertyValueId':$(this).attr('id'),'propertyValueName':$(this).val()};
						_selPropertyValueList.push(_selPropertyValueObj);
					}
				})
				var _propertyId = $(this).attr("propertyId");
				_properList[_propertyId] = _selPropertyValueList;
			})
		}
		//===============获取：所选属性值 end
		
	   //===============获取：销售属性列表 start	
	   var _salePropertyList = [];
	  $("#property_assemble").find("tr:gt(0)").each(function(){
		  //获取：每行销售属性对象
		  var _saleProperty1 = $(this).attr("propertyId1");
		  var _saleProperty2 = $(this).attr("propertyId2");
		  if (_saleProperty1 && _saleProperty2 ) {
			  //属性1和2都不为空的情况
			  var _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
					  									  ,'propertyId2':_saleProperty2,'propertyName2':$(this).attr("propertyName2"),'propertyValueId2':$(this).attr("propertyValueId2"),'propertyValueName2':$(this).attr("propertyValue2")
					  									  /*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
					  									  ,'barCode':$(this).find("[name=barcodes]").val()};
			  
			  _salePropertyList.push(_salePropertyJsonObj);
		  } else if (_saleProperty1 && !_saleProperty2 ) {
			  //只有：一个销售属性
			  var _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
					  									 /*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
					  										,'barCode':$(this).find("[name=barcodes]").val()};
			  
			  _salePropertyList.push(_salePropertyJsonObj);
		  } else if (!_saleProperty1 && _saleProperty2 ) {
			  //只有：一个销售属性
			  var _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
					  									/*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
					  									  ,'barCode':$(this).find("[name=barcodes]").val()};
			  
			  _salePropertyList.push(_salePropertyJsonObj);
		  }
		 
		  _properList['salePropertyList'] = _salePropertyList;
	  });	
	  //===============获取：销售属性列表 end	
	 
	 //存放如隐藏域中（requestGoodsSaleInfo）
	  $("input[name=requestGoodsSaleInfo]").val(JSON.stringify(_properList));
	  //console.log($("#actual-goods-add-form").serialize());
	   
	  console.log($("#actual-goods-add-form").serialize());
		//组装完成的对象
	  	//获取销售单位名称和英文名称并赋予隐藏域
	  	  //销售属性
	  	  var sale_unit=$("select[name=saleUnitId] option:selected");
		  if(sale_unit){
			  $("[name=saleUnitEnglishName]").val(sale_unit.attr("saleunitenglishname"));
			  $("[name=saleUnitName]").val(sale_unit.attr("saleunitname"));
		  }
		  //采购属性
		  var purchase_unit=$("select[name=unitId] option:selected");
		  if(purchase_unit){
			  $("[name=unitEnglishName]").val(purchase_unit.attr("unitenglishname"));
		  	  $("[name=unitName]").val(purchase_unit.attr("unitname"));
		  }
		 
		  
		  
	  //异步发送请求：进行添加
	  $.ajax({
		type : "post",
		url : _path+"/merge/actual/goods/add",
		data :$("#actual-goods-add-form").serialize(),
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
				//alert-success 成功，alert-info信息，alert-warning警告，alert-danger错误 
				var jumpUrl = '/merge/actual/goods/list';
					timedTaskFun(1000,'商品添加成功',jumpUrl,'correct');
			} else if (data == -1) {
				timedTaskFun(2000,'商品名称已存在','','err');
			} else {
				timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
			}
		}
	 });
 	}); 
//		地区（国别）下拉框搜索；
	 $("#countryCode").select2();
});


$(function(){
	//多属性设置
	 $("#isMultiProperties").click(function (e){
		 if($("input[name='goodsCategoryId']").val()){//是否选择商品类目
			 if($("#isMultiProperties").is(":checked")){
				 $("#goods_poperty_div").show();
				 //快速生成按钮
				 $("#rapidCombination_div").show();
				 //商品SKU列表
				 $("#property_assemble").show();
				 //添加禁用属性
				 $("#manufacturerNo").attr("disabled","disabled");
				 //移除原提示属性
				 $("#manufacturerNo").removeAttr("placeholder");
				 $("#barcode").attr("disabled","disabled");
				 $("#barcode").removeAttr("placeholder");
				 //被选中时清空值
				 if($("#manufacturerNo").val()!=""){
					 $("#manufacturerNo").val(""); 
				 }
				 if($("#barcode").val()!=""){
					 $("#barcode").val(""); 
				 }
			 }else{
				 $("#goods_poperty_div").hide();
				 //快速生成按钮
				 $("#rapidCombination_div").hide();
				//商品SKU列表
				 $("#property_assemble").hide();
				 $("#manufacturerNo").removeAttr("disabled");
				 $("#manufacturerNo").attr("placeholder","字符0~20位");
				 $("#barcode").removeAttr("disabled");
				 $("#barcode").attr("placeholder","整数0~18位");
			 }
			 
		 }else {
			 e.preventDefault();//阻止“多销售属性 ”选中
			 callmodalFun("请先选择商品类目！");
		 }
	}); 
	
	
	//点击“：快速生成销售属性
	$("#rapidCombination").click(function(){
		if($("input:checked[name=property]").length<=0){
			 	callmodalFun("请至少选择一个属性。");
				return;
			}
		if($("input:checked[name=propertyVal]").length<=0){
		 	callmodalFun("请至少选择一个属性值。");
			return;
		}
		//根据获取：选中的【属性值】，生成对应的销售属性
		if ($("#selPropertyValue").find("tr").length > 0) {
			var _saleProperty1 = "";
			var _saleProperty2 = "";
			
			var _salePropertyList1 = [];
			var _salePropertyList2 = [];
			$("#selPropertyValue").find("tr").each(function(i,obj){
					//每行对应一个【属性值】数组
					var _selPropertyValueList = [];
					if (i == 0) {
						//属性1
						$(this).find("[name=propertyVal]").each(function() {
							if ($(this).prop("checked")) {
								_saleProperty1 = $(this).attr("propertyName");
								var _selPropertyValueObj = {'propertyId':$(this).attr("propertyId"),'propertyName':$(this).attr("propertyName"),'propertyValueId':$(this).attr('id'),'propertyValueName':$(this).val()};
								_salePropertyList1.push(_selPropertyValueObj);
							}
						})
					} else if (i == 1) {
						//属性2
						$(this).find("[name=propertyVal]").each(function() {
							if ($(this).prop("checked")) {
								_saleProperty2 = $(this).attr("propertyName");
								var _selPropertyValueObj = {'propertyId':$(this).attr("propertyId"),'propertyName':$(this).attr("propertyName"),'propertyValueId':$(this).attr('id'),'propertyValueName':$(this).val()};
								_salePropertyList2.push(_selPropertyValueObj);
							}
						})
					}
				})
				
				//=====================先：生成标题 start
				var _table=$("#property_assemble");
				_table.empty();
				//显示快速生成组合表
				_table.show();
				var _titleTr = $('<tr></tr>').appendTo(_table);
				if (_saleProperty1 != null && _saleProperty1 != '') {
					var _property1Th = $('<th>'+_saleProperty1+'</th>').appendTo(_titleTr);
				}
				if (_saleProperty2 != null && _saleProperty2 != '') {
					var _property2Th = $('<th>'+_saleProperty2+'</th>').appendTo(_titleTr);
				}
				var _barCodeTh = $('<th>条形码</th>').appendTo(_titleTr);
				//var _hhTh = $('<th>厂家货号</th>').appendTo(_titleTr);
				var _operateTh = $('<th>删除</th>').appendTo(_titleTr);
				//=====================先：生成标题 end
				
				//=====================将：属性值进行组合生成 start
				//循环：属性列表
				if (_saleProperty1 != null && _saleProperty1 != ''
							&& _saleProperty2 != null && _saleProperty2 != '') {
					//属性1和属性2都不为空，进行组合
					$.each(_salePropertyList1,function(m,prov1) {
						$.each(_salePropertyList2,function(n,prov2) {
							var _trValue = $('<tr propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId
													+'" propertyValue1="'+prov1.propertyValueName+'" propertyId2="'+prov2.propertyId+'" propertyName2="'+prov2.propertyName
													+'"propertyValueId2="'+prov2.propertyValueId+'" propertyValue2="'+prov2.propertyValueName+'"></tr>').appendTo(_table);
							var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
							var _property1Th = $('<td >'+prov2.propertyValueName+'</td>').appendTo(_trValue);
							var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes'/></td>").appendTo(_trValue);
							/*var _hhValueTh = $("<td><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='' /></td>").appendTo(_trValue);*/
							var _delTh = $('<td></td>').appendTo(_trValue);
							var delBtn = $('<input type="button" name="del" value="删除" class="btn btn-primary"  />').appendTo(_delTh);
							//点击：删除按钮触发事件
							delBtn.click(function(){
								$(this).parents("tr").remove();
							}); 
						});
					});
				} else if (_saleProperty1 != null && _saleProperty1 != ''
							&& (_saleProperty2 == null || _saleProperty2 == '')) {
					//只有：一个属性
					$.each(_salePropertyList1,function(m,prov1) {
						var _trValue = $('<tr propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
						var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes'/></td>").appendTo(_trValue);
						/*var _hhValueTh = $("<th><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='' /></th>").appendTo(_trValue);*/
						var _delTh = $('<th><input type="button" name="del" value="删除" class="btn btn-primary"  /></th>').appendTo(_trValue);
						//点击：删除按钮触发事件
						_delTh.click(function(){
							$(this).parents("tr").remove();
						}); 
					});
					
				} else if ((_saleProperty1 == null || _saleProperty1 == '') 
							&& _saleProperty2 != null && _saleProperty2 != '') {
					//只有：一个属性
					$.each(_salePropertyList2,function(m,prov1) {
						var _trValue = $('<tr propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
						var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes'/></td>").appendTo(_trValue);
						/*var _hhValueTh = $("<th><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='' /></th>").appendTo(_trValue);*/
						var _delTh = $('<th><input type="button" name="del" value="删除" class="btn btn-primary"  /></th>').appendTo(_trValue);
						//点击：删除按钮触发事件
						_delTh.click(function(){
							$(this).parents("tr").remove();
						}); 
					});
				}
				//=====================将：属性值进行组合生成 end
				
		}
		
		/* */
		
	})
	//form表单进行校验
	$('#actual-goods-add-form').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
			},
        fields: {
        	//商品名称
        	goodsName: {
                message: '商品名称验证失败',
                validators: {
                    notEmpty: {
                        message: '商品名称不能为空'
                    },
                    stringLength: {
                        max: 50,
                        message: '最多可输入50个汉字'
                    }
                }
            },
			//厂家货号    manufacturerNo
            manufacturerNo: {
                message: '厂家货号验证失败',
                validators: {
                    regexp: {
            			regexp: /^[0-9a-zA-Z!@#$%&',;=?*]{0,20}$/,
            			message: '厂家货号必须为小于20位的字符'
            				}
                }
            },
			//条码    barcode
            barcode: {
                message: '条码验证失败',
                validators: {
                    stringLength: {
                        max: 18,
                        message: '最多可输入18个数字'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//质保天数    qualityAssuranceDays
            qualityAssuranceDays: {
                message: '质保天数验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 4,
                        message: '质保天数为1到4位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//包装件数   number
            number: {
                message: '包装件数验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '起装件数为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//起售量  saleVolume
            saleVolume: {
                message: '起售量验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '起售量为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//尺寸  长   length
            length: {
                message: '长度验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '商品长度为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//尺寸  宽   width
            width: {
                message: '宽度验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '商品宽度为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//尺寸  高  height
            height: {
                message: '高度验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '商品高度为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//商品重量 weight
            weight: {
                message: '商品重量验证失败',
                validators: {
                	stringLength: {
                    	min:1,
                        max: 8,
                        message: '商品重量为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
			//主供商  supplierName
            supplierName: {
                message: '主供商验证失败',
                validators: {
                    stringLength: {
                        max: 20,
                        message: '最多可输入20个'
                    }
                }
            },
			//最小起订量  minBuyNum
            minBuyNum: {
                message: '最小起订量验证失败',
                validators: {
                    stringLength: {
                    	min:1,
                        max: 8,
                        message: '最小起订量为1到8位整数'
                    },
                    regexp: {
            			regexp: /^[0-9]*[1-9][0-9]*$/,
            			message: '请输入整数'
            				}
                }
            },
            buyNum: {
            	 message: '采购单位验证失败',
                 validators: {
                     regexp: {
             			regexp: /^[0-9]*[1-9][0-9]*$/,
             			message: '请输入整数'
             				}
                 }
            }
        }
    });
})

	    
    	   
