<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<style type="text/css">
.brand_logo {
	width: 25px;
	height: 25px;
}
</style>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">采购管理</a></li>
		<li><a href="####">进货管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="purchaseOrderNo"class="form-control" placeholder="采购订单号">
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary">
				<i class="icon_search"></i>
				查询
			</button>
			<button type="button" id="resetBtn" class="btn btn-success">
				<i class="icon-reply icon-only"></i>
				重置
			</button>
			<button type="button" id="addBtn" class="btn btn-primary">
			<i class="icon_add"></i>
				新增
			</button>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<!-- 列表：查询分页列表 start -->
	<div class="user_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>采购列表</h4>
			</div>
		</div>
	</div>
</div>
	<!-- 列表：查询分页列表 end -->
	<!-- add by WHao start 引入：采购列表js -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/purchases/refund/page/list"
                ,checkAll:false
                //查询条件
                ,data:{'orderType':1
                	  ,'purchaseOrderNo':$("[name=purchaseOrderNo]").val()}
                ,cloumns:[
					 {name:'采购单号',value:'purchaseOrderNo'}
                    ,{name:'采购数量',value:'purchaseNumber'}
                    ,{name:'采购价',value:'purchasePrice'}
                    ,{name:'采购总额',value:'totalAmount'}
                    ,{name:'下单原因',value:'remark1'}
                    /* ,{name:'备注',value:'remark2'} */
                    ,{name:'创建时间',value:'createTime'}
                    ,{name:'更新时间',value:'updateTime'}
                    ,{name:'状态',value:'orderStatus',type:"function", fun : function(obj){
	                    	var html="";
	                    	if(obj.orderStatus == 1){
	                    		html += "进行中";
	                    	}else if(obj.orderStatus==2){
	                    		html += "已完成";
	                    	}else if(obj.orderStatus==3){
	                    		html += "下单失败";
	                    	}else if(obj.orderStatus==4){
	                    		html += "撤销订单";
	                    	}
	                    	return html;
                 	}
                 }
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var html="";
                    		
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='toUpdatePage("+obj.id+")'>编辑</a>"
	                		html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj("+obj.id+")'>删除</a>";
	                	return html;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
            // grid(param1,param2);参数1分页数据，参数2table类名如.user_table_content
            $(".user_table_content").grid(_options,".user_table_content");
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
		
    });
    
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url :_path+"/invoicing/purchases/refund/del",
    			data : {
    				'id':id
    			},
    			beforeSend: function () {
                    //加载中
                    waitload();
                },
    			success : function(data) {
    				closewait();
    				//若执行成功的话，则隐藏进度条提示
    				if (data.code== 1) {
    					alert("采购删除成功！")
    					var url = _path+"/invoicing/purchases/refund/page/list";
    					goBackPage(url);
    				} else if (data == 0) {
    					timedTaskFun(1000,'采购删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该采购，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    };
    
    //到新增页面
    $("#addBtn").click(function(){
    	var url=_path+"/invoicing/purchases/refund/add";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    
    });
    //编辑采购信息
    function toUpdatePage(userId){
    	 var url=_path+"/invoicing/purchases/refund/update?userId="+userId;
		 //调用跳转方法
		 goBackPage(url);
    }
    
</script>