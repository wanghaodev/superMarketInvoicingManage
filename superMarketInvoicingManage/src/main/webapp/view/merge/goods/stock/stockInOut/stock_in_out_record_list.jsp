<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--日历--> 
<link href="<%=request.getContextPath() %>/static/css/bootstrap-datetimepicker.css" rel="stylesheet">	
<style>
	.conDiv{
		display: none;
	}
</style>
	
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">首页</a></li>
            <li><a href="javascript:;">零售平台</a></li>
            <li><a href="javascript:;">库存管理</a></li>
            <li class="active">出入库记录</li>
        </ol>
        <div class="panel panel-default form-search" style="    padding-bottom: 15px;">
        	<div class="panel-body ">
	        	<input  type="hidden" name="storeIdIn" value="${storeId }">
	        	<input  type="hidden" name="stockGroundIdIn" value="${stockGroundId }">
	        	<div style="float: left;" >
	        		门店：
	        		<c:choose>
		        		<c:when test="${storeName != null }">
			        		<button type="button" class="btn btn-primary" id="selectStoreBtn" style="text-align: center;">${storeName }</button>
		        		</c:when>
		        		<c:otherwise>
			        		<button type="button" class="btn btn-primary" id="selectStoreBtn" style="text-align: center;">点击选择门店</button>
		        		</c:otherwise>
	        		</c:choose>
	        	
	        	</div>
	        	<div style="display:none;" class="storeStockGroundCla">
		        	<span style="float: left;padding-top: 4px;">库存地：</span>
		        	<select class="form-control" name="storeStockGround" style="    margin: 0 36px;">
	                    
	                </select>
                </div>
                <div style="float: left;width: 15%;    padding-top: 4px;" class="topStoreInfo">
                	<c:if test="${storeId != null }">
                		<c:if test="${storeStatus == 1 }">
	                		<span class="afterAppend" style="margin-right: 15%;">店铺状态：启用</span>
                		</c:if>
                		<c:if test="${storeStatus == 0 }">
	                		<span class="afterAppend" style="margin-right: 15%;">店铺状态：停用</span>
                		</c:if>
	                	<input class="afterAppend" type="hidden" name="store_id" value="${storeId }">
                	</c:if>
                </div>
                <button type="button" id="viewBtn" class="btn btn-primary" style=" text-align: center;float: right; ">查看</button>
        	</div>
        </div>
        <div class="panel panel-default form-search conDiv">
            <div class="panel-body">
	        	<div class="conditions_team">
	                <label>调出单位：</label><input type="text" name="outUnit" class="form-control" placeholder="调出单位">
                </div>
            	<div class="conditions_team">
	                <label>调出库存地：</label><input type="text" name="outStockGround" class="form-control" placeholder="调出库存地">
	            </div>
	            <div class="conditions_team">
	                <label>调入单位：</label><input type="text" name="inUnit" class="form-control" placeholder="调入单位">
	            </div>
	            <div class="conditions_team">
	                <label>调入库存地：</label><input type="text" name="inStockGround" class="form-control" placeholder="调入库存地">
	            </div>
	            <div class="conditions_team">
	            	<label>入库时间：</label>
	                <div class="input-append date form_datetime" id="datetimepicker1" data-date="" data-date-format="dd-mm-yyyy">
		                <input size="16" type="text" value=""  class="form-control" name="startDate" id="startDate">
		                <span class="add-on "><i class="icon-th glyphicon glyphicon-th-large"></i></span>
	                </div>
	            	<label> --  </label>
	            	<div class="input-append date form_datetime" id="datetimepicker1" data-date="" data-date-format="dd-mm-yyyy">
		                <input size="16" type="text" value=""  class="form-control" name="endDate" id="endDate">
		                <span class="add-on "><i class="icon-th glyphicon glyphicon-th-large"></i></span>
	                </div>
	            </div>
	        </div>
           	<div class="panel-footer">
                <button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
            </div>
        </div>
         <div class="ticket_table_content_goods cloud_list conDiv">
	         
	       </div>
			       
			    
      </div>
        
