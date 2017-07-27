//选择商品
$("#selectGoodBtn").on("click",function(){
    $('#goodsDiv').modal('show');
    getDataGoods();
});

var buttonsArrGoods =[];
function getDataGoods(){
    var _options ={
        url:_path+"/merge/norm/price/goods/list"
        ,checkAll:true
        //查询条件
        ,data:{"goodsName":$("[name=goodsName]").val()
        	,"goodsSpu":$("[name=goodsSpu]").val(),"selfSupport":$("[name=selfSupport]").val()}
        ,cloumns:[
             {name:'所属类目',value:'categoryName'}
             ,{name:'SPU',value:'goodsSpu'}
             ,{name:'商品名称',value:'goodsName'}
             ,{name:'商品类型',type:"function",fun:function(obj){
            	 if(obj.selfSupport == 1){
            		 return "自营";
            	 }else{
            		 return "非自营";
            	 }
              }}
             ,{name:'商品状态',type:"function",fun:function(obj){
            	 var html ='';
             	if(obj.state == 0){
             		html+="试销商品";
             	}else if(obj.state == 1){
             		html+="可订货，可销售";
             	}else if(obj.state == 2){
             		html+="可订货，不可销售";
             	}else if(obj.state == 3){
             		html+="不可订货，可销售";
             	}else if(obj.state == 4){
             		html+="不可订货，不可销售";
             	}else if(obj.state == 5){
             		html+="快速出清";
             	}else if(obj.state == 6){
             		html+="汰换品";
             	}
             	
             	html+= '<input type="hidden" name="goods_State" value="'+html+'" >';
             	html+= '<input type="hidden" name="state" value="'+obj.state+'" >';
             	
             	return html;
             }}
             ,{name:'操作',value:'id',type:"function", fun : function(obj){
             		var _htmlInfo =$("<dd></dd>");
             	
	             	var addBtn =$('<a href="javascript:void(0)" class="btn-link" name="columnMg" id="'+obj.id+'">添加</a>').appendTo(_htmlInfo);
	             	addBtn.bind('click',function(){
            			$(".selectGoodsAfterDiv").css("display","table-cell");
            		
            			
            			var categoryName = "";
            			$.ajax({
            				type : "POST",
            				url : _path+"/goods/purchase/tree/get/curcategory/and/pcategory",
            				data : {
            					'id' : obj.goodsCategoryId
            				},
            				success : function(data) {
            					if(data != '' && data != null && data != 'undefined'){
            						
            						$.each(data,function(i,item){
            							if(i == 0){
            								categoryName += item.categoryName;
            							}else{
            								categoryName += "," + item.categoryName ;
            							}
            						});
            						$("#treeCon").html(categoryName);
            					}
            				}
            			});
            			
            			var checkBoxIn = document.getElementById('checkBoxIn');
            			
            			if(checkBoxIn.checked == false){
            				  document.getElementById("checkBoxIn").checked = true;
            			}
            			$("#goodsNameCon").html(obj.goodsName);
            			$("#spuCon").html(obj.goodsSpu);
            			$("[name=goodsId]").val(obj.id);
            			
            			$('#goodsDiv').modal('hide');
            			$("#goodsStatusTd").html($("[name=goods_State]").val());
            			
            			$("[name=goodsState]").val($("[name=state]").val());
            			
            			if($("[name=storeIds]").val() != '' && $("[name=storeIds]").val() != 'undefined'
            				&& $("[name=goodsId]").val() != '' && $("[name=goodsId]").val() != 'undefined'){
            				loadGoodsSaleList();
            			}
            			
			  		});
         	
	             	return _htmlInfo;
               }
             }
        ]
        ,buttons:buttonsArrGoods
    };
    $(".ticket_table_content_th_goods").grid(_options);
}

$("#goodsSearchBtn").click(function(){
	getDataGoods();
});


//选择门店
$("#selectStoreBtn").on("click",function(){
    $('#storeDiv').modal('show');
    getDataStore();
});

