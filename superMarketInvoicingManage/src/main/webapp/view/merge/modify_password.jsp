<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

.bv-form .help-block{
	padding-left: 167px;
}

</style>

	<div class="container-fluid">
		<ol class="breadcrumb">
            <span>当前位置：</span>
           	<li class="active">个人中心</li>
   		</ol>
		<div class="panel panel-default">
	       <form class="add-form bv-form" id="withdrawals-form">
				<ul class="password_mod panel-body">
					<li style="padding-left:104px;">
						用户名：<span class="username_mod">${name}</span>
					</li>
					<li>
						<div class="form-group">	
							<label>旧密码：</label>
							<input type="password"  name="oldPassword" class="form-control form-controlPs">
						</div>
					</li>
					<li>
						<div class="form-group">
						<label>新密码：</label>
						<input type="password"  name="password" class="form-control form-controlPs">
						</div>
					</li>
					<li>
						<div class="form-group">
						<label>重复密码：</label>
						<input type="password" name="passworde" class="form-control form-controlPs">
						</div>
					</li>
					
				</ul>
				<div class="btn-margin afterShowBtnCla" style="display: block;padding-left:199px;">
	                  <button class="btn btn-warning" type="button" name="setDefaultButton" id="resetBtn">重置</button>
	                  <button class="btn btn-primary" type="button" name="addSub">提交</button>
	              </div>
		
			</form>	
				
          </div>
	</div>
		
<script>
	
	$('#resetBtn').click(function(){
		$('.form-controlPs').val('');
	})
		
	/**
	 校验：
	**/
	$('#withdrawals-form').bootstrapValidator({
  		message: 'This value is not valid',
  		feedbackIcons: {
  			valid: 'glyphicon glyphicon-ok',
  			invalid: 'glyphicon glyphicon-remove',
  			validating: 'glyphicon glyphicon-refresh'
  			},
          fields: {
        	  oldPassword: {
                  validators: {
                      notEmpty: {
                          message: ' 旧密码为空！'
                      },
                      stringLength: {
                          min: 6,
                          max: 20,
                          message: '密码长度6~20位'
                      },
                      regexp: {
                      	regexp: /(?!^\d+$)(?!^[a-zA-Z]+$)[0-9a-zA-Z]{5,20}/,
                     		message: '密码格式有误，请重新输入'
                       }
                  }
              },
              password: {
                  validators: {
                      notEmpty: {
                          message: '新密码为空！'
                      },
                      stringLength: {
                          min: 6,
                          max: 20,
                          message: '新密码长度6~20位'
                      },
                      regexp: {
                      	regexp: /(?!^\d+$)(?!^[a-zA-Z]+$)[0-9a-zA-Z]{5,20}/,
                     		message: '密码格式有误，请重新输入'
                       }
               
                  }
              },
              passworde: {
                  validators: {
                      notEmpty: {
                          message: '重复密码为空'
                      },
                      stringLength: {
                          min: 6,
                          max: 20,
                          message: '重复密码长度6~20位'
                      },
                      regexp: {
                      	regexp: /(?!^\d+$)(?!^[a-zA-Z]+$)[0-9a-zA-Z]{5,20}/,
                     		message: '密码格式有误，请重新输入'
                       },
                      identical: {
                      	 field: 'password',
                      	 message: '两次输入的密码不一致，请重新输入'
                      },
                  }
              }
             
          }
      });
	
	$("[name=addSub]").bind("click",function(){
		$('#withdrawals-form').bootstrapValidator('validate');
		 if(!$('#withdrawals-form').data('bootstrapValidator').isValid()){  
		         return false;  
	     }
		$.ajax({
			type : "post",
			url : _path+"/login/user/update/pwd",
			data :$("#withdrawals-form").serialize(),
	 		beforeSend: function () {
                //加载中
                waitload();
            },
			success : function(data) {
				closewait();
				//若执行成功的话，则隐藏进度条提示
				if (data != null && data != 'undefined'
						&& data == 1) {
					var jumpUrl = '';
					timedTaskFun(1000,'密码已修改成功',jumpUrl,'correct');
					setTimeout(function () {
						window.location.href = _path+"/index";
				    }, 1000);
					
				}else if (data == -2) {
					timedTaskFun(1000,'旧密码输入错误，请重新输入','','err');
				}else{
					timedTaskFun(1000,'系统异常！请与系统管理员联系','','err');
				}	 
			}
		 });
	
	})
  
</script>

