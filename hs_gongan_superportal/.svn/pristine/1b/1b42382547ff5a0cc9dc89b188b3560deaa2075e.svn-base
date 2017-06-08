//提交用户角色信息
$(function(){
	$("#submitRolePrivilegeVo").click(function() {
		$.ajax({  
			url:"submitRolePrivilegeVo" ,  
			data: $('#rolePrivilegeVoForm').serializeArray(),  
			type:'POST',
		    success:function(data,textStatus,jqXHR){
		    	alert("修改权限成功");
		    	window.location.reload();
		    },
		    error:function(){
		    	alert("提交权限信息失败");
		    },
		   
		}); 
	});
});


//取消保存用户角色信息
$(function(){
	$("#consoleSubmitRolePrivilegeVo").click(function() {
		window.location.reload();
	});
});