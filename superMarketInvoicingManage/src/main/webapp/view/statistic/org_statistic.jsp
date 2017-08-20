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
		<li><a href="####">机构收银统计</a></li>
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
	<div class="org_statistic_table cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>机构收银统计</h4>
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
                url:_path+"/invoicing/statistic/org/cash/statistic"
                ,checkAll:false
                //查询条件
                ,data:{'payMethod':$("[name=payMethod]").val()}
                ,cloumns:[
					 {name:'机构名称',value:'orgName'}
					 ,{name:'机构名称',value:'orgId'}
                    ,{name:'管理机构',value:'parentOrgName'}
                    ,{name:'现金收银',value:'cashPay',type:"function", fun : function(obj){
	                	return obj.cashPay+".00元";;
	                    }
	                  }
	              	,{name:'银行卡收银',value:'bankPay',type:"function", fun : function(obj){
		                	return obj.bankPay+".00元";;
	                    }
	                  }
	              	,{name:'微信收银',value:'weinxinPay',type:"function", fun : function(obj){
	                	return obj.weinxinPay+".00元";;
	                    }
	                  }
	              	
	              	,{name:'支付宝收银',value:'zhifubaoPay',type:"function", fun : function(obj){
	                	return obj.zhifubaoPay+".00元";;
	                    }
	                  }
	              	,{name:'会员卡收银',value:'rePayCardPay',type:"function", fun : function(obj){
	                	return obj.rePayCardPay+".00元";;
	                    }
	                  }
	              	,{name:'合计',value:'totalAmount',type:"function", fun : function(obj){
	                	return obj.totalAmount+".00元";;
	                    }
	                  }
                ]
                ,buttons:buttonsArr
            };
            // grid(param1,param2);参数1分页数据，参数2table类名如.org_statistic_table
            $(".org_statistic_table").grid(_options,".org_statistic_table");
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
		
		//获取年份	
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