if($("[name=isUpdate]").val() == 1){
	
	//修改
	$("#storeIdTd").html($("[name=storeIdIn]").val());
	$("#storeNameTd").html($("[name=storeNameIn]").val());
	$("#storeTypeTd").html($("[name=storeTypeIn]").val());
	$(".emptyCla").css("display","none");
	$(".storeInfoCla").css("display","table-cell");
	
	loadStockGrounds();
}

//选择门店
   $("#selectStoreBtn").on("click",function(){
	   $('#storeDiv').modal('show');
       getDataStore();
   });

   var addStorefun = function(){
	   	var j = 0;
	   	var storeId = "";
   	var storeName = "";
   	var storeType = "";
   	var storeTypeIn="";
   	var storeHierarchyId="";
   	var storeDirectlyOrgId="";
   	$("[name=checkchild]").each(function(){
   		if ($(this).prop("checked")) {
   			j++;
   			var checkchild = $(this).val();
   			storeId = checkchild;
   			storeName = $(this).parents("td").parents("tr").find("[name=store_name]").val();
   			storeType = $(this).parents("td").parents("tr").find("[name=store_type]").val();
   			storeTypeIn = $(this).parents("td").parents("tr").find("[name=store_type_in]").val();
   			storeHierarchyId = $(this).parents("td").parents("tr").find("[name=store_hierarchyId]").val();
   			storeDirectlyOrgId = $(this).parents("td").parents("tr").find("[name=store_directlyOrgId]").val();
   		}
   	});
   	if (j == 0) {
   		timedTaskFun(1000,'请选中一个门店添加','','err');
   	}else if (j > 1) {
   		timedTaskFun(1000,'只能选中一个门店添加','','err');
   	} else {
   		
   		$("#storeIdTd").html(storeId);
   		$("[name=storeIdHid]").val(storeId);
   		$("#storeNameTd").html(storeName);
   		$("#storeTypeTd").html(storeType);
   		$("[name=storeType]").val(storeTypeIn);
   		$("[name=storeHierarchyId]").val(storeHierarchyId);
   		$("[name=storeDirectlyOrgId]").val(storeDirectlyOrgId);
   		$('#storeDiv').modal('hide');
   		
   		$(".emptyCla").css("display","none");
   		$(".storeInfoCla").css("display","table-cell");
	   		
	   		loadStockGrounds();
	   	}
   }
   
   var buttonsArrStore =[];
   buttonsArrStore.push({text:'添加',icon:'add',handler:addStorefun});
   function getDataStore(){
       var _options ={
           url:_path+"/merge/norm/price/store/list"
       ,checkAll:true
       //查询条件
       ,data:{"storeId":$("[name=storeId]").val(),"storeName":$("[name=storeName]").val()}
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
             	html += " <input type='hidden' name='store_type' value="+html+" />";
             	html += " <input type='hidden' name='store_type_in' value="+obj.type+" />";
            	html += " <input type='hidden' name='store_name' value="+obj.storeName+" />";
            	html += " <input type='hidden' name='store_hierarchyId' value="+obj.hierarchyId+" />";
            	html += " <input type='hidden' name='store_directlyOrgId' value="+obj.orgId+" />";
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
       ]
       ,buttons:buttonsArrStore
       ,buttonMark:"#storebuttonsId"
   };
   $(".ticket_table_content_th_store").grid(_options);
   }

   $("#storeSearchBtn").click(function(){
   	getDataStore();
   });
   
   function loadStockGrounds(){
	   
	   
	   $.ajax({
			type : "post",
		url : _path+"/merge/stock/place/manager/stock/ground/list",
		data :{"storeId":$("[name=storeIdHid]").val(),"storeType":$("[name=storeType]").val()},
		success : function(data) {
			
			if (data != null && data != 'undefined' && data.length == 0) {
				$(".tableCla").css("display","table");
				$(".btnDivCla").css("display","block");
				$("#stockGroundTbody").html("");
				//追加创建tr
				appendTrFun();	
				return false;
			}
			
			if (data != null && data != 'undefined') {
				$(".tableCla").css("display","table");
				$(".btnDivCla").css("display","block");
				$("#stockGroundTbody").html("");
				var _tbody = $("#stockGroundTbody");
				var num = 0;
				
				$.each(data,function(i,item){
					var _tr = $('<tr class="subTr"><input type="hidden" name="stockGroundId" value="'+item.stockGroundId
							+'"><input type="hidden" name="stockGroundIsInitialise" value="'+item.isInitialise
							+'"><input type="hidden" name="storeStockGroundId" value="'+item.storeStockGroundId+'"></tr>').appendTo(_tbody);
					var _td1 = $('<td name="stockNumber">'+item.stockNumber+'</td>').appendTo(_tr);
					var _td2 = $('<td><input type="hidden" name="stockName" value="'+item.stockName+'"><span class="conSpan">'+item.stockName+'</span></td>').appendTo(_tr);
					
					var instruction = "";
					if(item.instruction != "" && item.instruction != "undefined" && item.instruction != undefined){
						instruction = item.instruction;
					}
					var _td3 = $('<td class="stockInstructionTd"><input type="hidden" name="stockInstruction" value="'+instruction+'"><span class="conSpan">'+instruction+'</span></td>').appendTo(_tr);
					
					var status = "启用";
					var _status = 1;
					if( item.status != "undefined" && item.status != undefined){
						_status = item.status;
						if(item.status == 1){
							status = "启用";
						}else if(item.status == 0){
							status = "停用";
						}
					}
					var _td4 = $('<td><input type="hidden" name="stockStatus" value="'+_status+'"><span class="stockStatusSpan conSpan">'+status+'</span></td>').appendTo(_tr);
					var _td5 = $('<td></td>').appendTo(_tr);
					
					if(item.isInitialise == 0){
						var _td5_a0 = $('<a  href="javascript:void(0)" class="btn-link">修改</a>').appendTo(_td5);
						_td5_a0.bind("click",function(){
							$(this).parent().parent().find("[name=status]").remove();
							var stockStatus = $(this).parent().parent().find("[name=stockStatus]").val();
							
							$(this).parent().parent().find(".conSpan").remove();
							$(this).parent().parent().find("[name=stockName]").attr("type","text");
							$(this).parent().parent().find(".stockInstructionTd").html('<textarea name="stockInstruction" style="width:400px;">'+$(this).parent().parent().find("[name=stockInstruction]").val()+'</textarea>');
							if(stockStatus == 1){
								var _td4_select = $('<select class="form-control" name="status"><option value="1" selected="selected" >启用</option><option value="0">停用</option></select>').appendTo(_td4);
							}else if(stockStatus == 0){
								var _td4_select = $('<select class="form-control" name="status"><option value="1">启用</option><option value="0" selected="selected" >停用</option></select>').appendTo(_td4);
							}
						});
						
					}
					var _td5_a1 = $('<a  href="javascript:void(0)" class="btn-link">启用</a>').appendTo(_td5);
					_td5_a1.bind("click",function(){
						$(this).parent().parent().find("[name=stockStatus]").val(1);
						$(this).parent().parent().find(".stockStatusSpan").html("启用");
						
					});
					
					var _td5_a2 = $('<a  href="javascript:void(0)" class="btn-link">停用</a>').appendTo(_td5);
					_td5_a2.bind("click",function(){
						$(this).parent().parent().find("[name=stockStatus]").val(0);
						$(this).parent().parent().find(".stockStatusSpan").html("停用");
						
					});
					
				});
				
		    }
			//追加创建tr
			appendTrFun();	
		  }
	   });
   }
   
   //追加创建tr
   function appendTrFun(){
	   var num = 0;
	   var _tbody = $("#stockGroundTbody");
	  
	   if($("#stockGroundTbody").find('tr:last').find("[name=stockNumber]").text() != "undefined" &&
			   $("#stockGroundTbody").find('tr:last').find("[name=stockNumber]").text() != ""){
		   num = parseInt($("#stockGroundTbody").find('tr:last').find("[name=stockNumber]").text());
	   }
	   
	   if(num < 7){
		   num = 7;
	   }else{
		  num ++; 
	   }
	   
		if(num != 0 && num.toString().length == 1){
			num = "0"+num;
		}
		
		var _tr = $('<tr class="addTr"></tr>').appendTo(_tbody);
		var _td1 = $('<td>'+num+'</td>').appendTo(_tr);
		var _td2 = $('<td><input type="text" name="name"></td>').appendTo(_tr);
		var _td3 = $('<td><textarea name="instruction" style="width:400px;"></textarea></td>').appendTo(_tr);
		var _td4 = $('<td></td>').appendTo(_tr);
		var _td4_select = $('<select class="form-control" name="status"><option value="1">启用</option><option value="0">停用</option></select>').appendTo(_td4);
		var _td5 = $('<td></td>').appendTo(_tr);
		var _td5_a = $('<a  href="javascript:void(0)" class="btn-link">创建</a>').appendTo(_td5);
		
		_td5_a.bind('click',function(){
			var instruction = $("[name=instruction]").val();
			var name = $("[name=name]").val();
			var status = $("[name=status]").val();
			
			if(name == "" || name == "undefined"){
				timedTaskFun(1000,'库存地名称不能为空！','','err');
				return false;
			}
			
			if(name.length > 10){
				timedTaskFun(1000,'库存地名称不能超过10个字符！','','err');
				return false;
			}
			
			if(instruction == "" || instruction == "undefined"){
				timedTaskFun(1000,'库存地说明不能为空！','','err');
				return false;
			}
			
			if(instruction.length > 50){
				timedTaskFun(1000,'库存地说明不能超过50个字符！','','err');
				return false;
			}
			
			$(".addTr").remove();
			
			var _tr = $('<tr class="subTr"></tr>').appendTo(_tbody);
			var _td1 = $('<td name="stockNumber">'+num+'</td>').appendTo(_tr);
			var _td2 = $('<td><input type="hidden" name="stockName" value="'+name+'"><span class="conSpan">'+name+'</span></td>').appendTo(_tr);
			var _td3 = $('<td class="stockInstructionTd"><input type="hidden" name="stockInstruction" value="'+instruction+'"><span class="conSpan">'+instruction+'</span></td>').appendTo(_tr);
			
			var _status = "启用";
			if(status != "" && status != "undefined" && status != undefined){
				if(status == 1){
					_status = "启用";
				}else if(status == 0){
					_status = "停用";
				}
			}
			
			var _td4 = $('<td><input type="hidden" name="stockStatus" value="'+status+'"><span class="stockStatusSpan conSpan">'+_status+'</span></td>').appendTo(_tr);
			var _td5 = $('<td></td>').appendTo(_tr);
			var _td5_a0 = $('<a  href="javascript:void(0)" class="btn-link">修改</a>').appendTo(_td5);
			_td5_a0.bind("click",function(){
				var stockStatus = $(this).parent().parent().find("[name=stockStatus]").val();
				
				$(this).parent().parent().find(".conSpan").remove();
				$(this).parent().parent().find("[name=stockName]").attr("type","text");
				$(this).parent().parent().find(".stockInstructionTd").html('<textarea name="stockInstruction" style="width:400px;">'+$(this).parent().parent().find("[name=stockInstruction]").val()+'</textarea>');
				if(stockStatus == 1){
					var _td4_select = $('<select class="form-control" name="status"><option value="1" selected="selected" >启用</option><option value="0">停用</option></select>').appendTo(_td4);
				}else if(stockStatus == 0){
					var _td4_select = $('<select class="form-control" name="status"><option value="1">启用</option><option value="0" selected="selected" >停用</option></select>').appendTo(_td4);
				}
			});
			var _td5_a1 = $('<a  href="javascript:void(0)" class="btn-link">启用</a>').appendTo(_td5);
			_td5_a1.bind("click",function(){
				$(this).parent().parent().find("[name=stockStatus]").val(1);
				$(this).parent().parent().find(".stockStatusSpan").html("启用");
				
			});
			var _td5_a2 = $('<a  href="javascript:void(0)" class="btn-link">停用</a>').appendTo(_td5);
			_td5_a2.bind("click",function(){
				$(this).parent().parent().find("[name=stockStatus]").val(0);
				$(this).parent().parent().find(".stockStatusSpan").html("停用");
				
			});
			
			appendTrFun();
			
		});
		
   }
   
   