<!-- 选择门店 -->
<div id="storeDiv" class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" >
    <div class="modal-dialog" style="    width: 1050px;margin:30px auto;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title">门店列表</h4>
            </div>
            <div class="modal-body">
            	
	            <div class="ticket_table_content">
	            
			        <div class="panel panel-default form-search clasbordernone">
			            <div class="panel-body">
				        	<div class="conditions_team">
				                <label>店铺ID：</label><input type="text" name="storeId" class="form-control" placeholder="店铺ID">
			                </div>
			            	<div class="conditions_team">
				                <label>店铺名称：</label><input type="text" name="storeName" class="form-control" placeholder="店铺名称">
			                </div>
			                <button type="button" id="storeSearchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
				        </div>
			           	
			               
			            
			        </div>
			        <div class="ticket_table_content_th_store">
	        
	        		</div>
	        	</div>
        	</div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>

<!--日历控件-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/locales/bootstrap-datetimepicker.fr.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	
<script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/stock/stockInOut/js/stockInOutRecordList.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		/*日期*/
		
        $(".form_datetime").datetimepicker({
            format: 'yyyy-mm-dd',
            linked:true,
            weekStart: 1,
            autoclose: true,
            startView: 2,
            minView: 2,
            forceParse: false,
            language: 'zh-CN',
            todayBtn: true,
            pickerPosition: "bottom-left"
           
            
           
           
        });
		
		if($("[name=storeIdIn]").val() != "" && $("[name=storeIdIn]").val() != "undefined"){
			loadStoreStockGrounds();
		}
		
		$("#viewBtn").click(function(){
			
			if($("[name=store_id]").val() != "" && $("[name=store_id]").val() != "undefined"
					&& $("[name=store_id]").val() != undefined ){
				if($("[name=storeStockGround]").val() != null && $("[name=storeStockGround]").val() != ""){
					$(".conDiv").css("display","block");
					getData();
				}else{
					timedTaskFun(1000,'请选择库存地！','','err');
				}
				
			}else{
				timedTaskFun(1000,'请选择门店！','','err');
			}
		});
		
        var buttonsArr =[];
        function getData(){
        	
        	var _options ={
                url:_path+"/merge/stock/in-out/record/list"
                ,checkAll:true
                //查询条件
                ,data:{	"outUnit":$("[name=outUnit]").val(),
                		"outStockGround":$("[name=outStockGround]").val(),
                		"inUnit":$("[name=inUnit]").val(),
                		"inStockGround":$("[name=inStockGround]").val(),
                		"storeId":$("[name=store_id]").val(),
                		"stockGroundId":$("[name=storeStockGround]").val(),
                		"startDate":$("[name=startDate]").val(),
                		"endDate":$("[name=endDate]").val()}
                ,cloumns:[
                     {name:'凭证号',value:'voucherNum'}
                    ,{name:'凭证类型',value:'',type:"function", fun : function(obj){
                     	var html = "";
                     	if(obj.voucherType == 1){
                     		html += "采购入库";
                     	}
                    	return html;
                     }}
                    ,{name:'调出单位',value:'outUnit'}
                    ,{name:'调出库存地',value:'outStockGround'}
                    ,{name:'调入单位',value:'inUnit'}
                    ,{name:'调入库存地',value:'inStockGround'}
                    ,{name:'商品总额',type:"function", fun : function(obj){
                     	return formatCurrency(obj.goodsAmount / 100);
                     }}
                    ,{name:'入库时间',value:'createTimeStr'}
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var _htmlInfo =$("<dd></dd>");
                    	
                    	<shiro:hasPermission name="merge_stock_check_put_in_storage_goods_access">
	                    	var editBtn =$('<a href="javascript:void(0)" class="btn-link" name="columnMg" id="'+obj.id+'">查看入库商品</a>').appendTo(_htmlInfo);
	                    	editBtn.bind('click',function(){
	                    		
	            				var	_condition = {'stockInId':obj.id,"voucherNum":obj.voucherNum,"voucherType":obj.voucherType,
	            						"goodsAmount":obj.goodsAmount,"storeId":$("[name=store_id]").val(),"stockGroundId":$("[name=storeStockGround]").val()};
            		  			var queryCondition = JSON.stringify(_condition);
            		  			$.changePage(_path+"/merge/stock/check/put/in/storage/goods"+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition);
	   				  		});
	               		</shiro:hasPermission>
                    	
					  	return _htmlInfo;
                      }
                    }
                    
                ]
                ,buttons:buttonsArr
            };
        	$(".ticket_table_content_goods").grid(_options);
    	    $(".ticket_table_content_goods").find(".ticket_table_content").remove();
    	    $('<div class="ticket_table_content"></div>').appendTo($(".ticket_table_content_goods"));
        }
        
        //点击搜索按钮
        $("#searchBtn").click(function(){
       		//调用查询
       		getData();	
		})
		
    });

</script>