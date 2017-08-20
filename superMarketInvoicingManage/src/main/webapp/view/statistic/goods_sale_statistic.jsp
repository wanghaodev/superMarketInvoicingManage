<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<style type="text/css">
.brand_logo {
	width: 25px;
	height: 25px;
}

#select_year{
	width: 100px;
}
#select_month{
	width: 60px;
}
</style>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">统计报表</a></li>
		<li><a href="####">商品销售汇总</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<select name="year" id="select_year">
				</select>
				<select name="month" id="select_month">
				</select> 
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary">
				<i class="icon_search"></i>
				查询
			</button>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<!-- 列表：查询分页列表 start -->
	<div class="area_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>商品销售汇总</h4>
			</div>
		</div>
	</div>
</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：销售记录列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/statistic/goods/salse/statistic"
                ,checkAll:false
                //查询条件
                ,data:{'payMethod':$("[name=payMethod]").val()}
                ,cloumns:[
					 {name:'商品名称',value:'goodsName'}
					 ,{name:'商品SPU',value:'goodsSpu'}
					 ,{name:'所属门店',value:'storeName'}
                    ,{name:'销售数量',value:'saleNum'}
                    ,{name:'销售额',value:'saleAmount',type:"function", fun : function(obj){
	                	return obj.saleAmount+".00元";;
	                    }
	                  }
                    ,{name:'销售总额比例',value:'goodsScale',type:"function", fun : function(obj){
	                	return obj.goodsScale+"%";
	                    }
	                  }
                ]
                ,buttons:buttonsArr
            };
            // grid(param1,param2);参数1分页数据，参数2table类名如.area_table_content
            $(".area_table_content").grid(_options,".area_table_content");
        }
		//条件查询
		$("#searchBtn").click(function(){
			getData();
			
		});
		//条件重置
		$("#resetBtn").click(function (){
			$("input[name=userName]").val("");
			$("input[name=phone]").val("");
		});
		getYear();
    });
    
	//获取年份
	function getYear(){
		var month=$("#select_year");
		for(i=0;i<50;i++){
			if(i<10){
				month.append("<option value='200"+i+"'>200"+i+"</option>");
		 }else{
			 if(i==18){
					month.append("<option value='20"+i+"' selected='selected'>20"+i+"</option>");
				}else{
					month.append("<option value='20"+i+"'>20"+i+"</option>");	
				}
		 }
		}
		getMonth();
	}
	
	
	//获取月份
	function getMonth(){
		var month=$("#select_month");
		for(i=1;i<13;i++){
			if(i<10){
				if(i==8){
					month.append("<option value='0"+i+"' selected='selected'>0"+i+"</option>");
				}else{
					month.append("<option value='0"+i+"'>0"+i+"</option>");	
				}
			}else{
				month.append("<option value='"+i+"'>"+i+"</option>");
			}
		}
		
	}    
</script>