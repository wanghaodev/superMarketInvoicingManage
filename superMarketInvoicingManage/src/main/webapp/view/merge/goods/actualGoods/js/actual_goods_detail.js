$(function(){
	//点击：取消按钮
	$("[name=cancelButton]").click(function(){
		$.changePage(_path+"/merge/actual/goods/list"+"?_="+(new Date()).getTime());
	});

});


$(function(){
	//=========初始化页面属性及属性值显示 start=======
	var saleMap = window._saleMap;
	var salePropertys  = saleMap.salePropertys;
	var salePropertySize = salePropertys.length;//选择销售属性个数
	var _tHead = $('#property_assemble thead');
	if(_tHead.length>0){
		//-------------thead 组合 start ------
		var _headTr  = $('<tr></tr>').appendTo(_tHead);
		$.each(salePropertys,function(i,obj){
			$('<th>'+obj.propertyName+'</th>').appendTo(_headTr);
		});
		$('<th>SKU</th>').appendTo(_headTr);
		$('<th>条码</th>').appendTo(_headTr);
		/*$('<th>厂家货号</th>').appendTo(_headTr);*/
		//-------------thead 组合 end ------
		var _tBody = $('#property_assemble tbody');
		$.each(_goodsSaleList,function(i,obj){
			var salePropertyList = JSON.parse(obj.salePropertyList);
			var _tr = $('<tr></tr>').appendTo(_tBody);
			for(var i=0;i<salePropertySize;i++){
				var _propName = 'propertyValueName'+(i+1);
				$('<td>'+salePropertyList[_propName]+'</td>').appendTo(_tr);
			}
			$('<td>'+obj.goodsSku+'</td>').appendTo(_tr);
			$('<td>'+obj.barcode+'</td>').appendTo(_tr);
			/*$('<td>'+obj.manufacturerNo+'</td>').appendTo(_tr);*/
		});
	}
	//=========初始化页面属性及属性值显示 end =======
	
})

