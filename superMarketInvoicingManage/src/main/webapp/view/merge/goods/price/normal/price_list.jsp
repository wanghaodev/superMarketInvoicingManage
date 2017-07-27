<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li class="active">正常价格维护</li>
        </ol>
        <div class="panel panel-default form-search">
            <div class="panel-body">
	        	<div class="conditions_team">
	                <label>商品名称：</label><input type="text" name="goodsName" class="form-control" placeholder="商品名称">
                </div>
            	<div class="conditions_team">
	                <label>SPU：</label><input type="text" name="goodsSpu" class="form-control" placeholder="SPU">
                </div>
            	<div class="conditions_team">
	                <label>SKU：</label><input type="text" name="goodsSku" class="form-control" placeholder="SKU">
	            </div>
	            <div class="conditions_team">
	                <label>主供商编号：</label><input type="text" name="" class="form-control" placeholder="主供商编号">
	            </div>
	            <div class="conditions_team">
	                <label>门店编号：</label><input type="text" name="storeId" class="form-control" placeholder="门店编号">
	            </div>
	            <div class="conditions_team">
	                <label>商品状态：</label>
	                <select class="form-control" name="goodsState">
	                	<option value="-1">请选择商品状态</option>
	                    <option value="0">试销商品</option>
	                    <option value="1">可订货，可销售</option>
	                    <option value="2">可订货，不可销售</option>
	                    <option value="3">不可订货，可销售</option>
	                    <option value="4">不可订货，不可销售</option>
	                    <option value="5">快速出清</option>
	                    <option value="6">汰换品</option>
	                </select>
	            </div>
	            <div class="conditions_team">
	                <select class="form-control" name="priceType">
	                    <option value="1">正常售价</option>
	                    <option value="2">市场价</option>
	                    <option value="3">正常采购价</option>
	                </select>
	                <input type="text" name="minPrice" class="form-control" placeholder="最小">
	                <input type="text" name="maxPrice" class="form-control" placeholder="最大">
	            </div>
	            <div class="conditions_team">
		        		<label>商品类型：</label>
				              	<select name="selfSupport" class="form-control">
				        		   <option value="-1">--请选择商品类型--</option>
				        		   <option value="0">非自营</option>
				        		   <option value="1">自营</option>
				        		</select>
			        		</div>
		        	</div>
	        </div>
           	<div class="panel-footer">
                <button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
            </div>
        </div>
        <div class="ticket_table_content cloud_list"> 
        </div>
      </div>
        

	
<script type="text/javascript">
	
	$(document).ready(function(){
		
		//按品价格维护
		var addfun =function(){
			var j = 0;
			var goodsId ;
			var storeId ;
			var categoryId ;
			$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					var checkchild = $(this).val();
					goodsId = $(this).parents("td").parents("tr").find("[name=goodsId]").val();
					storeId = $(this).parents("td").parents("tr").find("[name=storeId]").val();
					categoryId = $(this).parents("td").parents("tr").find("[name=categoryId]").val();
				}
			});
			if (j > 1) {
				timedTaskFun(1000,'请选中一条记录进行操作','','err');
			} else {
				var _condition = "";
	  			var queryCondition = "";
				if(j ==1){
					_condition = {'goodsId':goodsId,'storeId':storeId,'categoryId':categoryId};
		  			 queryCondition = JSON.stringify(_condition);
				}
				
				$.changePage(_path+"/merge/norm/price/manager/price"+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition);
			}
			
        }
		
        var buttonsArr =[];
        <shiro:hasPermission name="merge_norm_price_manager_price_access">
	    	buttonsArr.push({text:'按品价格维护',icon:'add',handler:addfun});
	    </shiro:hasPermission>
        getData();
        function getData(){
        	var _options ={
                url:_path+"/merge/norm/price/list"
                ,checkAll:true
                //查询条件
                ,data:{	"goodsName":$("[name=goodsName]").val(),"goodsSpu":$("[name=goodsSpu]").val(),"goodsSku":$("[name=goodsSku]").val()
                	,"storeId":$("[name=storeId]").val(),"goodsState":$("[name=goodsState]").val(),"priceType":$("[name=priceType]").val()
                	,"minPrice":$("[name=minPrice]").val(),"maxPrice":$("[name=maxPrice]").val()
                	, "selfSupport":($("[name=selfSupport]").val()=="-1")?"":$("[name=selfSupport]").val()
                		}
                ,cloumns:[
                     {name:'所属分类',value:'categoryName'}
                    ,{name:'SPU',value:'goodsSpu'}
                    ,{name:'商品名称',value:'goodsName'}
                    ,{name:'商品类型',value:'state',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.selfSupport == 0){
                    		html += "非自营";
                    	}else if(obj.selfSupport==1){
                    		html += "自营";
                    	}
                    	return html;
                	}
               		 }
                    ,{name:'SKU',value:'goodsSku'}
                    ,{name:'商品状态',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.goodsState == 0){
                    		html += "试销商品";
                    	}else if(obj.goodsState == 1){
                    		html += "可订货，可销售";
                    	}else if(obj.goodsState == 2){
                    		html += "可订货，不可销售";
                    	}else if(obj.goodsState == 3){
                    		html += "不可订货，可销售";
                    	}else if(obj.goodsState == 4){
                    		html += "不可订货，不可销售";
                    	}else if(obj.goodsState == 5){
                    		html += "快速出清";
                    	}else if(obj.goodsState == 6){
                    		html += "汰换品";
                    	}
                    	html += " <input type='hidden' name='goodsId' value="+obj.goodsId+" />";
                    	html += " <input type='hidden' name='categoryId' value="+obj.categoryId+" />";
                    	return html;
                    }}
                    ,{name:'门店类型',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.storeType == 1){
                    		html += "门店";
                    	}else if(obj.storeType == 2){
                    		html += "网店";
                    	}else if(obj.storeType == 3){
                    		html += "DC";
                    	}
                    	html += " <input type='hidden' name='storeId' value="+obj.storeId+" />";
                    	return html;
                    }}
                    ,{name:'门店编号',value:"storeId"}
                    ,{name:'门店名称',value:"storeName"}
                    ,{name:'主供商编号',value:''}
                    ,{name:'正常售价',type:"function", fun : function(obj){
                    	var html="";
                    	html += formatCurrency(obj.salePrice / 100);
                    	return html;
                    }}
                    ,{name:'市场价',type:"function", fun : function(obj){
                    	var html="";
                    	html += formatCurrency(obj.marketPrice / 100);
                    	return html;
                    }}
                    ,{name:'正常采购价',type:"function", fun : function(obj){
                    	var html="";
                    	html += formatCurrency(obj.purchasePrice / 100);
                    	return html;
                    }}
                    
                ]
                ,buttons:buttonsArr
            };
        	$(".ticket_table_content").grid(_options);
        }
        
        //点击搜索按钮
        $("#searchBtn").click(function(){
        	
        	if($("[name=minPrice]").val() != ""){
        		if(!checkPrice($("[name=minPrice]").val())){
            		timedTaskFun(2000,'价格金额格式不合法！','','err');
            		return ;
            	}
        	}
        	if($("[name=maxPrice]").val() != ""){
        		if(!checkPrice($("[name=maxPrice]").val())){
            		timedTaskFun(2000,'价格金额格式不合法！','','err');
            		return ;
            	}
        	}
        	
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
		
      	//校验金额的正则方法
    	function checkPrice(price){
    		return (/^(([1-9]\d*)|\d)(\.\d{1,2})?$/).test(price.toString());
    	}
        
    });

</script>