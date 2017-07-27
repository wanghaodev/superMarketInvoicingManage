<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>	
<style type="text/css">
.modal-footer button{
	margin-top:20px;
}
.form-control-static{
	padding:0;
}
</style>
	<div class="container-fluid">
        <ol class="breadcrumb">
            <span>当前位置：</span>
            <li><a href="index">零售平台</a></li>
            <li><a href="####">商品管理</a></li>
            <li class="active">实物商品管理</li>
        </ol>
        <div class="row">
	        <div class="col-md-9">
	        <div class="panel panel-default form-search">
	        	<div class="panel-body">
		        	<div class="conditions_team">
		        		<label>商品名称：</label>
		        		<input type="text" name="goodsName" class="form-control " placeholder="输入商品名称"/>
		        	</div>
		        	<div class="conditions_team">
		        		<label>SPU：</label>
		        		<input type="text" name="goodsSpu" class="form-control " placeholder="输入商品SPU" />
		        	</div>
		        	
		        	<div class="conditions_team">
		        		<label>SKU：</label>
		        		<input type="text" name="goodsSku" class="form-control " placeholder="输入商品SKU" />
		        	</div>
		        	
		        	<div class="conditions_team">
		        		<label>状态：</label>
		        		<select name="state" class="form-control">
		        		   <option value="-1">--请选择状态--</option>
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
		        		<label>商品类型：</label>
				              	<select name="selfSupport" class="form-control">
				        		   <option value="-1">--请选择商品类型--</option>
				        		   <option value="0">非自营</option>
				        		   <option value="1">自营</option>
				        		</select>
			        		</div>
		        	</div>
		        <div class="panel-footer">
		        	<input type="hidden" name="goodsCategoryId" />
	            	<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>查询</button>
	           	</div>
	        </div>
	        
	        <div class="actual_goods_table_content cloud_list">
	        	<div id="buttonsId" class="row list-title">
		        	<div class="col-md-4"><h4>商品列表列表</h4></div>
		        </div>
	        </div>
	      </div> 
      <!-- #####################显示tree  start##################### -->
        	<div class="col-md-3">
        		<div class="panel panel-default">
        			<div class="panel-heading">商品类目</div>
        			<div class="panel-body">
        				<form  class="form-inline mb-20">
        					<ul id="serviceCategoryTreeDemo" class="ztree"></ul>
        				</form>
			        </div>
        		</div>
        	</div>
        	<!-- #####################显示tree  end##################### -->
		  	      
        </div>
        <!-- 状态修改弹出框  start-->
	    <div class="modal fade in modal-distribution"  tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" id="updateStateModal">
		    <div class="modal-dialog" style="width:450px;">
		        <div class="modal-content">
		            <div class="modal-header" style="border:none;">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		                <h4 class="modal-title">修改商品状态</h4>
		            </div>
<!-- 		            <div class="panel panel-default form-search"> -->
<!-- 				            <div class="panel-body"> -->
<!-- 					        	<div class="conditions_team"> -->
<!-- 					        		<input type="text" name="propertyName" placeholder="属性名称" /> -->
<!-- 					        		<button type="button" id="searchBtn" class="btn btn-primary"><i class="icon_search"></i>搜索</button> -->
<!-- 					        	</div> -->
<!-- 					        </div> -->
				            	
<!-- 					</div> -->
					<form id='updateStateForm'>
					<input type="hidden" name='updateGoodsId'> 
		            <div class="modal-body">
		            	 <div class="form-group">
							<label class='col-sm-3 control-label'>名称</label>
							<div class="col-sm-9">
						    	<p class="form-control-static" id='goodsName'></p>
						    </div>
						</div>
		            	 <div class="form-group">
							<label class='col-sm-3 control-label'>SPU</label>
							<div class="col-sm-9">
						      <p class="form-control-static" id='spu'></p>
						    </div>
						</div>
		            	 <div class="form-group">
							<label for="updateState"  class='col-sm-3 control-label'>商品状态</label>
							<div class="col-sm-9">
				              	<select name="updateState" class="form-control">
				        		   <option value="-1">--请选择状态--</option>
				        		   <option value="0">试销商品</option>
				        		   <option value="1">可订货，可销售</option>
				        		   <option value="2">可订货，不可销售</option>
				        		   <option value="3">不可订货，可销售</option>
				        		   <option value="4">不可订货，不可销售</option>
				        		   <option value="5">快速出清</option>
				        		   <option value="6">汰换品</option>
				        		</select>
			        		</div>
						</div>
		            	
		            </div>
		            <div class="modal-footer" style="border:none;">
		                <button type="button" class="btn btn-primary" name="updateGoodsStateSure" id="updateGoodsStateSure">确定</button>
		                <button type="button" class="btn btn-warning" data-dismiss="modal" id="cancleUpdateGoodsState" name="cancleUpdateGoodsState">取消</button>
		            </div>
		            </form>
		        </div><!-- /.modal-content -->
		    </div><!-- /.modal-dialog -->
		</div>
   <!-- 状态修改弹出框  end--> 
      <!-- add by wanghao start 引入：商品列表列表js -->
	  <script type="text/javascript" src="<%=request.getContextPath() %>/view/merge/goods/actualGoods/js/actual_goods_list.js"></script>
	  <script type="text/javascript">
	  var buttonsArr =[];
		var add = function(){
			addfun();
		}