var addStorefun = function(){
	var j = 0;
	var storeIdArray = [];
	var storeNameArray = [];
	var storeTypeArray = [];
	$(".ticket_table_content_th_store").find("[name=checkchild]").each(function(){
		
		if ($(this).prop("checked")) {
			j++;
			var checkchild = $(this).val();
			storeIdArray.push(checkchild);
			storeNameArray.push($(this).parents("td").parents("tr").find("[name=store_name]").val());
			storeTypeArray.push($(this).parents("td").parents("tr").find("[name=store_type]").val());
		}
	});
	if (j == 0) {
		timedTaskFun(1000,'请选中一个店铺操作','','err');
	} else {
		storeIdArray.push('');
		$("[name=storeIds]").val(storeIdArray);
		
		if(storeNameArray != null && storeNameArray != 'undefined' && storeNameArray.length > 0){
			$("#storeSelectTh").html("涉及门店");
			var _html = "";
			$.each(storeNameArray,function(i,value){
			    if(i == 0){
			    	_html += value;
			    } else{
			    	_html += "、"+value;
			    }
			});
			$("#storeSelectCon").html(_html);
			$(".selectStoresAfterDiv").css("display","table-cell");
			$('#storeDiv').modal('hide');
			
			storeNameArray.push('');
			$("[name=storeNames]").val(storeNameArray);
			
			storeTypeArray.push('');
			$("[name=storeTypes]").val(storeTypeArray);
			
			if($("[name=storeIds]").val() != '' && $("[name=storeIds]").val() != 'undefined'
				&& $("[name=goodsId]").val() != '' && $("[name=goodsId]").val() != 'undefined'){
				loadGoodsSaleList();
			}
			
		}
	}
	
	
	//如果没选中让她选中；
	
	var checkBoxIn = document.getElementById('checkBoxIn');
	
	if(checkBoxIn.checked == false){
		  document.getElementById("checkBoxIn").checked = true;
	}
}

var buttonsArrStore =[];
buttonsArrStore.push({text:'批量添加',icon:'add',handler:addStorefun});
function getDataStore(){
    var _options ={
        url:_path+"/merge/norm/price/store/list"
        ,checkAll:true
        //查询条件
        ,data:{"storeId":$("[name=storeId]").val(),"storeName":$("[name=storeName]").val()}
        ,cloumns:[
             {name:'店铺ID',value:'id'}
             ,{name:'店铺名称',value:'storeName'}
             ,{name:'店铺类型',type:"function", fun : function(obj){
             	var html="";
             	if(obj.type == 1){
             		html += "门店";
             	}else if(obj.type == 2){
             		html += "网店";
             	}else if(obj.type == 3){
             		html += "DC";
             	}
             	html += " <input type='hidden' name='store_name' value="+obj.storeName+" />";
             	html += " <input type='hidden' name='store_type' value="+obj.type+" />";
             	return html;
             	
             }}
             ,{name:'所在省',value:'province'}
             ,{name:'所在城市',value:'city'}
             ,{name:'所属区域',value:'district'}
             ,{name:'业态类型',type:"function", fun : function(obj){
             	var html="";
             	if(obj.formatType == 1){
             		html += "便利店";
             	}else if(obj.formatType == 2){
             		html += "超市";
             	}else if(obj.formatType == 3){
             		html += "百货";
             	}else if(obj.formatType == 4){
             		html += "大卖场";
             	}else if(obj.formatType == 5){
             		html += "线上商城";
             	}
             	return html;
             }}
             ,{name:'管理机构',value:'managerOrg'}
        ]
        ,buttons:buttonsArrStore
        ,buttonMark:"#storebuttonsId"
    };
    $(".ticket_table_content_th_store").grid(_options);
   
}

$("#storeSearchBtn").click(function(){
	
	getDataStore();
});


if($("[name=isCheck]").val() == 1){
	$(".selectStoresAfterDiv").css("display","table-cell");
	$(".selectGoodsAfterDiv").css("display","table-cell");
	
	var categoryName = "";
	$.ajax({
		type : "POST",
		url : _path+"/goods/purchase/tree/get/curcategory/and/pcategory",
		data : {
			'id' : $("[name=categoryId]").val()
		},
		success : function(data) {
			if(data != '' && data != null && data != 'undefined'){
				
				$.each(data,function(i,item){
					if(i == 0){
						categoryName += item.categoryName;
					}else{
						categoryName += "," + item.categoryName ;
					}
				});
				$("#treeCon").html(categoryName);
			}
		}
	});
	
	loadGoodsSaleList();
}

