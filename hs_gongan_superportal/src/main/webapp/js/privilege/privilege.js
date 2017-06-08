
$(function() {
	//初始化dialog
	 $( "#addPrivilegeDialog" ).dialog({
	        autoOpen: false,
	        minHeight: 300,
	        minWidth: 400,
	        modal: true,
	        buttons: {
	          "确定": function() {
	        	  submitPrivilegeForm();
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

$(function(){
	//点击事件触发弹出模态框
	$("#openAddPrivilege").click(function() {
		// 清空dialog
		clearPrivilegeDialog();
		// 弹出dialog
		$('#addPrivilegeDialog').dialog("option","title", "添加权限信息").dialog('open'); 
	});

})



//清空dialog
	function clearPrivilegeDialog(){
		$("#privId").val("");
		$("#privName").val("");
		$("#privComm").val("");
		$("#sysNo").val("");
		setSystemOption();
	}



function setSystemOption(){
	$("#sysNo").empty();
	$("#sysNo").prepend("<option value=''>请选择</option>"); 
	$.ajax({  
		url: "findSystems",  
		type:'POST',
	    success:function(data){
	    	for ( var key in data) {
				if (data.hasOwnProperty(key)) {
					$("#sysNo").append("<option value='"+key+"'>"+data[key]+"</option>");
				}
			}  
	    },
	    error:function(){
	    	alert("页面错误");
	    },
	}); 
}



//提交部门信息
function submitPrivilegeForm(){
	
	var privilegeFormInfo = document.getElementById('privilegeForm');
	var privId = privilegeFormInfo.privId.value;
	var privName = privilegeFormInfo.privName.value;
	var privComm = privilegeFormInfo.privComm.value;
	var sysNo = privilegeFormInfo.sysNo.value;
	if (!privName || privName.trim() == "" ) {
		alert("请输入权限名称");
	}else if ( !privComm || privComm.trim() == "") {
		alert("请输入权限描述");
	}else if ( !sysNo || sysNo.trim() == "") {
		alert("请选择系统名称");
	}
	
	var url;
	if(!privId||0==privId||""==privId){
		url = "addPrivilege";
	}else{
		url = "updatePrivilege";
	}
	$.ajax({  
		url: url,  
		data: $('#privilegeForm').serializeArray(),  
		type:'POST',
	    success:function(data,textStatus,jqXHR){
	    	window.location.reload();
	    },
	    error:function(){
	    	alert("添加/权限信息失败");
	    },
	   
	}); 
	return true;
}

//更新dialog
function updatePrivilegeDialog(privilegeId){
	// 清空dialog
	clearPrivilegeDialog();
	// 弹出dialog
	$('#addPrivilegeDialog').dialog("option","title", "修改权限信息").dialog('open'); 
	//设置模态框值
	setrPrivilegeDialog(privilegeId);
	
	
}
//设置模态框数据
function setrPrivilegeDialog(privilegeId){
	 $.ajax({
	        url:"findPrivilege",
	        type:"post",
	        data:{
	        	privilegeId:privilegeId
	        },
	        success:function(data){
	        	$("#sysNo").val(data.sysNo);
	        	$("#privId").val(data.privId);
	    		$("#privName").val(data.privName);
	    		$("#privComm").val(data.privComm);
	    		
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取部门信息失败");
	        }
	    });
}





















//删除部门信息
function deletePrivilege(privId,privName){
	
	if(confirm("确认要删除权限信息:"+privName+"")){
		 $.ajax({
				url : "deletePrivilege",
				type : "post",
				data : {
					privId : privId
				},
				success : function(data) {
					window.location.reload();
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("删除权限信息失败");
				}
		});
		
	}
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
//		window.location.href="/hs_gongan_superportal/privilege/showPrivilege?pageNo="+startNum;
		jumpTarget(pageNo);
	}
};




//跳转到指定页面
function jumpTarget(pageNo){
	window.location.href="/hs_gongan_superportal/privilege/showPrivilege?"+ 
			"pageNo=" +pageNo+
			"&search['privName']=" +encodeURI(encodeURI($("#searchPrivName").val().trim()))+
			"&search['sysNo']=" +$("#searchSysno").val();
}


function downloadExcelTemplate(fileName){
	window.location.href="/hs_gongan_superportal/util/downloadExcelTemplate?fileName="+fileName; 
}
