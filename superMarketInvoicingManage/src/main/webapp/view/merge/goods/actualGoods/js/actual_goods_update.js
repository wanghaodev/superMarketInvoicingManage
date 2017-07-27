//加载采购Tree
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
//					$("[name=goodsCategoryName]").val(nodeName);
//					$("[name=goodsCategoryId]").val(nodeId);
		});
		
		//后：进行初始化
		$.fn.zTree.init($(_treeUlId),_setting);
	}
	//======================调用树  end===========================
});


$(function(){
	//点击：取消按钮
	$("#actual-goods-update-form").find("[name=cancelButton]").click(function(){
		$.changePage(_path+"/merge/actual/goods/list"+"?_="+(new Date()).getTime());
	});
	
	
	
	//点击：添加按钮触发事件
	 $("#actual-goods-update-form").find("[name=addSub]").click(function(){
		//==================数据字段校验 start===================
	    $('#actual-goods-update-form').bootstrapValidator('validate');
		if(!$('#actual-goods-update-form').data('bootstrapValidator').isValid()){  
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
						if(!$(this).prop("disabled")){//非禁用的增加isNew标识，标识新选择的属性值
							_selPropertyValueObj.isNew = 1;
						}
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
		  //设置销售属性主键id，用于标识更新操作
		  var saleIdVal = $(this).attr("saleId");
		  if (_saleProperty1 && _saleProperty2 ) {
			  //属性1和2都不为空的情况
			  var _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
					  									  ,'propertyId2':_saleProperty2,'propertyName2':$(this).attr("propertyName2"),'propertyValueId2':$(this).attr("propertyValueId2"),'propertyValueName2':$(this).attr("propertyValue2")
					  									 /* ,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
					  									   ,'barCode':$(this).find("[name=barcodes]").val()};
			  
			  if(saleIdVal){
				  _salePropertyJsonObj.saleId=saleIdVal;
			  }
			  _salePropertyList.push(_salePropertyJsonObj);
		  } else if (_saleProperty1 && !_saleProperty2 ) {
			  //判断是否为默认销售属性
			  var acquiescentProp=$("input[name=barcode]").val();
			  var _salePropertyJsonObj =null;
			  if(acquiescentProp!=""&&acquiescentProp!="undefined"){
				  _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
							 /*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
							   ,'barCode':acquiescentProp}; 
			  }else{
				  //只有：一个销售属性
				  _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
							 /*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
							   ,'barCode':$(this).find("[name=barcodes]").val()};
			  }
			 
			   
			  if(saleIdVal){
				  _salePropertyJsonObj.saleId=saleIdVal;
			  }
			  _salePropertyList.push(_salePropertyJsonObj);
		  } else if (!_saleProperty1 && _saleProperty2 ) {
			  //只有：一个销售属性
			  var _salePropertyJsonObj = {'propertyId1':_saleProperty1,'propertyName1':$(this).attr("propertyName1"),'propertyValueId1':$(this).attr("propertyValueId1"),'propertyValueName1':$(this).attr("propertyValue1")
					  									/*,'barCode':$(this).find("[name=barcodes]").val(),'manufacturerNo':$(this).find("[name=manufacturerNos]").val()};*/
					  									  ,'barCode':$(this).find("[name=barcodes]").val()};
			  if(saleIdVal){
				  _salePropertyJsonObj.saleId=saleIdVal;
			  }
			  _salePropertyList.push(_salePropertyJsonObj);
		  }
		 
		  _properList['salePropertyList'] = _salePropertyList;
	  });	
	  //===============获取：销售属性列表 end	
	 
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
	 //存放如隐藏域中（requestGoodsSaleInfo）
//	  console.log(JSON.stringify(_properList));
	  $("input[name=requestGoodsSaleInfo]").val(JSON.stringify(_properList));
		//组装完成的对象
		 
	  //异步发送请求：进行添加
	  $.ajax({
		type : "post",
		url : _path+"/merge/actual/goods/update",
		data :$("#actual-goods-update-form").serialize(),
		//请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
             beforeSend: function () {
                 //加载中
                 waitload();
             },
		success : function(data) {
		closewait();
			if(data.code==1){
					var jumpUrl = '/merge/actual/goods/list';
						timedTaskFun(1000,'商品添加成功',jumpUrl,'correct');
			}else if(data.code==-2){
					callmodalFun('SKU已经定价或入库，不能修改。');
					$('#actual-goods-update-form').find('input,select').attr('disabled',true);
			}else{
				timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
			}

		}
             
	 });
 	}); 
	 