//加载商品销售属性列表
function loadGoodsSaleList(){
	
	$(".toPriceInCla").removeAttr("disabled");
	$(".selectAfterShowDiv").css("display","block");
	$.ajax({
		type : "POST",
		url : _path+"/merge/norm/price/goods/sale/list",
		data : {
			'goodsId' : $("[name=goodsId]").val(),
			'storeIds':$("[name=storeIds]").val()
		},
		success : function(data) {
			/*if(data != '' && data != null && data != 'undefined' && data == -100){
				timedTaskFun(8000,'该商品在所选的部分门店中已维护价格，而在其它部分门店中未维护价格，请选中已维护价格的门店进行价格更新，或选中未维护价格的门店进行价格维护！','','err');
				return;
			}*/
			
			if(data != '' && data != null && data != 'undefined'){
				$(".afterShowPCla").css("display","block");
				$(".afterShowTrCla").css("display","table-row");
				$(".afterShowTableCla").css("display","table");
				$(".afterShowBtnCla").css("display","block");
				
				$("#skuConTbody").html("");
				$.each(data,function(i,item){
					var _tbody = $("#skuConTbody");
					var _tr = $('<tr><input type="hidden" name="goodsSaleId" value="'+item.id+'"></tr>').appendTo(_tbody);
					
					var storeId = "";
					if(item.storeId != "" && item.storeId != undefined){
						storeId = item.storeId;
					}
					var _tr_hi = $('<input type="hidden" name="goodsStoreId" value="'+storeId+'">').appendTo(_tr);
					
					var storeType = "";
					if(item.storeType != "" && item.storeType != undefined){
						storeType = item.storeType;
					}
					var _tr_hi_0 = $('<input type="hidden" name="goodsStoreType" value="'+storeType+'">').appendTo(_tr);
					
					var priceId = "";
					if(item.priceId != "" && item.priceId != undefined){
						priceId = item.priceId;
					}
					var _tr_hi_1 = $('<input type="hidden" name="priceId" value="'+priceId+'">').appendTo(_tr);
					
					var storeName = "";
					if(item.storeName != "" && item.storeName != undefined){
						storeName = item.storeName;
					}
					var _tr_hi_2 = $('<input type="hidden" name="goodsStoreStoreName" value="'+storeName+'">').appendTo(_tr);
					var _td0 = $('<td>'+storeName+'</td>').appendTo(_tr);
					var properties = $.parseJSON(item.salePropertyList);
					var property1 = "";
					var property2 = "";
					
					if(properties != "" && properties != "undefined" && properties != undefined){
						if(properties.propertyValueName1 != "" && properties.propertyValueName1 != undefined){
							property1 = properties.propertyValueName1;
						}
						if(properties.propertyValueName2 != "" && properties.propertyValueName2 != undefined){
							property2 = properties.propertyValueName2;
						}
					}
					var _td1 = $('<td>'+property1+'</td>').appendTo(_tr);
					var _td2 = $('<td>'+property2+'</td>').appendTo(_tr);
					var _td3 = $('<td>'+item.goodsSku+'</td>').appendTo(_tr);
					var _td4 = $('<td>'+item.barcode+'</td>').appendTo(_tr);
					/*var _td5 = $('<td>'+item.manufacturerNo+'</td>').appendTo(_tr);*/
					
					if(item.salePrice != "" && item.salePrice != null && item.salePrice != 'undefined'){
						var _td6 = $('<td class="salepriceTd">￥'+formatCurrency(item.salePrice/100)+
								'元<input type="hidden" class="salepriceCla" name="salePrice" value="'+item.salePrice+'"><input type="hidden" name="oldSalePrice" value="'+item.salePrice+'"></td>').appendTo(_tr);
					}else{
						var _td6 = $('<td class="salepriceTd">￥0.00元<input type="hidden" class="salepriceCla" name="salePrice" value=""><input type="hidden" name="oldSalePrice" value="0"></td>').appendTo(_tr);
					}
					
					if(item.marketPrice != "" && item.marketPrice != null && item.marketPrice != 'undefined'){
						var _td7 = $('<td class="marketPriceTd">￥'+formatCurrency(item.marketPrice/100)+
								'元<input type="hidden" class="marketpriceCla" name="marketPrice" value="'+item.marketPrice+'"><input type="hidden" name="oldMarketPrice" value="'+item.marketPrice+'"></td>').appendTo(_tr);
					}else{
						var _td7 = $('<td class="marketPriceTd">￥0.00元<input type="hidden" class="marketpriceCla" name="marketPrice" value=""><input type="hidden" name="oldMarketPrice" value="0"></td>').appendTo(_tr);
					}
					
					if(item.purchasePrice != "" && item.purchasePrice != null && item.purchasePrice != 'undefined'){
						var _td8 = $('<td class="purchasePriceTd">￥'+formatCurrency(item.purchasePrice/100)+
								'元<input type="hidden" class="purchasepriceCla" name="purchasePrice" value="'+item.purchasePrice+'"><input type="hidden"  name="oldPurchasePrice" value="'+item.purchasePrice+'"></td>').appendTo(_tr);
					}else{
						var _td8 = $('<td class="purchasePriceTd">￥0.00元<input type="hidden" class="purchasepriceCla" name="purchasePrice" value=""><input type="hidden"  name="oldPurchasePrice" value="0"></td>').appendTo(_tr);
					}
					
				});
			}else{
				$("#skuConTbody").html('<tr><td colspan="8">暂无数据</td></tr>');
			}
		}
	});
	
}

