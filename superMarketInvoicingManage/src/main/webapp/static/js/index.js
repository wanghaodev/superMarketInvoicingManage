/**
 * 注意菜单及事假加载
 */
jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
				});
			
			
			
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]

			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}

			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
				$('.dialogs,.comments').slimScroll({
					height: '300px'
			    });
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
				
			
			});	
//jquery控制主页面div自适应高度
    function autoHeight(){
        if(window.innerHeight){
           nowHeight=window.innerHeight;
        }else{
            nowHeight=document.documentElement.clientHeight;
        }
        //除去顶部div高度部分height=135px;
        var jianHeight=365;
        if(nowHeight>jianHeight){
            $("#main_page_bottom_div").css("height",(nowHeight-jianHeight)+'px');
        }else{
            $("#main_page_bottom_div").css(jianHeight+'px');
        }
    }
    //获取系统是时间
    function currentTime() {
			var d = new Date(), str = '';
			str += d.getFullYear() + '-';
			str += d.getMonth() + 1 + '-';
			str += d.getDate() + '  ';
			str += d.getHours() + ':';
			str += d.getMinutes() + ':';
			str += d.getSeconds() + '秒';
			return str;
		}
    
  //菜单跳转（div+js实现ifream框架内页面跳转）
	$(function(){
		$('.menu_li').click(function(){//点击li加载界面
			//影藏主内容
			$("#main_page_div").hide();
			var current = $(this),
			target = current.find('a').attr('target'); // 找到链接a中的targer的值
			//移除当前的a标签属性
			//current.removeAttr('href');
			$.get(target,function(data){
				//console.log(target);
				$("#mian_div").html(data);
			});
		});
	});
	//菜单加载start
	function loadTree(){
		$.ajax({
			type : "post"
				,url : _path+"/invoicing/loadMenuList"
				,async:false
				,data : {
					'fdid' :'0'
				}
		        ,success:function(data){
		        	if(data.code==0){
		        		alert("没有分配权限，请联系管理员。")
		        	}else{
		        		//主菜单
			        	var main_menu="";
			        	$.each(data.mainMenuList,function(index,obj){
			        		main_menu+="<li>"
			        						+"<a href='#' class='dropdown-toggle'>"
			        				 		+"	<i class='"+obj.iconClass+"'></i>"
			        						+"	<span class='menu-text'>"+obj.name+"</span>"
			        				 		+"	<b class='arrow icon-angle-down'></b>"
			        				 		+"</a>";
			        		var son_menu="<ul class='submenu'>";		 
			        		$.each(data.sonMenuList,function(index,sonObj){
			        			if(sonObj.pId==obj.id){
			        				son_menu+="<li class='menu_li'>"
					        				+"	<a target='"+sonObj.url+"'> "
					        				+"		<i class='icon-double-angle-right'></i> "
					        				+sonObj.name
					        				+"	</a>"
					        				+"</li>";
				        		}
				        	});
			        		main_menu+=son_menu
			        					+"  </ul>"
			        					+"</li>";
			        	});
			        	
			        	$("#menu_id").html(main_menu);
		        	}
		        }
		});
	}
	//菜单加载end   