
//选择商品
$("#selectGoodBtn").on("click",function(){
    $('#goodsDiv').modal('show');
    getDataGoods();
});

var buttonsArrGoods =[];
function getDataGoods(){
    var _options ={
        url:_path+"/merge/stock/goods/sale/list"
        ,checkAll:true
        //查询条件
        ,data:{"goodsSku":$("[name=goodsSku]").val(),"goodsName":$("[name=goodsName]").val()
        	,"goodsSpu":$("[name=goodsSpu]").val(),"storeId":$("[name=storeId]").val(),"stockGroundId":$("[name=stockGroundId]").val(),"selfSupport":$("[name=selfSupport]").val()}
        ,cloumns:[
             {name:'所属类目',value:'categoryName'}
             ,{name:'SPU',value:'goodsSpu'}
             ,{name:'商品名称',value:'goodsName'}
             ,{name:'商品类型',type:"function",fun:function(obj){
            	 var html ='';
	             	if(obj.selfSupport == 0){
	             		html+="非自营商品";
	             	}else{
	             		html+="自营商品";
	             	}
	             	return html;
             	}
             }
             ,{name:'SKU',value:'goodsSku'}
             ,{name:'销售属性1',type:"function", fun : function(obj){
	             	
             	var properties = $.parseJSON(obj.salePropertyList);
				var property1 = "";
				
				if(properties != "" && properties != undefined 
					&& properties.propertyValueName1 != "" && properties.propertyValueName1 != undefined){
					property1 = properties.propertyValueName1;
				}
             	
				property1 += " <input type='hidden' name='saleProperty1' value="+property1+" >";
				property1 += ' <span style="display:none;" name="salePropertyList">'+obj.salePropertyList+'</span>';
				
             	return property1;
             }}
             ,{name:'销售属性2',type:"function", fun : function(obj){
            	 
            	 var properties = $.parseJSON(obj.salePropertyList);
            	 var property2 = "";
            	 
            	 if(properties != "" && properties != undefined &&
            			 properties.propertyValueName2 != "" && properties.propertyValueName2 != undefined){
            		 property2 = properties.propertyValueName2;
            	 }
            	 
            	 property2 += " <input type='hidden' name='saleProperty2' value="+property2+" >";
            	 return property2;
             }}
             ,{name:'商品状态',type:"function",fun:function(obj){
            	 var html ='';
             	if(obj.goodsState == 0){
             		html+="试销商品";
             	}else if(obj.goodsState == 1){
             		html+="可订货，可销售";
             	}else if(obj.goodsState == 2){
             		html+="可订货，不可销售";
             	}else if(obj.state == 3){
             		html+="不可订货，可销售";
             	}else if(obj.goodsState == 4){
             		html+="不可订货，不可销售";
             	}else if(obj.goodsState == 5){
             		html+="快速出清";
             	}else if(obj.goodsState == 6){
             		html+="汰换品";
             	}
             	
             	html += " <input type='hidden' name='goodsId' value="+obj.goodsId+" />";
             	html += " <input type='hidden' name='categoryName' value="+obj.categoryName+" />";
             	html += " <input type='hidden' name='goodsSpu' value="+obj.goodsSpu+" />";
             	if(obj.selfSupport==0){
             		html += " <input type='hidden' name='selfSupport' value='非自营商品' />";
             	}else{
             		html += " <input type='hidden' name='selfSupport' value='非自营商品' />";
             	}
             	
             	html += " <input type='hidden' name='goodsName' value="+obj.goodsName+" />";
             	html += " <input type='hidden' name='goodsSku' value="+obj.goodsSku+" />";
             	html += " <input type='hidden' name='purchasePrice' value="+obj.purchasePrice+" />";
             	
             	return html;
             }}
             ,{name:'促销号',value:''}
             ,{name:'在库',value:'stockNum'}
             
        ]
        ,buttons:buttonsArrGoods
    };
    $(".ticket_table_content_th_goods").grid(_options);
}

$("#goodsSearchBtn").click(function(){
	getDataGoods();
});