//金额格式化为货币格式（如：999,999.99）
function formatCurrency(num) {    
    num = num.toString().replace(/\$|\,/g,'');    
    if(isNaN(num))    
    num = "0";    
    sign = (num == (num = Math.abs(num)));    
    num = Math.floor(num*100+0.50000000001);    
    cents = num%100;    
    num = Math.floor(num/100).toString();    
    if(cents<10)    
    cents = "0" + cents;    
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)    
    num = num.substring(0,num.length-(4*i+3))+','+    
    num.substring(num.length-(4*i+3));    
    return (((sign)?'':'-') + num + '.' + cents);    
}

$('#checkBoxIn').click(function(){
	if($('#checkBoxIn').get(0).checked){
		//应用到所有SKU
		$(".priceInCla").remove();
		$(".toPriceInCla").removeAttr("disabled");
		
	}else{
		$(".toPriceInCla").val("");
		$(".toPriceInCla").attr("disabled","disabled");
		
		$(".priceInCla").remove();
		
		$('<input type="text" name="salepriceIn" class="priceInCla" >').appendTo($(".salepriceTd"));
		$('<input type="text" name="marketPriceIn" class="priceInCla" >').appendTo($(".marketPriceTd"));
		$('<input type="text" name="purchasePriceIn" class="priceInCla" >').appendTo($(".purchasePriceTd"));
	}
});

//校验金额的正则方法
function checkPrice(price){
	return (/^(([1-9]\d*)|\d)(\.\d{1,2})?$/).test(price.toString());
}

