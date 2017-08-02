<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
<div class="row">
		<div class="col-xs-12">
			<h3 class="header smaller lighter blue">jQuery dataTables</h3>
			<div class="table-header">Results for "Latest Registered
				Domains"</div>

			<div class="table-responsive">
				<table id="sample-table-2"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span>
							</label></th>
							<th>Domain</th>
							<th>Price</th>
							<th class="hidden-480">Clicks</th>

							<th><i class="icon-time bigger-110 hidden-480"></i> Update</th>
							<th class="hidden-480">Status</th>

							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span>
							</label></td>

							<td><a href="#">best.com</a></td>
							<td>$75</td>
							<td class="hidden-480">6,500</td>
							<td>Apr 03</td>

							<td class="hidden-480"><span
								class="label label-sm label-inverse arrowed-in">Flagged</span></td>

							<td>
								<div
									class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
									<a class="blue" href="#"> <i
										class="icon-zoom-in bigger-130"></i>
									</a> <a class="green" href="#"> <i
										class="icon-pencil bigger-130"></i>
									</a> <a class="red" href="#"> <i class="icon-trash bigger-130"></i>
									</a>
								</div>

								<div class="visible-xs visible-sm hidden-md hidden-lg">
									<div class="inline position-relative">
										<button class="btn btn-minier btn-yellow dropdown-toggle"
											data-toggle="dropdown">
											<i class="icon-caret-down icon-only bigger-120"></i>
										</button>

										<ul
											class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
											<li><a href="#" class="tooltip-info" data-rel="tooltip"
												title="View"> <span class="blue"> <i
														class="icon-zoom-in bigger-120"></i>
												</span>
											</a></li>

											<li><a href="#" class="tooltip-success"
												data-rel="tooltip" title="Edit"> <span class="green">
														<i class="icon-edit bigger-120"></i>
												</span>
											</a></li>

											<li><a href="#" class="tooltip-error" data-rel="tooltip"
												title="Delete"> <span class="red"> <i
														class="icon-trash bigger-120"></i>
												</span>
											</a></li>
										</ul>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<!-- table 数据加载 start -->
<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,
				  { "bSortable": false }
				] } );
				
				
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			
			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})
		</script>
<!-- table 数据加载 end -->
</body>
</html>