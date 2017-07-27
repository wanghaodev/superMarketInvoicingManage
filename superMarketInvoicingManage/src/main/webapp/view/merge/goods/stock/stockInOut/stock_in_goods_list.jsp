<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="javascript:;">零售平台</a></li>
            <li><a href="javascript:;">库存管理</a></li>
            <li><a href="javascript:;">出入库记录</a></li>
            <li class="active">入库商品详情</li>
        </ol>
        <input type="hidden" name="storeId" value="${storeId }">
        <input type="hidden" name="stockGroundId" value="${stockGroundId }">
        <input type="hidden" name="stockInId" value="${stockInId }">
        <input type="hidden" name="goodsAmount" value="${goodsAmount }">
        <div class="panel panel-default form-search">
            <div class="panel-body">
	        	<div class="conditions_team">
	                	凭证类型 ：
	                	<c:if test="${voucherType == 1 }">
	                		<span style="margin-left: 16px;">采购入库</span>
	                	</c:if>
                </div>
            	<div class="conditions_team">
	                	凭证号： <span style="margin-left: 16px;">${voucherNum }</span>
                </div>
            	<div class="conditions_team" style="float: right;margin-right: -20px;">
            		<button style="text-align: center;width: 80px;" class="btn btn-warning" type="button" name="returnButton">返回</button>
            	</div>
	        </div>
            
        </div>
        <div class="ticket_table_content_goods cloud_list">
         
       </div>
			       
      </div>


	
<script type="text/javascript">
	
	$(document).ready(function(){
		
		//返回
		$("[name=returnButton]").click(function(){
			var	_condition = {"storeId":$("[name=storeId]").val(),"stockGroundId":$("[name=stockGroundId]").val()};
			var queryCondition = JSON.stringify(_condition);
			$.changePage(_path+"/merge/stock/in-out/record/list"+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition);
		});
		
        var buttonsArr =[];
        getData();
        function getData(){
        	
        	var _options ={
                url:_path+"/merge/stock/check/put/in/storage/goods"
                ,checkAll:true
                //查询条件
                ,data:{"stockInId":$("[name=stockInId]").val()}
                ,cloumns:[
                    {name:'所属类目',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 var categoryName = "";
	                   	 
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.categoryName != "" && goodsDetails.categoryName != undefined){
	                   		categoryName = goodsDetails.categoryName;
	                   	 }
                    	
                    	return categoryName;
                     }}
                    ,{name:'SPU',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 var goodsSpu = "";
	                   	 
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.goodsSpu != "" && goodsDetails.goodsSpu != undefined){
	                   		goodsSpu = goodsDetails.goodsSpu;
	                   	 }
                    	
                    	return goodsSpu;
                     }}
                    ,{name:'商品名称',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 var goodsName = "";
	                   	 
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.goodsName != "" && goodsDetails.goodsName != undefined){
	                   		goodsName = goodsDetails.goodsName;
	                   	 }
                    	
                    	return goodsName;
                     }}
                    ,{name:'商品类型',type:"function", fun : function(obj){
	                   	 var selfSupport = "";
	                   	if(obj.selfSupport != "" && obj.selfSupport != undefined){
	                   		selfSupport=obj.selfSupport;
	                   		if(selfSupport==1){
	                   			selfSupport="自营商品";
	                   		}else{
	                   			selfSupport="非自营商品";
	                   		}
	                   	 }
                   	
                   	return selfSupport;
                    }}
                    ,{name:'SKU',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 var goodsSku = "";
	                   	 
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.goodsSku != "" && goodsDetails.goodsSku != undefined){
	                   		goodsSku = goodsDetails.goodsSku;
	                   	 }
                    	
                    	return goodsSku;
                     }}
                    ,{name:'销售属性1',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 
	                   	var property1 = "";
	    				
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.salePropertyList != "" && goodsDetails.salePropertyList != undefined){
	                   		 
	                   		 var properties = $.parseJSON(goodsDetails.salePropertyList);
	                   		 
	                   		 if(properties != "" && properties != undefined 
	    	    					&& properties.propertyValueName1 != "" && properties.propertyValueName1 != undefined){
    	    					 
	                   			 property1 = properties.propertyValueName1;
    	    				 } 
	                   	 }
                    	
                    	return property1;
                     }}
                    ,{name:'销售属性2',type:"function", fun : function(obj){
                    	var goodsDetails = $.parseJSON(obj.goodsDetails);
	                   	 
	                   	var property2 = "";
	    				
	                   	 if(goodsDetails != "" && goodsDetails != undefined &&
	                   			goodsDetails.salePropertyList != "" && goodsDetails.salePropertyList != undefined){
	                   		 
	                   		 var properties = $.parseJSON(goodsDetails.salePropertyList);
	                   		 
	                   		 if(properties != "" && properties != undefined 
	    	    					&& properties.propertyValueName2 != "" && properties.propertyValueName2 != undefined){
    	    					 
	                   			property2 = properties.propertyValueName2;
    	    				 } 
	                   	 }
                    	
                    	return property2;
                     }} 
                    ,{name:'采购价',type:"function", fun : function(obj){
                     	return formatCurrency(obj.purchasePrice / 100);
                     }}
                    ,{name:'入库数量',value:'storageNum'}
                    ,{name:'入库单位',value:'unitEnglishName'}
                ]
                ,buttons:buttonsArr
            };
        	$(".ticket_table_content_goods").grid(_options);
    	    $(".ticket_table_content_goods").find(".ticket_table_content").remove();
    	    $('<div>采购总额'+formatCurrency($("[name=goodsAmount]").val() / 100)+'元</div>').appendTo($(".ticket_table_content_goods"));
    	    $('<div class="ticket_table_content"></div>').appendTo($(".ticket_table_content_goods"));
        }
        
        
        //点击搜索按钮
        $("#searchBtn").click(function(){
       		//调用查询
       		getData();	
		})
		
    	
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
    	
    });

</script>