//提交表单
$("[name=addSub]").click(function(){
    
	if ($('#checkBoxIn').get(0).checked) {
	    //选中应用到所有SKU
		
		if($("[name=salePriceA]").val() == ""){
			timedTaskFun(1000,'售价不能为空！','','err');
			return ;
		}else if(!checkPrice($("[name=salePriceA]").val())){
    		timedTaskFun(1000,'售价金额格式不合法！','','err');
    		return ;
    	}
		
		if($("[name=marketPriceA]").val() == ""){
			timedTaskFun(1000,'市场价不能为空！','','err');
			return ;
		}else if(!checkPrice($("[name=marketPriceA]").val())){
			timedTaskFun(1000,'市场价金额格式不合法！','','err');
			return ;
		}
		
		if($("[name=purchasePriceA]").val() == ""){
			timedTaskFun(1000,'采购价不能为空！','','err');
			return ;
		}else if(!checkPrice($("[name=purchasePriceA]").val())){
			timedTaskFun(1000,'采购价金额格式不合法！','','err');
			return ;
		}
		
		$(".salepriceCla").val((parseFloat($("[name=salePriceA]").val()) * parseInt(100)).toFixed(0));
		$(".marketpriceCla").val((parseFloat($("[name=marketPriceA]").val()) * parseInt(100)).toFixed(0));
		$(".purchasepriceCla").val((parseFloat($("[name=purchasePriceA]").val()) * parseInt(100)).toFixed(0));
		
	}else{
		var n = 0;
		$("#skuConTbody").find("tr").each(function(index,domEle){
			
			if($(domEle).find("[name=salepriceIn]").val() == ""){
				timedTaskFun(1000,'售价不能为空！','','err');
				n++;
				return false;
			}else if(!checkPrice($(domEle).find("[name=salepriceIn]").val())){
	    		timedTaskFun(1000,'售价金额格式不合法！','','err');
	    		n++;
	    		return false;
	    	}
			
			if($(domEle).find("[name=marketPriceIn]").val() == ""){
				timedTaskFun(1000,'市场价不能为空！','','err');
				n++;
				return false;
			}else if(!checkPrice($(domEle).find("[name=marketPriceIn]").val())){
				timedTaskFun(1000,'市场价金额格式不合法！','','err');
				n++;
				return false;
			}
			
			if($(domEle).find("[name=purchasePriceIn]").val() == ""){
				timedTaskFun(1000,'采购价不能为空！','','err');
				n++;
				return false;
			}else if(!checkPrice($(domEle).find("[name=purchasePriceIn]").val())){
				timedTaskFun(1000,'采购价金额格式不合法！','','err');
				n++;
				return false;
			}
			
			var salePrice = $(domEle).find("[name=salepriceIn]").val();
			$(domEle).find("[name=salePrice]").val((parseFloat(salePrice) * parseInt(100)).toFixed(0));
			
			var marketPrice = $(domEle).find("[name=marketPriceIn]").val();
			$(domEle).find("[name=marketPrice]").val((parseFloat(marketPrice) * parseInt(100)).toFixed(0));
			
			var purchasePrice = $(domEle).find("[name=purchasePriceIn]").val();
			$(domEle).find(".purchasepriceCla").val((parseFloat(purchasePrice) * parseInt(100)).toFixed(0));
			
		});
		
		if(n > 0){
			return;
		}
		
	}
	
	var goodsId = $("[name=goodsId]").val();
	//已在门店定过价的商品价格实体集合
	var  normalPriceArray = new Array(); 
	//未定价的商品价格实体集合
	var  newNormalPriceArray = new Array(); 
	
	var storeIdsArray = $("[name=storeIds]").val().split(",");
	var storeNamesArray = $("[name=storeNames]").val().split(",");
	var storeTypesArray = $("[name=storeTypes]").val().split(",");
	
	$("#skuConTbody").find("tr").each(function(index,domEle){
		
		var salePrice = $(domEle).find("[name=salePrice]").val();
		
		var marketPrice = $(domEle).find("[name=marketPrice]").val();
		
		var purchasePrice = $(domEle).find("[name=purchasePrice]").val();
		
		var oldSalePrice = $(domEle).find("[name=oldSalePrice]").val();
		
		var oldMarketPrice = $(domEle).find("[name=oldMarketPrice]").val();
		
		var oldPurchasePrice = $(domEle).find("[name=oldPurchasePrice]").val();
		
		var goodsSaleId = $(domEle).find("[name=goodsSaleId]").val();
		var goodsState = $("[name=goodsState]").val();
		
		var priceId = $(domEle).find("[name=priceId]").val();
		
		var goodsStoreId = $(domEle).find("[name=goodsStoreId]").val();
		
		var goodsStoreStoreName = $(domEle).find("[name=goodsStoreStoreName]").val();
		var goodsStoreType = $(domEle).find("[name=goodsStoreType]").val();
		
		if(goodsStoreId != "" && goodsStoreId != undefined && goodsStoreId != null && goodsStoreId != "undefined"){
			var entity ={"salePrice":salePrice,"marketPrice":marketPrice,"purchasePrice":purchasePrice,"goodsId":goodsId,
				"goodsSaleId":goodsSaleId,"goodsState":goodsState,"oldSalePrice":oldSalePrice,"oldMarketPrice":oldMarketPrice,
				"oldPurchasePrice":oldPurchasePrice,"storeId":goodsStoreId,"storeName":goodsStoreStoreName,"storeType":goodsStoreType,"id":priceId};
			normalPriceArray.push(entity);
			
		}else{
			var entity ={"salePrice":salePrice,"marketPrice":marketPrice,"purchasePrice":purchasePrice,"goodsId":goodsId,
				"goodsSaleId":goodsSaleId,"goodsState":goodsState,"oldSalePrice":oldSalePrice,"oldMarketPrice":oldMarketPrice,
				"oldPurchasePrice":oldPurchasePrice};
			newNormalPriceArray.push(entity);
		}
		
		
		$.each(storeIdsArray,function (i, item) {
            if(item == goodsStoreId || item == ""){
            	storeIdsArray.splice(i,1);
            	storeNamesArray.splice(i,1);
            	storeTypesArray.splice(i,1);
				return false;
            }
        });
		
	});
	
	var goodsSalenormalPriceList = JSON.stringify(normalPriceArray);
	var newNormalPriceList = JSON.stringify(newNormalPriceArray);
	var newStoreIds = storeIdsArray.join(",");
	var storeNames = storeNamesArray.join(",");
	var storeTypes = storeTypesArray.join(",");
	
	if(newNormalPriceArray.length > 0 || normalPriceArray.length > 0){
		
		$.ajax({
			type : "post",
			url : _path+"/merge/norm/price/manager/price",
			data :{"storeIds":$("[name=storeIds]").val(),"storeNames":storeNames
				,"storeTypes":storeTypes,"goodsSalenormalPriceList":goodsSalenormalPriceList
				,"goodsId":goodsId,"newNormalPriceList":newNormalPriceList,"newStoreIds":newStoreIds},
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
						var jumpUrl = '/merge/norm/price/list';
						timedTaskFun(1000,'价格维护成功！',jumpUrl,'correct');
					}else {
						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
					}
				}
		});
	}
	
});



$("[name=setDefaultButton]").click(function(){
	
	$(".toPriceInCla").val("");
	$(".priceInCla").val("");
	
});