$("#addGoodsSaleBtn").click(function(){
	
	var j = 0;
	$("#goodsDiv").find("[name=checkchild]").each(function(){
		if ($(this).prop("checked")) {
			j++;
			var checkchild = $(this).val();
			
			var goodsId = $(this).parents("td").parents("tr").find("[name=goodsId]").val();
			var categoryName = $(this).parents("td").parents("tr").find("[name=categoryName]").val();
			var goodsSpu = $(this).parents("td").parents("tr").find("[name=goodsSpu]").val();
			var goodsName = $(this).parents("td").parents("tr").find("[name=goodsName]").val();
			var goodsSku = $(this).parents("td").parents("tr").find("[name=goodsSku]").val();
			var saleProperty1 = $(this).parents("td").parents("tr").find("[name=saleProperty1]").val();
			var saleProperty2 = $(this).parents("td").parents("tr").find("[name=saleProperty2]").val();
			var purchasePrice = $(this).parents("td").parents("tr").find("[name=purchasePrice]").val();
			var selfSupport = $(this).parents("td").parents("tr").find("[name=selfSupport]").val();
			
			if(purchasePrice != "" &&  purchasePrice != null && purchasePrice != "undefined"){
				purchasePrice = parseFloat(purchasePrice / 100);
			}else{
				purchasePrice = '';
			}
			
			var salePropertyList = $(this).parents("td").parents("tr").find("[name=salePropertyList]").text();
			
			var _tr = $('<tr><input type="hidden" name="goodsSaleId" value="'+checkchild+
					'"><input type="hidden" name="goodsId" value="'+goodsId+'"></tr>').appendTo($("#goodsSaleTbody"));
			var _span = $('<span name="salePropertyList" style="display:none;">'+salePropertyList+'</span>').appendTo(_tr);
			var _td1 = $('<td name="categoryName">'+categoryName+'</td>').appendTo(_tr);
			var _td2 = $('<td name="goodsSpu">'+goodsSpu+'</td>').appendTo(_tr);
			var _td11 = $('<td name="goodsName">'+goodsName+'</td>').appendTo(_tr);
			var _td3 = $('<td name="selfSupport">'+selfSupport+'</td>').appendTo(_tr);
			var _td4 = $('<td name="goodsSku">'+goodsSku+'</td>').appendTo(_tr);
			var _td5 = $('<td>'+saleProperty1+'</td>').appendTo(_tr);
			var _td6 = $('<td>'+saleProperty2+'</td>').appendTo(_tr);
			var _td7 = $('<td></td>').appendTo(_tr);
			var _td7_in = $('<input type="text" name="purchasePrice" value="'+purchasePrice+'">').appendTo(_td7);
			var _td8 = $('<td></td>').appendTo(_tr);
			var _td8_in = $('<input type="text" name="storageNum" value="">').appendTo(_td8);
			var _td9 = $('<td></td>').appendTo(_tr);
			var _td9_select = $('<select class="unitSelectCla" name="unitId"></select>').appendTo(_td9);
			_td9_select.bind("change",function(){
				$(this).attr("class","unitSelectCla_o");
			});
			var _td10 = $('<td></td>').appendTo(_tr);
			var _td10_a1 = $('<a  href="javascript:void(0)" class="btn-link">删除</a>').appendTo(_td10);
			_td10_a1.bind("click",function(){
				$(this).parent().parent().remove();
			});
			
		}
	});
	
	if (j == 0) {
		timedTaskFun(1000,'请选择商品','','err');
	} else {
		
		$.ajax({
			type : "post",
			url : _path+"/merge/stock/goods/unit/list",
			data :{},
			success : function(data) {
				$(".unitSelectCla").empty();
				if (data != null && data != 'undefined') {
					$.each(data,function(i,item){
						$('<option value="'+item.id+'">'+item.unitEnglishName+'</option>').appendTo($(".unitSelectCla"));
					});
				}
			}
		 });
		
		
		$(".tempTr").remove();
		$('#goodsDiv').modal('hide');
	}
	
});


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


