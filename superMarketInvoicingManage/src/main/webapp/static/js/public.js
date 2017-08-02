 /**
 * Created by flyyc on 2016/5/5 0005.
 */
/*
 * 列表,详情内容不够的时候,白色背景通底 
 */
var wHeight = $(window).height()- 68 - 38 - 20;
$(".whiteBg").css("min-height",wHeight);

/*全选*/
$("input[name='checkall']").on('click',function(){
    if($(this).is(':checked')){
        $("input[name='checkchild']").prop('checked',true);
    }else{
        $("input[name='checkchild']").prop('checked',false);
    }
})
//加载中
function waitload(){
    if($(".waitload").length < 1){
        //加入div
        var waitload = $("<div class='waitload'></div>").appendTo($("body"));
        var waitp = $("<p>加载中,请稍后......</p>").appendTo(waitload);
        var waitimg = $("<img src="+_path+"/static/images/wait.png>").prependTo(waitp);
        //计算位置
        var waitpwidht ="-"+ parseInt(waitp.outerWidth())/2 + "px";
        var waitpheight ="-"+ parseInt(waitp.outerHeight())/2 + "px";
        //添加位置
        waitp.css(
            {"margin-top":waitpheight,"margin-left":waitpwidht}
        )
    }else{
        $(".waitload").show();
    }
}
//删除加载中
function closewait(){
    $(".waitload").hide();
}
/*自定义封装方法*/
$.extend($.fn, {
	/*列表解析*/
    grid: function (options) {
        var _this = this;
        var _total, 
        //modify by gaolp start
        	_pageSize=(options.data.pageSize != null && options.data.pageSize != undefined)?options.data.pageSize:10,
        //modify by gaolp start
        //add by yaofeng start
            _pageNumber =(options.data.pageNo != null && options.data.pageNo != undefined)?options.data.pageNo:1,
        //add by yaofeng end
            _numPages, $pagenav,//分页相关
            defaults, opts, _url, _cloumns,//参数相关
            $listTitle, $tableTeam, $table,//table相关
            $thead, $headTr, $headcheck, $headlabel, $headinput;//thead相关
        //定义默认的 属性,用传值覆盖
        defaults = {checkAll: false, checkType:"checkbox",parentMark: ".ticket_table_content",buttonMark:"#buttonsId",sequenceNum:false};
        //			是否有列表每行有选择					 多选					  table父类								按钮父类ID			     序号
        opts = $.extend(defaults, options);
        //定义URL
        _url = opts.url.indexOf("?") == -1 ? opts.url + "?_=" + (new Date()).getTime() : opts.url + "&_=" + (new Date()).getTime();
        //add by zhangya  start
        _async = opts.async == null?true:opts.async;
        //add by zhangya end
        //调用工具按钮集合
        var buttonMark = opts.buttonMark;
        createTools(buttonMark);
        //表头(th)的值
        _cloumns = opts.cloumns;
        //在this中找table  没找到返回长度为0;
        $table = _this.find(".table");
        //添加table
        if ($table.length < 1) {
            //响应式表格的父类 添加到this的最后;
            //$tableTeam = $("<div></div>").addClass("table-responsive table-margin").appendTo(_this);
            $table = $("<table ></table>").addClass("table table-striped table-bordered text-center").appendTo(_this);
            $thead = $("<thead></thead>").appendTo($table);
        }
        //在table中找tr  没找到返回长度为0;
        $headTr = $table.find(".tr");
        //添加tr
        if ($headTr.length < 1) {
            //thead中添加全选框
            $headTr = $("<tr></tr>").appendTo($thead);
            //列表有选择
            if(opts.checkAll == true){
                //单选|双选
            	$headcheck = $("<th></th>").appendTo($headTr);
            	$headlabel = $("<label></label>").appendTo($headcheck);
                if(opts.checkType == "checkbox"){
                    $headinput = $('<input name="checkall" type="checkbox" value="" />').appendTo($headlabel);
                }else if(opts.checkType == "radio"){
                    $headinput = $('<input name="checkall" type="radio" value="" />').appendTo($headlabel);
                }
                //选择事件
                $headinput.bind('click',function(){
                    if($(this).is(':checked') ==false){
                        $table.find("[name=checkchild]").attr("checked",true).trigger('click');
                        $(this).attr("checked",false);
                    }else{
                        $table.find("[name=checkchild]").attr("checked",false).trigger('click');
                        $(this).attr("checked",true);
                    }
                })
            }
            //序号
            var sequenceNum = opts.sequenceNum;
            //循环添加TR
            $.each(_cloumns, function (index, obj) {
                //追加th
                var $_headTh = $("<th></th>").appendTo($headTr).append(obj.name);

            })
        }
        //调用发送ajax函数
        getdata();
        //工具函数
        function createTools(buttonMark) {
            var _buttons, $_colmd4, $_TitleH4, $_colmd8, $_pullright;
            //读取传参的按钮集合;
            _buttons = opts.buttons;
            //创建按钮集合
            $(buttonMark).empty();
            if(_this.find(buttonMark).length == 0){
            	var btnid = buttonMark.substring(1) ;
            	$buttonMark = $('<div id="'+ btnid +'" class="row"></div>').appendTo(_this);
            }else{
            	$(buttonMark).empty();
            }
            $_pullleft = $('<div class="col-md-6 left_listbtn"></div>').appendTo($(buttonMark));
        	$_pullright = $('<div class="col-md-12 right_listbtn"></div>').appendTo($(buttonMark));
            //读取json
            $.each(_buttons, function (index, obj) {	
            	var $tempbutton;
            	if(obj.icon === "refresh"){ //刷新
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_refresh"></i>'+obj.text+'</a>').appendTo($_pullleft);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "export"){ //导出
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_export"></i>'+obj.text+'</a>').appendTo($_pullleft);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "add"){ //添加
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_add"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "edit"){ //修改
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_edit"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "delect"){ //删除
            		$tempbutton = $('<a class="btn btn-danger '+ obj.icon +'" href="javascript:;"><i class="icon_delect"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "reset"){ //重置密码
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_reset"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "open"){ //启用
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_open"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else if(obj.icon === "stop"){ //停用
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_stop"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}else{
            		$tempbutton = $('<a class="btn btn-primary '+ obj.icon +'" href="javascript:;"><i class="icon_add"></i>'+obj.text+'</a>').appendTo($_pullright);
            		if (obj.handler) {
                    	$tempbutton.bind('click', obj.handler);
                    }
            	}
            });
        }

        //发送ajax的函数
        function getdata() {
            var dataDefualt, _data;
            //定义默认的 属性,用差选条件的传值覆盖
            //自己组装：当前页和每页条数
            opts.data.pageNo = _pageNumber;
            opts.data.pageSize = _pageSize;
            _data = opts.data;
            //table父类
            var parentMark = opts.parentMark;
            $(parentMark).css('overflow','hidden')
            
            //发送请求
            $.ajax({
                type: "post",
                url: _url,
                async:_async,
                //请求发送前的回调函数,此功能用来设置自定义 HTTP 头信息
                beforeSend: function () {
                    //加载中
                    waitload();
                },
                //发送到服务器的数据
                data: _data,
                success: function (data) {
                	//console.log(data.data.rows);
                    //总条数!=0 并且 data != null 并且 data.rows != null != ""
                    $table.find("[name=bodyTr]").remove();
                    if (data.data.total != 0 && data.data != null && data.data.rows != null && data.data.rows != "") {
                    	//调用请求成功执行的函数
                        createTable(data.data,parentMark,sequenceNum);
                    } else {
                        $("<tr name='bodyTr'><td colspan='" + (_cloumns.length + 1) + "'>暂无数据！</td></tr>").appendTo($table);
                        _total = 0;//共多少条
                        _pageSize = 0;//一页多少条
                        _pageNumber = 0;//当前页数
                        _numPages = 0;    //总页数
                        //调用分页函数
                        createTablePage(parentMark);
                    }
                },
                //请求完成后回调函数 (请求success 和 error之后均调用)。
                complete: function () {
                    //$('html').removeAttr("style");
                    if (typeof callFun == 'function') {
                        //callFun();

                    }
                    closewait();
                }
            });
        }

        //请求成功执行的函数
        function createTable(data,parentMark,sequenceNum) {
            //读取json, rows的长度决定有几行列表
            $.each(data.rows, function (index, obj) {
                //先加入选择框
                var $_tbodyTr, tbodylabel, tbodyinput, $_tbodytd;
                $_tbodyTr = $("<tr></tr>").attr("name","bodyTr").appendTo($table);
               
                if(opts.checkAll == true){
                	 $_tbodytd = $("<td></td>").appendTo($_tbodyTr);
                     $tbodylabel = $("<label></label>").appendTo($_tbodytd);
                    if(opts.checkType == "checkbox"){
                        $tbodyinput = $('<input type="checkbox" name="checkchild">').val($(obj).attr("id")).appendTo($tbodylabel);
                    }else if(opts.checkType == "radio"){
                        $tbodyinput = $('<input type="radio" name="checkchild">').val($(obj).attr("id")).appendTo($tbodylabel);
                    }
                }else{
//                    $tbodylabel.html((_pageNumber-1)*_pageSize+index+1);
                }
                /*//多选框的模拟样式
                $(".checkbox_box").click(function(){
                    if($(this).find("input").is(":checked")){
                        $(this).addClass("active");
                    }else{
                        $(this).removeClass("active");
                    }
                }) */
                
              //加入序号
                if(sequenceNum){
                    var sNum = index+1;  
                    $_tbodytd = $("<td>"+sNum+"</td>").appendTo($_tbodyTr)
                }
                
                //迭代表头(th)的值,获取参数值
                $.each(_cloumns, function (index, _columnObj) {
                    var _tempVal, $_tbodytd;
                    $_tbodytd = $("<td></td>").appendTo($_tbodyTr)
                    //加入序号
                    if(sequenceNum){
                        if(_columnObj.name == "序号"){
                        	$_tbodytd.remove();
                        }
                    }
                    //判断是不是函数
                    if (_columnObj.type == 'function') {
                        //回调函数
                        var acf = _columnObj.fun.call(this, obj);
                        $_tbodytd.append(acf);
                    } else {
                        //通过读取属性值的方式读取json
                        _tempVal = $(obj).attr(_columnObj.value);
                        $_tbodytd.append(_tempVal);
                    }
                });
            });
            _total = parseInt(data.total);//共多少条
            _pageSize = parseInt(data.pageSize);//一页多少条
            _pageNumber = parseInt(data.pageNo);//当前页数
            _numPages = Math.ceil(_total / _pageSize);    //总页数
            //调用分页函数
            createTablePage(parentMark);
        }
        //分页函数
        function createTablePage(parentMark) {
            var $_pagenav, $_pageinfo,
                $_pageUl, $_pageliprev, $_pageprev, $_pagelinext, $_pagenext,
                $_pageselect, $_pageoption;
            $_pagenav = $(parentMark).find(".list-page");

            if ($_pagenav.length > 0) {
                $_pagenav.remove();

            }
            $_pagenav = $("<nav></nav>").addClass("list-page").appendTo(parentMark);
            $_pageinfo = $("<p></p>").addClass("page-info").html("共" + _numPages + " 页/" + _total + "条信息，当前第" + _pageNumber + "页").appendTo($_pagenav);

            //add by yaofeng start 隐藏当前页
            $("<input type='hidden' name='curPage' value='"+_pageNumber+"' />").appendTo($_pagenav);
            //add by yaofeng end 隐藏当前页
            $_pageform = $("<form></form>").addClass("page-skip").appendTo($_pagenav);
            $_pageselect = $('<input class="form-control" type="text" placeholder="输入页符">').appendTo($_pageform);
            $_pageselect.css('font-size','12px');
            $_pagebtn = $("<button></button>").addClass("clabuts").attr("type", "button").html("确定").appendTo($_pageform);
            
            $_pageUl = $("<ul></ul>").addClass("pager").appendTo($_pagenav);
            $_pageliprev = $("<li></li>").appendTo($_pageUl);
            $_pageprev = $("<a></a>").attr("href", "javascript:").html("上一页").appendTo($_pageliprev);
            $_pagelinext = $("<li></li>").appendTo($_pageUl);
            $_pagenext = $("<a></a>").attr("href", "javascript:").html("下一页").appendTo($_pagelinext);
            
            //如果当前页为0,切总页为0,则上下页都不可点击
            if(_pageNumber == 0 && _numPages == 0){
                $_pageprev.addClass("disabled");
                $_pageprev.unbind('click');
                $_pagenext.addClass("disabled");
                $_pagenext.unbind('click');
                $_pageselect.attr("disabled",true);
                $_pagebtn.addClass("disabled");
                $_pagebtn.unbind('click');
            }else{
                //如果当前第一页; 上一页不能点;否则上一页的添加事件
                if (_pageNumber == 1) {
                    $_pageprev.addClass("disabled");
                    $_pageprev.unbind('click');
                }else{
                    $_pageprev.unbind('click');
                    $_pageprev.bind('click',function(e){
                        _pageNumber =_pageNumber-1;
                        getdata();
                    });
                }
                //如果当前页等于总页; 下一页不能点;否则下一页的添加事件
                if (_pageNumber == _numPages) {
                    $_pagenext.addClass("disabled");
                    $_pagenext.unbind('click');
                }else{
                    $_pagenext.unbind('click');
                    $_pagenext.bind('click',function(e){
                        _pageNumber =_pageNumber+1;
                        getdata();
                    });
                }
                $_pagebtn.unbind('click');
                $_pagebtn.bind('click',function(e){

                    var _pageSelectVal =	 $_pageselect.val();
                    if(_pageSelectVal ==""){
                        callmodalFun('请输入需要跳转的页码');
                        return ;
                    }
                    if(isNaN(_pageSelectVal )){
                        callmodalFun('请输入需要跳转的页码');
                        return ;
                    }
                    if(_pageSelectVal < 0  || _pageSelectVal > _numPages ){
                        callmodalFun('请输入正确的跳转页码');
                        return ;
                    }
                    _pageNumber =_pageSelectVal;
                    getdata();
                });
            }
        };
    },
    //弹窗提示
    promptbox: function (modaldetails) {
        defaults = {modalwidth:'300px',headText:'提示'};
        var prompt = $.extend(defaults, modaldetails);
        if(this.find("#modalId").length == 0){
            var modalThis = this;
            //弹框添加div的事件
            var $modal = $('<div class="modal fade in" tabindex="-1" id="modalId" role="dialog" aria-labelledby="mySmallModalLabel"></div>').appendTo(modalThis);
            var $modaldialog = $('<div class="modal-dialog"></div>').css('width',prompt.modalwidth).appendTo($modal);
            var $modalcontent = $('<div class="modal-content"></div>').appendTo($modaldialog);

            var $modalheader = $('<div class="modal-header" style="border:none;"></div>').appendTo($modalcontent);
            var $modalclose = $('<button class="close" type="button" data-dismiss="modal" aria-label="Close"></button>').appendTo($modalheader);
            var $modaltext = $('<span class="aria-hidden">×</span>').appendTo($modalclose);
            var $modaltitle = $('<h4 class="modal-title">'+ prompt.headText +'</h4>').appendTo($modalheader);

            var $modalbody = $('<div class="modal-body">'+prompt.content+'</div>').appendTo($modalcontent);
            var $modalfooter = $('<div class="modal-footer" style="border:none;text-align:center;"></div>').appendTo($modalcontent);
            var $modalok = $('<button class="btn btn-primary confirm" type="button">'+ prompt.btn.text + '</button>').appendTo($("#modalId").find('.modal-footer'));
            $modalok.bind('click', prompt.btn.handler);
            /*判断是否有取消 */
            if(prompt.cancel){
                var $modalcancel = $('<button class="btn btn-primary cancel" type="button" data-dismiss="modal" aria-label="Close">取消</button>').appendTo(modalThis.find('.modal-footer'));
            }
            $("#modalId").modal('show');
        }else{
            $(".modal-body p").html(prompt.content);
            //移除事件,在绑定
            $(".confirm").unbind("click");
            $(".confirm").bind('click', prompt.btn.handler);
            if(!prompt.cancel){
                $(".cancel").hide();
            }
            $("#modalId").modal('show');
        }
    },
    //定时任务
    timedPrompt: function (timeParameter) {
        //定义默认的 属性,用传值覆盖
        var defaults = {time: 3000, _url: ""};
        var prompt = $.extend(defaults, timeParameter);
        var _url = prompt._url;
        //var $timedPrompt = $("<div class='timedPrompt'></div>").addClass(prompt._class).html(timeParameter.content).appendTo(this);
        var $timedPromptTeam = $("<div class='timedPromptTeam'></div>").appendTo(this);
        var $timedPrompt = $("<div class='timedPrompt'></div>").addClass(prompt._class).html(timeParameter.content).appendTo($timedPromptTeam);
        if(prompt._class == 'err'){
            var errspan = $("<span class='glyphicon glyphicon-remove'></span>").prependTo($timedPrompt);
        }else if(prompt._class == 'correct'){
            var errspan = $("<span class='glyphicon glyphicon-ok'></span>").prependTo($timedPrompt);
        }
        //$timedPrompt.show();
        var timer;
        clearTimeout(timer);
        timer = setTimeout(function() {
            $(".timedPromptTeam").hide();
            if (_url != "" && _url != null) {
                _url = _url.indexOf("?") == -1 ? _url + "?_=" + (new Date()).getTime() : _url + "&_=" + (new Date()).getTime();
                $.changePage(_url)
            }
        }, prompt.time);
    }
});

//弹框传参事件
function callmodalFun(mContent,mOKfn){//提示的文字|确定按钮的函数(可选)
    var mContentP = '<p class="text-center">' + mContent + '</p>';
    var mCancel = false;//默认为false 表示没有取消按钮
    var confirm = function(){ //确定按钮的默认事件:关闭弹窗
        $("#modalId").modal('hide');
    }
    if(typeof mOKfn == 'function'){
        confirm = function(){
            mOKfn();//限制性传的函数
            $("#modalId").modal('hide');//关闭弹窗
        }
        mCancel = true;//如果fn是函数,则有取消按钮
    }
    var modaldetails ={
        content:mContentP//提示的文字
        ,cancel:mCancel//表示没有取消按钮
        ,btn:{text:'确定',handler:confirm} //确定按钮的文字和事件
    };
    $("body").promptbox(modaldetails);//执行promptbox方法
}
//弹框有很多内容 _传参事件
function callmodalContentFun(mWidth,mHead,mContent,mOkText,mOKfn){//弹框的宽度|head文字|内容|确定按钮的文字|确定按钮的函数(可选)
    var mCancel = false;//默认为false 表示没有取消按钮
    var confirm = function(){ //确定按钮的默认事件:关闭弹窗
        $("#modalId").modal('hide');
    }
    if(typeof mOKfn == 'function'){
        confirm = function(){
            mOKfn();//限制性传的函数
            $("#modalId").modal('hide');//关闭弹窗
        }
        mCancel = true;//如果fn是函数,则有取消按钮
    }
    var modaldetails ={
        modalwidth:mWidth//弹框的宽度
        ,headText:mHead//弹框Head的文字
        ,content:mContent//弹框的内容
        ,cancel:mCancel//表示没有取消按钮
        ,btn:{text:mOkText,handler:confirm} //确定按钮的文字和事件
    };
    $("body").promptbox(modaldetails);//执行promptbox方法
}


//time：时间 message:提示信息,_url:跳转url _class:'err'(错误)|'correct'(正确)
function timedTaskFun(time,message,_url,_class){
    if(_url != ""){
        _url = _path+_url;
    }
    var timeParameter = {
        time:time
        ,content:message
        ,_url:_url
        ,_class:_class
    }
    $("body").timedPrompt(timeParameter);
}
//验证函数
function verif(identification,verifCon){
    identification.removeClass("has-error has-feedback");
    identification.find('.glyphicon').remove();
    identification.find('.verifTeam').remove();
    identification.addClass("has-error has-feedback");
    identification.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
    var odiv = $('<div class="verifTeam"></div>').appendTo(identification);
    var oarrow = $('<div class="arrow" style="left: 50%;"></div>').appendTo(odiv);
    var ocontent = $('<div class="verifCon">'+ verifCon +'</div>').appendTo(odiv);
}











/**
 * @fun 弹框的宽度|head文字|内容|确定按钮的文字|确定按钮的函数(可选)
 * @auth  yaofeng
 * @param modelId				弹框id
 * @param mWidth				宽度
 * @param mHead					标题
 * @param mContent				html内容
 * @param eventFun				内容定义事件
 * @param mOkText				文字“确定”
 * @param mOKfn					文字“确定”对应的事件
 * @param isCancel				是否显示取消按钮
 */
function ejectModelDialogContentFun(modelId,mWidth,mHead,mContent,eventFun,mOkText,mOKfn,isCancel){
	//先移除，后创建
	var _modelId = "#"+modelId;
	$(_modelId).remove();
	
	//弹框添加div的事件
    var $modal = $('<div class="modal fade in" tabindex="-1" id="'+modelId+'" role="dialog" aria-labelledby="mySmallModalLabel"></div>').appendTo($("body"));
    var $modaldialog = $('<div class="modal-dialog"></div>').css('width',mWidth).appendTo($modal);
    var $modalcontent = $('<div class="modal-content"></div>').appendTo($modaldialog);

    var $modalheader = $('<div class="modal-header"></div>').appendTo($modalcontent);
    var $modalclose = $('<button class="close" type="button" data-dismiss="modal" aria-label="Close"></button>').appendTo($modalheader);
    var $modaltext = $('<span class="aria-hidden">×</span>').appendTo($modalclose);
    var $modaltitle = $('<h4 class="modal-title">'+ mHead +'</h4>').appendTo($modalheader);

    var $modalbody = $('<div class="modal-body">'+mContent+'</div>').appendTo($modalcontent);
    var $modalfooter = $('<div class="modal-footer"></div>').appendTo($modalcontent);
    var $modalok = $('<button class="btn btn-primary confirm" type="button">'+ mOkText + '</button>').appendTo($(_modelId).find('.modal-footer'));
    
    confirm = function(){
        if (mOKfn() != false) {
        	$(_modelId).modal('hide');//关闭弹窗
        }
    }
    $modalok.bind('click',confirm);
    
    
    /*判断是否有取消 */
    if(isCancel){
        var $modalcancel = $('<button class="btn btn-warning cancel" type="button" data-dismiss="modal" aria-label="Close">取消</button>').appendTo($modalfooter);
    }
    
    $(_modelId).modal('show');
    
    eventFun();
}


/**
 * @fun 	加载单选按钮tree
 * @auth 	yaofeng
 * @param 	_ajaxTreeUrl  请求url参数
 * @param   type类型		  radio,checkbox
 * @param   isDisButton	  是否显示【按钮】，若为false则树前面只有文件夹并且会：执行函数【notifyFun】
 */
function zTree(_ajaxTreeUrl,type,isDisButton,notifyFun) {
	var setting2 = {
		async: {
			enable: true,
			type: "post",
			url:_ajaxTreeUrl,
			autoParam:["id=id"],
			otherParam:{"otherParam":"zTreeAsyncTest"},
			dataFilter: filter2
		},
		expandSpeed : "fast",
		check: {
			enable: isDisButton,
			chkStyle: type,
			radioType: "all"
		},
		data: {
			simpleData: {
				enable: true,
				idKey : "id", // id编号命名     
                pIdKey : "pId", // 父id编号命名      
                rootId : 0,
                roleId : '55555555555'
			}
		},
		callback: {
			onClick: function(event, treeId, treeNode) {
				//若：不显示【按钮】，则会执行点击【节点】之后回调函数
				if (!isDisButton) {
					notifyFun(treeNode.id,treeNode.name,treeNode);
					//console.log(JSON.stringify(treeNode));
				}
			},
			//捕获异步加载出现异常错误的事件回调函数 和 成功的回调函数    
            onAsyncSuccess : function(event, treeId, treeNode, msg){    
                //  alert("调用成功！");  
                //var nodes=getCheckedNodes(true));  
                //alert(treeNode);  
            },  
		}
	};

	//双击展开菜单
	function dblClickExpand(treeId, treeNode) {
		return true;
	}
	
	//用于对 Ajax 返回数据进行预处理的函数	
	function filter2(treeId, parentNode, childNodes) {
		if (!childNodes) {
			return null;	
		}
		for (var i=0, l=childNodes.length; i<l; i++) {
			childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
		}
		return childNodes;
	}
	
	return setting2;
	
}



/*
*
*@弹框组件;
*Author:lixinyang;First It's simple;
* 
*
*/
(function($) {

	$.fn.snailfConfirm = function(options, callback) {
		/*
		 * @定义弹框的默认样式;
		 * @Defines the default style for the bullet box;
		 * 
		 */

		var def = {
			minHeight: '150px',
			width: '300px',
			title: '标题',
			background: "#dedede",
			showConfirmButton: true,
			showCancelButton: true,
			borderRadius: '6px',
			confirmButtonText: '确定',
			cancelButtonText: '取消',
			content:'我是内容'

		};
		/*
		 * 
		 *@type:设置弹框的默认样式;
		 *@Set the default style for the bullet box;
		 *
		 * 
		 */


		$(_divEleme).remove();
		var ops = $.extend(def, options);

		var title = '<p class="clacenter">' + ops.title + '</p>';
		var _divElement = $('<div></div>');
		_divElement.css({
			minHeight: ops.minHeight,
			width: ops.width,
			background: ops.background,
			borderRadius: ops.borderRadius,
		});
		_divElement.append(title);
		var _divEleme = $('<div class="cal"></div>');
		$(_divElement).appendTo(_divEleme);
		$(_divEleme).appendTo('body');

		/*
		 *@ 创建容器;
		 *@Create container;
		 * 
		 */

		var _divContent = $('<div class="divContent modal-body">'+ ops.content+'</div>');
		$(_divContent).appendTo(_divElement);

		/*
		 *
		 @获取弹框的宽高， 设置弹框垂直居中;
		 @Get the width and height of the elastic frame, set the vertical center;
		 * 
		 */

		var widthEle = $(_divElement).width();
		var heightEle = $(_divElement).height();

		$(_divElement).css({
			position: "absolute",
			top: '50%',
			left: '50%',
			marginTop: '-' + heightEle / 2 + 'px',
			marginLeft: '-' + widthEle / 2 + 'px',
			display: 'none'

		});
		$(_divElement).fadeIn(100);

		/*
		 * 
		 *@调用显示弹框的按钮;
		 *@Call button to display the pop-up box;
		 * 
		 */
		showButton = function() {
			/*
			 * [_turnOffButton description]
			 * @type {[type]}创建按钮；
			 */
			var _turnOffButton = $('<div class="turnOffButton">X</div>');
			$(_divElement).append(_turnOffButton)
			var _divBut = $('<div class="divBut modal-footer" style="border:none;"></div>').appendTo(_divElement);
			var button1 = $('<button class="claBt1 BT1">' + ops.confirmButtonText + '</button>').appendTo(_divBut);
			var button2 = $('<button class="claBt1 BT2">' + ops.cancelButtonText + '</button>').appendTo(_divBut);
			/*
			 *@传入参数显示确定取消按钮;
			 *@Incoming parameter display to determine cancel button;
			 */
			if (ops.showConfirmButton == false) {
				$('.BT1').hide();
			} else if (ops.showConfirmButton == true) {
				$('.BT1').show();
			}

			if (ops.showCancelButton == false) {
				$('.BT2').hide();
			} else if (ops.showCancelButton == true) {
				$('.BT2').show();
			}
		}
		showButton()
			/*
			 *
			 *@确定 ，取消，关闭弹窗按钮点击事件;
			 *@OK, cancel, close the pop-up button click event;
			 *
			 */

		$('.BT1').click(function(event) {
			if (callback) {

				callback();
				$(_divEleme).hide();
				$(_divEleme).remove();

			} else {
				$(_divEleme).hide();
				$(_divEleme).remove();
			}

		});
		$('.BT2').click(function(event) {
			$(_divEleme).hide();
			$(_divEleme).remove();
		});
		$('.turnOffButton').click(function(event) {
			$(_divEleme).hide();
			$(_divEleme).remove();
		});



	}

})(jQuery)



