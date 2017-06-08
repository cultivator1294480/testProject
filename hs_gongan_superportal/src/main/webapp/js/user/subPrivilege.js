//提交用户角色信息


 
 $(function(){
	    $('#submitUserRole').click(function(){
	         $.ajax({
	             type: "POST",
	             url: "submitUserRole?"+new Date(),
	             timeout : 5000, //超时时间设置，单位毫秒
	             data: $('#userRoleForm').serializeArray(),  
	             dataType: "json",
	             async:false, 
	             success: function(data){
			            	alert("修改用户角色成功");
			 		    	window.location.reload();
	                      },
	             error:function(data){
	          		    	alert("修改用户角色信息失败");
	          		    	window.location.reload();
	          		    }
	         });
	    });
	});

//取消保存用户角色信息
$(function(){
	$("#consoleSubmitUserRole").click(function() {
		window.location.reload();
	});
});