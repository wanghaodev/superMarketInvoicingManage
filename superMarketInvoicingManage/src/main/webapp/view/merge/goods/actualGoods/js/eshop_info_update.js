$(function(){
	//---------------------初始化已保存的辅助属性值列表 start----------------------
	
	var _assistantPropertyMap = window._assistantPropertyMap;
	var assistantPropertys = _assistantPropertyMap.assistantPropertyList
	if(assistantPropertys){
		$.each(assistantPropertys,function(i,ele){
			var propertyId = ele.propertyId;
			var propertyName = ele.propertyName;
			//==========辅助属性构建==============
			var _tr=$("<tr></tr>").appendTo($("#assistantPropertyTable tbody"));
			var _th=$("<th class=\"form-row-th\"></th>").appendTo(_tr);
			var _input = $('<input type="checkbox" name="assistantProperty" id='+propertyId+ ' value="'+propertyName+'">').appendTo(_th);
			var _span = $('<span>&nbsp;'+propertyName+'</span>').appendTo(_th);
			//==========辅助属性值构建==============
			var _td=$("<td></td>").appendTo(_tr);
			var _div = $('<div class="form-group form-conttrol-th"></div>').appendTo(_td);
			_input.click(function(){
				var _this = $(this);
  				if(_this.is(':checked')){
  					$.ajax({
  						async: false,//避免页面生成属性值列表 顺序随机现象
  						type : "post",
  						url : _path+"/merge/actual/goods/get/property/detail",
  						data :{'propertyId':propertyId},
  						beforeSend: function () {
  							//加载中
  							waitload();
  						},
  						success : function(data) {
  							closewait();
  							//若执行成功的话，则隐藏进度条提示
  							if (data != null && data != 'undefined') {
  								$.each(data.propertyValueList,function(i,obj){
  									//============判断是否需要选中 start =================
  									var isChecked = false;
  									var goodsValueList = window._assistantGoodsValueList;
  									var goodsValue;
  									for(var j=0 ;j<goodsValueList.length;j++){
  										if(goodsValueList[j].propertyValueId==obj.id){//根据属性值的属性值id，是否在_assistantGoodsValueList中的对应辅助属性值列表中
  											goodsValue = goodsValueList[j];
  											isChecked = true;
  										}
  									}
  									//============判断是否需要选中 end  =================
  									
  									var _input;
  									if(isChecked){
  										_input = $('<input type="checkbox" name="assistantPropertyValue"  propertyValueId="'+obj.id+'" value="'+obj.propertyValue+'" goodsValueId = "'+goodsValue.id+'"style="margin-left:2%;"  checked="checked" /> ').appendTo(_div);
  									}else{
  										_input = $('<input type="checkbox" name="assistantPropertyValue"  propertyValueId="'+obj.id+'" value="'+obj.propertyValue+'" style="margin-left:2%;" /> ').appendTo(_div);
  									}
  									var _span = $('<span>&nbsp;'+obj.propertyValue+'</span>').appendTo(_div); 
  								});
  							} else {
  								timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
  							}
  						}
  					});
  				}else {//辅助属性取消选中
  					_div.empty();
  				}
			});
			//触发属性选择时间，加载属性值，及属性值选中状态
			_input.click();
		});
	}
	 
	//---------------------初始化已保存的辅助属性值列表 end ----------------------
})
$(function(){
	
	//=======================属性列表单出层start======================
    $("#popSelectPropertiesList").on("click",function(){
    	$('.modal-distribution').find('[name=checkall]').attr('checked',false);
        $('.modal-distribution').modal('show');
        getData();
    });

  //加载属性列表
    var buttonsArr =[];
      function getData(){
          var _options ={
              url:_path+"/goods/purchase/tree/property/list"
              ,checkAll:true
              //查询条件
              ,data:{'propertyName':$("[name=propertyName]").val()
              	  ,'propertyType':2,'categoryId':$('[name=goodsCategoryId]').val()}
              ,cloumns:[
			{name:'序号',value:'orderNumber'}
                  ,{name:'所属分类',value:'categoryName'}
                  ,{name:'属性名称',value:'propertyName'}
                  ,{name:'属性类型',value:'operate',type:"function", fun : function(obj){
                  	var html="";
                  	
                  	if (obj.propertyType == 1) {
                  		html = "销售属性";
                  	} else if (obj.propertyType == 2) {
                  		html = "辅助属性";
                  	}
              	
                  	return html;
                    }
                  ,}
              ]
              ,buttons:buttonsArr
          };
          $(".ticket_table_content").grid(_options);
      }
      //搜索
      $("#searchBtn").click(function(){
		getData();
		})
	//选中属性将属性名称和属性ID返回界面
    $("[name=checkPropertySure]").on("click",function(){
      	//获取选择的结果
      	var proArr=[];
      	var selPropertyResultTrListHtml=[];
      	//===========对辅助属性列表中的checkbox 按id进行排序 start ==========
      	var checkedCheckchildList = $.makeArray($(':checked[name=checkchild]'));
      	checkedCheckchildList.sort(function(a,b){
				var aPropertyId = parseInt($(a).val());
				var bPropertyId = parseInt($(b).val());
				return aPropertyId-bPropertyId;
			});
      	//===========对辅助属性列表中的checkbox 按id进行排序 end ==========
      	$(':checked[name=checkchild]').each(function(i,ele){
      		if ($(this).prop("checked")) {
      			//==========该辅助属性判断是否已经选择过 start========
      			var isOld = false; 
      			var oldPropertyInputList = $("#assistantPropertyTable tbody").find('[name=assistantProperty]');
      			$.each(oldPropertyInputList,function(i,ele2){
      				 if($(ele).val() == $(ele2).attr('id')){
      					 isOld = true;
      					 return false;//结束each 
      				 }
      			 });
      			//==========该辅助属性判断是否已经选择过 end ========
      			 if(!isOld){
	      			var propertyId = $(this).val();
	      			var propertyName = $(this).closest("tr").find("td:eq(3)").text().trim();
	      			//==========辅助属性构建==============
	    			var _tr=$("<tr></tr>").appendTo($("#assistantPropertyTable tbody"));
	    			var _th=$("<th class=\"form-row-th\"></th>").appendTo(_tr);
	    			var _input = $('<input type="checkbox" name="assistantProperty" id='+propertyId+ ' value="'+propertyName+'">').appendTo(_th);
	    			var _span = $('<span>&nbsp;'+propertyName+'</span>').appendTo(_th);
	    			//==========辅助属性值构建==============
	    			var _td=$("<td></td>").appendTo(_tr);
	    			var _div = $('<div class="form-group form-conttrol-th"></div>').appendTo(_td);
	    			_input.click(function(){
	    				var _this = $(this);
	      				if(_this.is(':checked')){
	      					$.ajax({
	      						async: false,//避免页面生成属性值列表 顺序随机现象
	      						type : "post",
	      						url : _path+"/merge/actual/goods/get/property/detail",
	      						data :{'propertyId':propertyId},
	      						beforeSend: function () {
	      							//加载中
	      							waitload();
	      						},
	      						success : function(data) {
	      							closewait();
	      							//若执行成功的话，则隐藏进度条提示
	      							if (data != null && data != 'undefined') {
	      								$.each(data.propertyValueList,function(i,obj){
	      									//============判断是否需要选中 start =================
	      									var isChecked = false;
	      									var goodsValueList = window._assistantGoodsValueList;
	      									var goodsValue;
	      									for(var j=0 ;j<goodsValueList.length;j++){
	      										if(goodsValueList[j].propertyValueId==obj.id){//根据属性值的属性值id，是否在_assistantGoodsValueList中的对应辅助属性值列表中
	      											goodsValue = goodsValueList[j];
	      											isChecked = true;
	      										}
	      									}
	      									//============判断是否需要选中 end  =================
	      									
	      									var _input;
	      									if(isChecked){
	      										_input = $('<input type="checkbox" name="assistantPropertyValue"  propertyValueId="'+obj.id+'" value="'+obj.propertyValue+'" goodsValueId = "'+goodsValue.id+'"style="margin-left:2%;"  checked="checked" /> ').appendTo(_div);
	      									}else{
	      										_input = $('<input type="checkbox" name="assistantPropertyValue"  propertyValueId="'+obj.id+'" value="'+obj.propertyValue+'" style="margin-left:2%;" /> ').appendTo(_div);
	      									}
	      									var _span = $('<span>&nbsp;'+obj.propertyValue+'</span>').appendTo(_div); 
	      								});
	      							} else {
	      								timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
	      							}
	      						}
	      					});
	      				}else {//辅助属性取消选中
	      					_div.empty();
	      				}
	    			});
      			}
      		}
      	});
      //===========对辅助属性列表中的checkbox 按id进行排序 start ==========
      	var checkedCheckchildList = $.makeArray($('#assistantPropertyTable tr:gt(0)'));
      	checkedCheckchildList.sort(function(a,b){
				var aPropertyId = parseInt($(a).find('[name=assistantProperty]').attr('id'));
				var bPropertyId = parseInt($(b).find('[name=assistantProperty]').attr('id'));
				return aPropertyId-bPropertyId;
			});
      	$.each(checkedCheckchildList,function(i,ele){
      		$('#assistantPropertyTable').append(ele);
      	});
      	//清空属性checkbox列表
      	$('.modal-distribution').modal('hide');
    });
    //=======================属性列表单出层end======================	
    	
	
});
$(function(){
   	/*富文本*/
    $('.click2edit').summernote({
        lang: 'zh-CN',
        height:350,
        callbacks: {
            onImageUpload: function(files) { //the onImageUpload API  
            	//选择图片：进行异步上传图片到mongdb
            	var img = sendFile(files[0]);  
            }  
    	}  
    });
    //显示富文本的值
    //$('.click2edit').summernote('code',$("#goodsDetailStr").val());
	
	$("#eshop-info-update-from").find("[name=cancelButton]").click(function(){
			$.changePage(_path+"/merge/actual/goods/list"+"?_="+(new Date()).getTime());
	});
	
	//点击：添加按钮触发事件
	 $("#eshop-info-update-from").find("[name=addSub]").click(function(){
	    $('#eshop-info-update-from').bootstrapValidator('validate');
		 if(!$('#eshop-info-update-from').data('bootstrapValidator').isValid()){  
             return false;  
         } 
		 
		//获取富文本框的值
	   	 	var markupStr = $('.click2edit').summernote('code');
	    	$('.click2edit').summernote('destroy');
	    //存入隐藏域
	    	$("#goodsDetailStr").val(markupStr);
			
		//获取图片绝对路径
   		//$('input[name=absolutePath]').val(picArray.join(';'));
   		var picAbsolutePath = [];
   		$.each($("[name=mainPic]"),function(i,ele){
   			picAbsolutePath.push($(ele).val());
   		});
   		$('#absolutePath').val(picAbsolutePath.join(','))
   		//获取图片相对路径
   		var picOppositePath = [];
   		$.each($("[name=mainPic]"),function(i,ele){
   			picOppositePath.push($(ele).attr('alt'));
   		});
   		$('#oppositePath').val(picOppositePath.join(','))
   		
   		//==============组装goodsInfoPropertysJSON start===============
   		var goodsInfoPropertys={};
   		var auxiliaryPropertys = {};
   		var delAuxiliaryPropertysGoodsValueIds=[];//保存需要删除的goodsValueId
   		var salePropertyList = [];
   		$.each($('#assistantPropertyTable').find('tr:gt(0)'),function(i,ele){
   			var assistantPropertyInput = $(ele).find(':checked[name=assistantProperty]');
   			//debugger;
   			if(assistantPropertyInput.length>0){
   				if(!auxiliaryPropertys.assistantPropertyList){
   			   		auxiliaryPropertys.assistantPropertyList =[];
   				}
   				var assistantPropertyValueInputList = $(ele).find(':checked[name=assistantPropertyValue]');
   				if(assistantPropertyValueInputList.length>0){
   					var propertyObj = {};
   					propertyObj.propertyId = assistantPropertyInput.attr('id');
   					propertyObj.propertyName = assistantPropertyInput.val();
   					auxiliaryPropertys.assistantPropertyList.push(propertyObj);
   					auxiliaryPropertys[propertyObj.propertyId] = [];
   					$.each(assistantPropertyValueInputList,function(i,ele){
   						var valueObj = {};
   						valueObj.propertyValueId = $(ele).attr('propertyValueId');
   						valueObj.propertyValueName = $(ele).val();
   						//选择的辅助属性值，是否包含goodsValueId，没有则表示是新选择的值
   						if(!$(ele).attr('goodsValueId')){
   							valueObj.isNew = "true";
   						}
   						auxiliaryPropertys[propertyObj.propertyId].push(valueObj);
   					});
   					
   				}
   			}
   		});
   		//===========获取要删除的goodsValueId start=============
   		$.each(_assistantGoodsValueList,function(i,oldGoodsValue){
   			delAuxiliaryPropertysGoodsValueIds.push(oldGoodsValue.id);
   			//去掉任然勾选的旧商品值
   			$.each($('#assistantPropertyTable :checked[goodsvalueid][name=assistantPropertyValue]'),function(j,newGoodsValue){
   				if(oldGoodsValue.id == $(newGoodsValue).attr('goodsValueId')){
   					delAuxiliaryPropertysGoodsValueIds.pop(oldGoodsValue.id);
   				}
   			});
   		});
   		//===========获取要删除的goodsValueId end=============

   		$.each($('#goodsSaleImgTable').find('tr:gt(0)'),function(i,ele){
   			var saleId = $(ele).attr('goodssaleid');
   			
   			var imgUrl = "";
   			//检查是否上传图片
   			if($(ele).find('input[name=pic'+i+']').length>0){
   				imgUrl = $(ele).find('input[name=pic'+i+']').val().trim();
   			}
   			salePropertyList.push({saleId:saleId,imgUrl:imgUrl})
   		});
   		goodsInfoPropertys.auxiliaryPropertys = auxiliaryPropertys;
   		goodsInfoPropertys.delAuxiliaryPropertysGoodsValueIds = delAuxiliaryPropertysGoodsValueIds;
   		goodsInfoPropertys.salePropertyList = salePropertyList;
   		$('input[name=goodsInfoPropertys]').val(JSON.stringify(goodsInfoPropertys));
   		console.log(JSON.stringify(goodsInfoPropertys));
   		//==============组装goodsInfoPropertysJSON end ===============
		//异步发送请求：进行添加
 			  $.ajax({
 				type : "post",
 				url : _path+"/merge/actual/goods/eshop/info/update",
 				data :$("#eshop-info-update-from").serialize(),
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
 						//alert-success 成功，alert-info信息，alert-warning警告，alert-danger错误 
 						var jumpUrl = '/merge/actual/goods/list';
 							timedTaskFun(1000,'实物电商信息添加成功',jumpUrl,'correct');
 					} else {
 						timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
 					}
 				}
 			 });
 		//移除
 	}); 
 	console.log('${goodsInfo.goodsDetailStr}');
	    //商品主图
 	var number = $('#goodsInfoImgs').val().trim();
 	if(number[number.length-1] == ","){
 		var newstr = number.substring(0,number.length-1);
 	 	var newstrList = newstr.split(",");
 	}
     callUploader({
			fileNum:5 
			, uploaderID: "#mainUploader"
			, filePicker:"#mainFilePicker"
			, dndArea: "#mainDndArea"
			, continueAdd:"#mainFilePicker2"/*继续添加按钮*/
			, kideAddress: "#mainTypePic"
			, mark:"mainPic"
			, hiddenArry: newstrList
		}); 
     //资讯配图大小提示
		$("#dndArea").find("p").html("最多可上传5张，且图片大小不超过500kb");
});
 
$(function() {
    $('#eshop-info-update-from').bootstrapValidator({
			message: 'This value is not valid',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
				},
            fields: {
                brandName: {
                    message: '品牌名称验证失败',
                    validators: {
                        notEmpty: {
                            message: '品牌名不能为空'
                        },
                        stringLength: {
                            max: 50,
                            message: '最多可输入50个汉字'
                        }
                    }
                }
        }
    });
});