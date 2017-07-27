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
            <li class="active">库存地管理</li>
        </ol>
        <div class="panel panel-default form-search">
            <div class="panel-body">
	        	<div class="conditions_team">
	                <label>门店ID：</label><input type="text" name="storeId" class="form-control" placeholder="门店ID">
                </div>
	            <div class="conditions_team">
	               <label>库存地编号：</label><input type="text" name="stockGroundNumber" class="form-control" placeholder="库存地编号">
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
		
		//创建库存地
		var addfun =function(){
			$.changePage(_path+"/merge/stock/place/manager/add"+"?_="+(new Date()).getTime());
        }
		
		//删除库存地
		var deletefun =function(){
			
			var j = 0;
			var storeId;
			var stockGroundId;
			var isInitialise;
			var checkchild;
			$("[name=checkchild]").each(function(){
				if ($(this).prop("checked")) {
					j++;
					checkchild = $(this).val();
					
					storeId = $(this).parents("td").parents("tr").find("[name=storeId]").val();
					stockGroundId = $(this).parents("td").parents("tr").find("[name=stockGroundId]").val();
					isInitialise = $(this).parents("td").parents("tr").find("[name=isInitialise]").val();
					
				}
			});
			if (j == 0) {
				timedTaskFun(1000,'请选择库存地','','err');
			} else if(j > 1){
				timedTaskFun(1000,'只能选择一个库存地','','err');
			}else{
				if(isInitialise == 1){
					timedTaskFun(1000,'初始化库存地不能删除！','','err');
					return false ;
				}
				
				$.ajax({
					type : "post",
					url : _path+"/merge/stock/place/manager/delete",
					data :{"id":checkchild,"storeId":storeId,"stockGroundId":stockGroundId},
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
							var jumpUrl = '/merge/stock/place/manager/list';
							timedTaskFun(1000,'删除成功！',jumpUrl,'correct');
							
						}else if (data != null && data != 'undefined'
							&& data == -100) {
							timedTaskFun(2000,'删除失败，有库存记录后不允许删除！','','err');
						}else {
							timedTaskFun(1000,'删除失败！','','err');
						}
					}
				});
				
			}
			
        }
		
        var buttonsArr =[];
        <shiro:hasPermission name="merge_stock_place_manager_delete_access">
        	buttonsArr.push({text:'删除库存地',icon:'delete',handler:deletefun});
        </shiro:hasPermission>
        <shiro:hasPermission name="merge_stock_place_manager_add_access">
        	buttonsArr.push({text:'创建库存地',icon:'add',handler:addfun});
        </shiro:hasPermission>
        getData();
        function getData(){
        	
        	var _options ={
                url:_path+"/merge/stock/place/manager/list"
                ,checkAll:true
                //查询条件
                ,data:{	"storeId":$("[name=storeId]").val(),
                		"stockGroundNumber":$("[name=stockGroundNumber]").val()}
                ,cloumns:[
                     {name:'门店ID',value:'storeId'}
                    ,{name:'门店名称',value:'storeName'}
                    ,{name:'门店类型',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.storeType == 1){
                    		html += "门店";
                    	}else if(obj.storeType == 2){
                    		html += "网店";
                    	}else if(obj.storeType == 3){
                    		html += "DC";
                    	}
                    	return html;
                    }}
                    ,{name:'业态类型',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.storeFormatType == 1){
                    		html += "便利店";
                    	}else if(obj.storeFormatType == 2){
                    		html += "超市";
                    	}else if(obj.storeFormatType == 3){
                    		html += "百货";
                    	}else if(obj.storeFormatType == 4){
                    		html += "大卖场";
                    	}else if(obj.storeFormatType == 5){
                    		html += "线上商城";
                    	}
                    	return html;
                    }}
                    ,{name:'门店状态',type:"function", fun : function(obj){
                    	var html="";
                    	if(obj.storeStatus==1){
                    		html += "开启";
                    	}else if(obj.storeStatus==0){
                    		html += "停用";
                    	}
                    	
                    	html += " <input type='hidden' name='storeId' value="+obj.storeId+" />";
                    	html += " <input type='hidden' name='stockGroundId' value="+obj.stockGroundId+" />";
                    	html += " <input type='hidden' name='isInitialise' value="+obj.isInitialise+" />";
                    	
                    	return html;
                      }
                    }
                    ,{name:'库存地编号',value:'stockGroundNumber'}
                    ,{name:'库存地名称',value:'stockGroundName'}
                    ,{name:'操作',value:'id',type:"function", fun : function(obj){
                    	var _htmlInfo =$("<dd></dd>");
                    	
                    	<shiro:hasPermission name="merge_stock_place_manager_update_access">
	                    	var editBtn =$('<a href="javascript:void(0)" class="btn-link" name="columnMg" id="'+obj.id+'">修改</a>').appendTo(_htmlInfo);
	                    	editBtn.bind('click',function(){
	                   			
	                    		var html="";
	                        	if(obj.storeType == 1){
	                        		html += "门店";
	                        	}else if(obj.storeType == 2){
	                        		html += "网店";
	                        	}else if(obj.storeType == 3){
	                        		html += "DC";
	                        	}
	                    		
	            				var	_condition = {'storeId':obj.storeId,"storeName":obj.storeName,"storeTypeStr":html,"storeType":obj.storeType,
	            						'directlyOrgId':obj.directlyOrgId,'hierarchyId':obj.hierarchyId};
            		  			var queryCondition = JSON.stringify(_condition);
            		  			$.changePage(_path+"/merge/stock/place/manager/add"+"?_="+(new Date()).getTime()+"&queryCondition="+queryCondition);
	   				  		});
	               		</shiro:hasPermission>
                    	
					  	return _htmlInfo;
                      }
                    }
                ]
                ,buttons:buttonsArr
            };
        	$(".ticket_table_content").grid(_options);
        }
        
        //点击搜索按钮
        $("#searchBtn").click(function(){
       		//调用查询
       		getData();	
		})
		
        
    });

</script>