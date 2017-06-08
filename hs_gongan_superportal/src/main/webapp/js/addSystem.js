//加载日期
$(function() {
	$('.dateInfo').datetimepicker({
		lang:'ch',
		timepicker:false,
		format:'Y/m/d',
		formatDate:'Y/m/d',
	});
});
$(function(){
	// 点击事件触发弹出模态框
	$("#openAddSystem").click(function() {
		$(".subUserForm").val("");
		$('#systemDialog').dialog("option", "title", "添加系统信息").dialog('open');
	});
});
//加载新增页面
 $(function() {
	 $( "#systemDialog" ).dialog({
	        autoOpen: false,
	        minHeight: 476,
	        maxHeight: 500,
	        minWidth: 500,
	        modal: true,
	        buttons: {
	          "确定": function() {
	        	  submitSystemForm();
	          },
	          "取消": function() {
	            $( this ).dialog( "close" );
	          }
	        },
	        close: function() {
	        	//return;
	        }
	  });
});
//注册应用系统信息
 function submitSystemForm(){
	 var userForm = document.getElementById('userForm');
	 var sysno=userForm.sysno.value;  
	 var sysnoTester=/^ST.{3}$/;
	 if(!sysnoTester.test(sysno)){
		 alert("系统编号共5位，开头必须是'ST'");
		 return false;
	 }
	
	 $.ajax({  
			url: "/hs_gongan_superportal/mult/registSystem",  
			type:'POST',
			data: $('#userForm').serializeArray(),
		    success:function(data,textStatus,jqXHR){
		    	window.location.reload();
		    },
		    error:function(){
		    	alert("添加系统失败");
		 }
		   
	}); 
 }
 
//更新dialog
 function updatesysDialog(sysno){
	 $('#updateDialog').dialog("option","title", "修改系统信息").dialog('open'); 
 	//设置模态框值
 	setDeptDialog(sysno);
 }
 
//加载更新页面
 $(function() {
 	//初始化dialog
 	 $( "#updateDialog" ).dialog({
 	        autoOpen: false,
 	        minHeight: 476,
	        maxHeight: 500,
	        minWidth: 500,
 	        modal: true,
 	        buttons: {
 	          "确定": function() {
 	        	 updateSystemForm();
 	          },
 	          "取消": function() {
 	            $( this ).dialog( "close" );
 	          }
 	        },
 	        close: function() {
 	        	//return;
 	        }
 	      });
   });
 
 //根据系统编号查询系统信息
 function setDeptDialog(sysno){
	 $.ajax({
	        url:"/hs_gongan_superportal/mult/findSysById",
	        type:"post",
	        data:{
	        	sysno:sysno
	        },
	        success:function(data){
	        	$("#sysnos").val(data.sysno);
	        	$("#sysname").val(data.sysname);
	        	$("#syscomm").val(data.syscomm);
	        	$("#sysversion").val(data.sysversion);
	        	$("#sysurl").val(data.sysurl);
	        	$("#regusername").val(data.regusername);
//	        	$("#reguseridcards").val(data.reguseridcard);
//	        	$("#sysregisttime").val(data.sysregisttime);
//	        	$("#sysnctime").val(data.sysnctime);
	        	$("#conaddr").val(data.conaddr);
	        	if(1==data.rolectrl){
	        		$('#rYes').attr("checked","checked");
	        	}else{
	        		$('#rNo').attr("checked","checked");
	        	}
	        	if(1==data.ownership){
	        		$('#oYes').attr("checked","checked");
	        	}else{
	        		$('#oNo').attr("checked","checked");
	        	}
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取系统信息失败");
	        }
	    });
}
 
 //更新系统信息
 function updateSystemForm(){
	 var sysnos=document.getElementById("sysnos").value;  
	 var sysnoname=/^ST.{3}$/;
	 if(!sysnoname.test(sysnos)){
		 alert("系统编号共5位，开头必须是'ST'");
		 return false;
	 }
	 var sysupForm = document.getElementById('sysupForm');
	 $.ajax({  
			url: "/hs_gongan_superportal/mult/updateSystem",  
			type:'POST',
			data: $('#sysupForm').serializeArray(),
		    success:function(data,textStatus,jqXHR){
		    	window.location.reload();
		    },
		    error:function(){
		    	alert("修改系统失败");
		 },
		   
	}); 
 }
 
 function deleteSys(sysno){ 
	 alert(sysno)
	 $.ajax({
	        url:"/hs_gongan_superportal/mult/deleteSystem",
	        type:"post",
	        data:{sysno:sysno},
	        success:function(data,textStatus,jqXHR){
		    	window.location.reload();
	        },
	        error:function(){
		    	alert("删除系统失败");
		 },
	 });
 }
 






		
$(function(){
	//分页
	$(".tz").on("click",yeInfo);
})

//分页跳转输入
var yeInfo=function(){
	var reg=/^\+?[1-9][0-9]*$/;
	var pageNo=$(".yeInfo").val().trim();
	var pageTotal=$(".totalPage").val().trim();
	
	if(!reg.test(pageNo)){
		alert("请输入大于0的整数");
	}else if(pageNo-pageTotal>0){
		alert("输入数值已超过最大页数，请重新输入");
	}else{
		jumpTarget(pageNo);
	}
};



//跳转到指定页面
function jumpTarget(pageNo){
	window.location.href="/hs_gongan_superportal/mult/Allsystems?"+ 
			"pageNo=" +pageNo+
			"&search['sysno']=" +$("#searchSysno").val().trim()+
			"&search['sysname']=" +encodeURI(encodeURI($("#searchSysname").val().trim()));
}