
//选择门店
$("#selectStoreBtn").on("click",function(){
	$('#storeDiv').modal('show');
    getDataStore();
});

var buttonsArrStore =[];
function getDataStore(){
    var _options ={
        url:_path+"/merge/norm/price/store/list"
        ,checkAll:true
        //查询条件
        ,data:{"storeId":$("[name=storeId]").val(),"storeName":$("[name=storeName]").val(),"notContainstoreType":3}
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
             ,{name:'操作',value:'id',type:"function", fun : function(obj){
          		var _htmlInfo =$("<dd></dd>");
          	
	             	var addBtn =$('<a href="javascript:void(0)" class="btn-link" name="columnMg" id="'+obj.id+'">选择</a>').appendTo(_htmlInfo);
	             	addBtn.bind('click',function(){
         			
	             		$(".conDiv").css("display","none");
	             		
	             		$(".topStoreInfo").find("span").remove();
	             		
	             		var storeType="";
	                 	if(obj.type == 1){
	                 		storeType += "门店";
	                 	}else if(obj.type == 2){
	                 		storeType += "网店";
	                 	}else if(obj.type == 3){
	                 		storeType += "DC";
	                 	}
	                 	
	                 	var formatType="";
	                 	if(obj.formatType == 1){
	                 		formatType += "便利店";
	                 	}else if(obj.formatType == 2){
	                 		formatType += "超市";
	                 	}else if(obj.formatType == 3){
	                 		formatType += "百货";
	                 	}else if(obj.formatType == 4){
	                 		formatType += "大卖场";
	                 	}else if(obj.formatType == 5){
	                 		formatType += "线上商城";
	                 	}
	             		
	                 	var storeStatus="";
	                 	if(obj.status == 1){
	                 		storeStatus += "启用";
	                 	}else if(obj.status == 0){
	                 		storeStatus += "停用";
	                 	}
	                 	
	                 	$(".afterAppend").remove();
	                 	
	             		$('<span class="afterAppend cla">店铺类型：'+storeType+'</span>').appendTo($(".topStoreInfo"));
	             		$('<span class="afterAppend cla">业态类型：'+formatType+'</span>').appendTo($(".topStoreInfo"));
	             		$('<span class="afterAppend cla">店铺状态：'+storeStatus+'</span>').appendTo($(".topStoreInfo"));
         			
	             		$('<input class="afterAppend" type="hidden" name="storeType" value="'+obj.type+'">').appendTo($(".topStoreInfo"));
	             		$('<input class="afterAppend" type="hidden" name="store_id" value="'+obj.id+'">').appendTo($(".topStoreInfo"));
	             		
	             		$("#selectStoreBtn").html(obj.storeName);
	             		
	             		$('#storeDiv').modal('hide');
	             		
			  		});
      	
	             	return _htmlInfo;
            }
          }
        ]
        ,buttons:buttonsArrStore
        ,buttonMark:"#storebuttonsId"
    };
    $(".ticket_table_content_th_store").grid(_options);
}

$("#storeSearchBtn").click(function(){
	getDataStore();
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