//		下拉框搜索；

   	 $("#countryCode").select2();
});


$(function(){

	
	
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
				var _SKUTh = $('<th>SKU</th>').appendTo(_titleTr);
				var _barCodeTh = $('<th>条形码</th>').appendTo(_titleTr);
				/*var _hhTh = $('<th>厂家货号</th>').appendTo(_titleTr);*/
				var _operateTh = $('<th>删除</th>').appendTo(_titleTr);
				//=====================先：生成标题 end
				
				//=====================将：属性值进行组合生成 start
				//循环：属性列表
				if (_saleProperty1 != null && _saleProperty1 != ''
							&& _saleProperty2 != null && _saleProperty2 != '') {
					//属性1和属性2都不为空，进行组合
					$.each(_salePropertyList1,function(m,prov1) {
						$.each(_salePropertyList2,function(n,prov2) {
							//====================该销售属性是否已经存在数据库中 start============================
							var isExist = false;
							var goodsSaleId = "";
							var oldBarcodes="";
							/*var oldManufacturerNos="";*/
							var oldSKU = "";
							$.each(window._goodsSaleList,function(i,obj){
								var salePropertyList = eval('('+obj.salePropertyList+')');
								isExist = prov1.propertyId ==salePropertyList.propertyId1 && prov1.propertyValueId ==salePropertyList.propertyValueId1 
										&&  prov2.propertyId ==salePropertyList.propertyId2 && prov2.propertyValueId ==salePropertyList.propertyValueId2;
								//属性1和属性2的顺序可能颠倒所以多判断一次
								isExist = isExist||(
										prov1.propertyId ==salePropertyList.propertyId2 && prov1.propertyValueId ==salePropertyList.propertyValueId2 
										&&  prov2.propertyId ==salePropertyList.propertyId1 && prov2.propertyValueId ==salePropertyList.propertyValueId1		
								);
							
								if(isExist){
									goodsSaleId = obj.id;
									oldBarcodes = obj.barcode;
									/*oldManufacturerNos = obj.manufacturerNo;*/
									oldSKU = obj.goodsSku;
									return false;//跳出该$.each循环
								}
							}) 
							//====================该销售属性是否已经存在数据库中 end============================
							var _trValue;
							if(isExist){//增加属性saleId标识是已经保存过的数据
								_trValue = $('<tr saleId="'+goodsSaleId+'" propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId
										+'" propertyValue1="'+prov1.propertyValueName+'" propertyId2="'+prov2.propertyId+'" propertyName2="'+prov2.propertyName
										+'"propertyValueId2="'+prov2.propertyValueId+'" propertyValue2="'+prov2.propertyValueName+'"></tr>').appendTo(_table);
							}else {
								_trValue = $('<tr  propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId
										+'" propertyValue1="'+prov1.propertyValueName+'" propertyId2="'+prov2.propertyId+'" propertyName2="'+prov2.propertyName
										+'"propertyValueId2="'+prov2.propertyValueId+'" propertyValue2="'+prov2.propertyValueName+'"></tr>').appendTo(_table);
								
							}
							var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
							var _property1Th = $('<td >'+prov2.propertyValueName+'</td>').appendTo(_trValue);
							var _SKUTh = $("<td >"+oldSKU+"</td>").appendTo(_trValue);
							var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes' value='"+oldBarcodes+"'/></td>").appendTo(_trValue);
							/*var _hhValueTh = $("<td><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='"+oldManufacturerNos+"' /></td>").appendTo(_trValue);*/
							var _delTh = $('<td></td>').appendTo(_trValue);
							var delBtn;
							if(!isExist){//不能删除已经保存过的数据
								delBtn = $('<input type="button" name="del" value="删除" class="btn btn-primary"  />').appendTo(_delTh);
								//点击：删除按钮触发事件
								delBtn.click(function(){
									$(this).parents("tr").remove();
								}); 
							}
						});
					});
				} else if (_saleProperty1 != null && _saleProperty1 != ''
							&& (_saleProperty2 == null || _saleProperty2 == '')) {
					//只有：一个属性
					$.each(_salePropertyList1,function(m,prov1) {
						//====================该销售属性是否已经存在数据库中 start============================
						var isExist = false;
						var goodsSaleId = "";
						var oldBarcodes="";
						var oldManufacturerNos="";
						var oldSKU = "";
						$.each(window._goodsSaleList,function(i,obj){
							var salePropertyList = eval('('+obj.salePropertyList+')');
							isExist = prov1.propertyId ==salePropertyList.propertyId1 && prov1.propertyValueId ==salePropertyList.propertyValueId1 ; 
							if(isExist){
								goodsSaleId = obj.id;
								oldBarcodes = obj.barcode;
								oldManufacturerNos = obj.manufacturerNo;
								oldSKU = obj.goodsSku;
								return false;//跳出该$.each循环
							}
						}) 
						//====================该销售属性是否已经存在数据库中 end============================
						
						if(isExist){//增加属性saleId标识是已经保存过的数据
							_trValue = $('<tr saleId="'+goodsSaleId+'" propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						}else {
							_trValue = $('<tr propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						}
						var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
						var _SKUTh = $("<td >"+oldSKU+"</td>").appendTo(_trValue);
						var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes' value='"+oldBarcodes+"'/></td>").appendTo(_trValue);
						/*var _hhValueTh = $("<th><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='"+oldManufacturerNos+"' /></th>").appendTo(_trValue);*/
						var _delTh = $('<td/></td>').appendTo(_trValue);
						var delBtn;
						if(!isExist){//不能删除已经保存过的数据
							delBtn = $('<input type="button" name="del" value="删除" class="btn btn-primary"  />').appendTo(_delTh);
							//点击：删除按钮触发事件
							delBtn.click(function(){
								$(this).parents("tr").remove();
							}); 
						} 
					});
					
				} else if ((_saleProperty1 == null || _saleProperty1 == '') 
							&& _saleProperty2 != null && _saleProperty2 != '') {
					//只有：一个属性
					$.each(_salePropertyList2,function(m,prov1) {
						//====================该销售属性是否已经存在数据库中 start============================
						var isExist = false;
						var goodsSaleId = "";
						var oldBarcodes="";
						var oldManufacturerNos="";
						var oldSKU = "";
						$.each(window._goodsSaleList,function(i,obj){
							var salePropertyList = eval('('+obj.salePropertyList+')');
							isExist = prov1.propertyId ==salePropertyList.propertyId1 && prov1.propertyValueId ==salePropertyList.propertyValueId1 ; 
							if(isExist){
								goodsSaleId = obj.id;
								oldBarcodes = obj.barcode;
								oldManufacturerNos = obj.manufacturerNo;
								oldSKU = obj.goodsSku;
								return false;//跳出该$.each循环
							}
						}) 
						//====================该销售属性是否已经存在数据库中 end============================
						if(isExist){//增加属性saleId标识是已经保存过的数据
							_trValue = $('<tr saleId="'+goodsSaleId+'" propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						}else {
							_trValue = $('<tr propertyId1="'+prov1.propertyId+'" propertyName1="'+prov1.propertyName+'" propertyValueId1="'+prov1.propertyValueId+'" propertyValue1="'+prov1.propertyValueName+'"></tr>').appendTo(_table);
						}
						var _property1Th = $('<td >'+prov1.propertyValueName+'</td>').appendTo(_trValue);
						var _SKUTh = $("<td >"+oldSKU+"</td>").appendTo(_trValue);
						var _barCodeValueTh = $("<td><input type='text' class='form-control'  name='barcodes' value='"+oldBarcodes+"'/></td>").appendTo(_trValue);
						/*var _hhValueTh = $("<th><input type='text' class='form-control'  name='manufacturerNos' id='manufacturerNos'  value='"+oldManufacturerNos+"' /></th>").appendTo(_trValue);*/
						var _delTh = $('<td/></td>').appendTo(_trValue);
						var delBtn;
						if(!isExist){//不能删除已经保存过的数据
							delBtn = $('<input type="button" name="del" value="删除" class="btn btn-primary"  />').appendTo(_delTh);
							//点击：删除按钮触发事件
							delBtn.click(function(){
								$(this).parents("tr").remove();
							}); 
						}
					});
				}
				//=====================将：属性值进行组合生成 end
				
		}
		
		/* */
		
	});
	
	
	//=========初始化页面属性及属性值显示 start=======
	var saleMap = window._saleMap;
	//==================组装保存的销售属性、属性值列表 start=========================
	var salePropertys  = saleMap.salePropertys;
	var _td = $("#selPropertyResult td");
	for(var i=0; i<salePropertys.length;i++ ){
		var _input = $('<input type="checkbox" disabled="disabled" checked="checked" name="property" id="'+salePropertys[i].propertyId
					+'" value="'+salePropertys[i].propertyName
					+'" style="margin-left:2%;">').appendTo(_td);
		var _span = $('<span>&nbsp;'+salePropertys[i].propertyName+'</span>').appendTo(_td);
		var propertyId = salePropertys[i].propertyId;

		//==================组装保存的属性值 start=========================
		//异步发送请求：进行查询
		$.ajax({
			async: false,//避免页面生成属性值列表 顺序随机现象
			type : "post",
			url : _path+"/merge/actual/goods/get/property/detail",
			data :{'propertyId':propertyId},
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
						//============判断是否需要选中 start =================
						var isChecked = false;
						var selectedPropertyValueList = saleMap[obj.propertyId];
						for(var j=0 ;j<selectedPropertyValueList.length;j++){
							if(selectedPropertyValueList[j].propertyValueId==obj.id){//该obj的属性值id，是否在saleMap中的对应销售属性的属性值列表中
								isChecked = true;
							}
						}
						//============判断是否需要选中 end  =================
						
						var _input;
						if(isChecked){
							_input = $('<input type="checkbox" disabled="disabled" checked="checked" name="propertyVal"  id="'+obj.id+'"  propertyId="'+obj.propertyId+'" propertyName="'+_propertyName+'" value="'+obj.propertyValue+'" style="margin-left:2%;" /> ').appendTo(_td);
						}else{
							_input = $('<input type="checkbox" name="propertyVal"  id="'+obj.id+'"  propertyId="'+obj.propertyId+'" propertyName="'+_propertyName+'" value="'+obj.propertyValue+'" style="margin-left:2%;" /> ').appendTo(_td);
						}
						var _span = $('<span>&nbsp;'+obj.propertyValue+'</span>').appendTo(_td); 
					});
				} else {
					timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
				}
			}
		 });
		//==================组装保存的属性值 end=========================
	}
	
	//==================组装保存的销售属性 end=========================
	//触发快速生成按钮并删除未保存的销售属性组合
	$("#rapidCombination").click();
    $("#property_assemble [name=del]").click();
	//=========初始化页面属性及属性值显示 end =======
	
	//=========================add by wanghao 商品扩展参数 start======================
	//加载品牌弹出层start
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
					$(".quality_Assurance_days").hide();
				}else{
					$(".quality_Assurance_days").show();
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
		var countryV=$("#countryInput").val();
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
						if(obj.countryName==countryV&&obj.countryCode!=142){
							countryCodeOption.append("<option value='"+obj.countryName+"' selected=selected countryValue='"+obj.countryCode+"'>"+obj.countryName+"</option>");
							$('#prov-div').hide();
						}else if(obj.countryName==countryV){
							countryCodeOption.append("<option value='"+obj.countryName+"' selected=selected countryValue='"+obj.countryCode+"'>"+obj.countryName+"</option>");
							$('#prov-div').show();
						}else{
							countryCodeOption.append("<option value='"+obj.countryName+"'countryValue='"+obj.countryCode+"'>"+obj.countryName+"</option>");
						}
						
					});
				}
			 });
		}
		//国别选择其他国家时隐藏省市
		$("[name=country]").change(function (){
			var countryCode = $(this).find("option:selected").attr("countryValue");
			if(countryCode!="142"){
				$('#prov-div').hide();
				$('[name=prov]').attr("disabled",true);
				$('[name=city]').attr("disabled",true);
			}else{
				$('#prov-div').show();
				$('[name=prov').attr("disabled",false);
				$('[name=city]').attr("disabled",false);
			}
		});
		
	//加载省市区end
	$('[name=prov]').trigger("change");
	//========================加载国别end=========================
	
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
							$("<option id="+value.id+"  value=" + value.name + ">"+ value.name + "</option>").appendTo($("[name=city]"));
						});
				$('[name=city]').trigger("change");
			}
		});
	});
	//加载销售单位
	getGoodsUnit();

	//获取单位数据
	function getGoodsUnit(){
		$.ajax({
			type : "POST",
			url : _path+"/goods/unit/units",
			data : {
				'unitType' : ''
			},
			success : function(data) {
				$.each(data, function(index, value) {
					//用来判断区分销售单位和采购单位
					if(value.unitType==1||value.unitType==undefined){
						if($("#saleUnitIdInput").val()==value.id){
							$("<option saleunitenglishname="+value.unitEnglishName+" saleunitname="+value.unitName+"  value=" + value.id+ " selected='selected'>"+ value.unitName + "</option>").appendTo($("[name=saleUnitId]"));
						}else{
							$("<option saleunitenglishname="+value.unitEnglishName+" saleunitname="+value.unitName+"  value=" + value.id+ ">"+ value.unitName + "</option>").appendTo($("[name=saleUnitId]"));
						}
						
					}
					if(value.unitType==2||value.unitType==undefined){
						if($("#unitIdInput").val()==value.id){
							$("<option unitenglishname="+value.unitEnglishName+" unitname="+value.unitName+"   value=" + value.id+ " selected='selected'>"+ value.unitName + "</option>").appendTo($("[name=unitId]"));
						}else{
							$("<option  unitenglishname="+value.unitEnglishName+" unitname="+value.unitName+"  value=" + value.id+ ">"+ value.unitName + "</option>").appendTo($("[name=unitId]"));
						}
						
					}
				});
			}
		});
	}
	
	//获取已选国别值
	$("[name=country]").val($("#countryInput").val());
	//所选省份
	$("[name=prov]").val($("#provInput").val());
	//加载已选包装属性
	$("[name=packageProperty]").val($("#packagePropertyInput").val());
	//所属城市
	 if($("#provInput").val()!=""&&$("#provInput").val()!="undefined"){
		 getCity();
	 };
	 
	 	//判断有无保质期，显示保质期天数输入框
		var isQualityAssurance=$("[name=isQualityAssurance]:checked").val();
		if(isQualityAssurance==1){
			$(".quality_Assurance_days").show();
		}else{
			$(".quality_Assurance_days").hide();
		}
		//包装规格，判断有无包装，显示包装件数输入框
		var specificationsV=$("[name=specifications]:checked").val();
		if(specificationsV==1){
			$(".package_param").show();
		}else{
			$(".package_param").hide();
		}
	});
	//所选城市
	function getCity(){
		if($("[name=prov]").find("option:selected")){
			//debugger;
			var provId=$("[name=prov]").find("option:selected").attr("id");
			$.ajax({
				type : "POST",
				url : _path+"/merge/actual/goods/city/getListByPid",
				data : {
					'pid' : provId
				},
				success : function(data) {
					$("[name=city]").empty();
					$.each(data, function(index, value) {
						if($("#cityInput").val()==value.name){
							$("<option id="+value.id+" selected='selected'  value="+value.name+">"+ value.name + "</option>").appendTo($("[name=city]"));
						}else{
							$("<option id="+value.id+"  value="+value.name+">"+ value.name + "</option>").appendTo($("[name=city]"));
						}
							
					});
				}
			});
		}
		
	}
	//=========================add by wanghao 商品扩展参数 end======================	
	//form表单进行校验
	$('#actual-goods-update-form').bootstrapValidator({
		message: 'This value is not valid',
		feedbackIcons: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
			},
        fields: {
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
            }
        }
    });
})