// 		var view = function(){
// 			viewfun();
// 		}
		var edit = function(){
			editfun();
		}
		//电商数据管理
		var eshop = function(){
			eshopInfofun();
		}

        <shiro:hasPermission name="merge_actual_goods_eshop_info_access">
			buttonsArr.push({text:'电商数据管理',icon:'add',handler:eshop});
		</shiro:hasPermission>
        <shiro:hasPermission name="merge_actual_goods_add_access">
    		buttonsArr.push({text:'添加商品',icon:'add',handler:add});
		</shiro:hasPermission>
        <shiro:hasPermission name="merge_actual_goods_update_access">
			buttonsArr.push({text:'修改商品',icon:'edit',handler:edit});
		</shiro:hasPermission>
		
		getData();
		
	    //异步加载：商品列表列表数据
	    function getData(){
	        var _options ={
	        		
	        	parentMark:".actual_goods_table_content",
	            url:_path+"/merge/actual/goods/list"
	            ,checkAll:true
	            //查询条件
	            ,data:{
	            	"goodsName":$("[name=goodsName]").val(),
	            	 "goodsSpu":$("[name=goodsSpu]").val(),
	            	 "goodsSku":$("[name=goodsSku]").val(),
	            	 "goodsCategoryId":$("[name=goodsCategoryId]").val(),
	            	 "state":($("[name=state]").val()=="-1")?"":$("[name=state]").val(),
	            	 "selfSupport":($("[name=selfSupport]").val()=="-1")?"":$("[name=selfSupport]").val()
	            	 }
	            //table 的 th内容
	            ,cloumns:[
	                 {name:'SPU',value:'goodsSpu'}
	                ,{name:'商品名称',value:'goodsName',type:"function",fun:function(obj){
	                	//用于查询商品详情
	                	var html=" ";
	                		html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='toViewGoods("+obj.id+")'>"+obj.goodsName+"</a>";
	                		return html;
	                	}
	                }
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
	                ,{name:'SKU数',value:'skuNums'}
	                ,{name:'所属分类',value:'categoryName'}
	                ,{name:'状态',value:'state',type:"function", fun : function(obj){
	                    	var html="";
	                    	if(obj.state == 0){
	                    		html += "试销商品";
	                    	}else if(obj.state==1){
	                    		html += "可订货，可销售";
	                    	}else if(obj.state==2){
	                    		html += "可订货，不可销售";
	                    	}else if(obj.state==3){
	                    		html += "不可订货，可销售";
	                    	}else if(obj.state==4){
	                    		html += "不可订货，不可销售";
	                    	}else if(obj.state==5){
	                    		html += "快速出清";
	                    	}else if(obj.state==6){
	                    		html += "汰换品";
	                    	}
	                    	return html;
	                	}
	                }
	               ,{name:'操作',value:'operate',type:"function", fun : function(obj){
	                 	var html="";
	                 	<shiro:hasPermission name="merge_actual_goods_status_access">
	                		html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='toUpdateGoodsState("+obj.id+",\""+obj.goodsName+"\","+obj.goodsSpu+","+obj.state+")'>修改商品状态</a>";
	                	</shiro:hasPermission>
	                	<shiro:hasPermission name="merge_actual_goods_delete_access">
	                	html += "<a href='javascript:void(0)' class='btn-link mr-20' onclick='deleteGoods("+obj.id+")'>删除</a>";
	                	</shiro:hasPermission>
	                	return html;
	                   }
	                 }
	            ]
	            ,buttons:buttonsArr
	        };
	        $(".actual_goods_table_content").grid(_options);
	    }
	        
	    //点击：搜索按钮触发事件
	    $("#searchBtn").click(function(){
	    		//调用查询
	    		getData();	
			 
		})
	  
	  </script>