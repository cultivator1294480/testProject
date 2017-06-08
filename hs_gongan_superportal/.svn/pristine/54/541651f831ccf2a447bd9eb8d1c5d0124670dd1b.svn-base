
$(function() {
	//初始化dialog
	 $( "#addRoleDialog" ).dialog({
	        autoOpen: false,
	        minHeight: 300,
	        minWidth: 400,
	        modal: true,
	        buttons: {
	          "确定": function() {
	        	  submitRoleForm();
	          },
	          "取消": function() {
	            $( this ).dialog( "close" );
	          }
	        },
	        close: function() {
	        	//return;
	        }
	      });
	 
	 
		$("#openAddRole").click(function() {
			// 清空dialog
			clearAddRoleDialog();
			// 弹出dialog
//			$("#addRoleDialog").dialog("open");
			$('#addRoleDialog').dialog("option","title", "添加角色信息").dialog('open'); 
		});
	 
	 
  });


//清空dialog
	function clearAddRoleDialog(){
		$(".subRoleForm").val("");
		setSystemOption();
	}

function setSystemOption(){
	$("#sysNo").empty();
	$("#sysNo").prepend("<option value=''>请选择</option>"); 
	$.ajax({  
		url: "findSysNo",  
		type:'POST',
	    success:function(data){
	    	for(var i =0;i<data.length;i++){ 
	    		$("#sysNo").append("<option value='"+data[i].sysNo+"'>"+data[i].sysName+"</option>");
	    	} 
	    },
	    error:function(){
	    	alert("页面错误");
	    },
	}); 
}


function setPricOption(sysNo){
	$("#prive").empty();
	$("#prive").prepend("<option value=''>请选择</option>"); 
	$.ajax({  
		url: "findPrivilegeName",  
		type:'POST',
		data:{
			sysNo:sysNo
		},
	    success:function(data){
	    	for(var i =0;i<data.length;i++){ 
	    		$("#prive").append("<option value='"+data[i].privName+"'>"+data[i].privComm+"</option>");
	    	} 
	    },
	    error:function(){
	    	alert("页面错误");
	    },
	}); 
}
//提交部门信息
function submitRoleForm(){
	var roleFormInfo = document.getElementById('roleForm');
	var roleId = roleFormInfo.roleId.value;
	var roleName = roleFormInfo.roleName.value;
	var roleComm = roleFormInfo.roleComm.value;
	var sysNo = roleFormInfo.sysNo.value;

	if (!roleName || roleName.trim() == "" ) {
		alert("请输入角色名称");
	}else if ( !roleComm || roleComm.trim() == "") {
		alert("请输入角色描述");
	}else if ( !sysNo || sysNo.trim() == "") {
		alert("系统编号");
	}
	var url;
	if(!roleId||0==roleId||""==roleId){
		url = "addRole";	
	}else{
		url = "updateRole";
	}

	$.ajax({  
		url: url,  
		data: $('#roleForm').serializeArray(),  
		type:'POST',
	    success:function(data,textStatus,jqXHR){
	    	window.location.reload();
	    },
	    error:function(){
	    	alert("添加/修改角色失败");
	    },
	   
	}); 
	return true;
}

//更新dialog
function updateRoleDialog(roleId){
	// 清空dialog
	clearAddRoleDialog();
	// 弹出dialog
	$('#addRoleDialog').dialog("option","title", "修改角色信息").dialog('open'); 
	//设置模态框值
	setRoleDialog(roleId);
}
//授权dialog
function addPriviDialog(roleId,sysNo){
	// 清空dialog
	clearAddPriveDialog(sysNo);
	// 弹出dialog
//	$("#priviDialog").dialog("open");
	$('#priviDialog').dialog("option","title", "添加权限信息").dialog('open'); 
	//设置模态框值
	setPrivDialog(roleId);
	
}
//设置模态框数据
function setRoleDialog(roleId){
	 $.ajax({
	        url:"findRoleById",
	        type:"post",
	        data:{
	        	roleId:roleId
	        },
	        success:function(data){
	        	$("#roleId").val(data.roleId);
	        	$("#roleName").val(data.roleName);
	        	$("#roleComm").val(data.roleComm);
	        	$("#sysNo").val(data.sysNo);
	        	$("#createTime").val(data.createTime);
	        	$("#createUser").val(data.createUser);
	        	$("#createUseridCard").val(data.createUseridCard);
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取角色信息失败");
	        }
	    });
}
function setPrivDialog(roleId){
	 $.ajax({
	        url:"findRoleById",
	        type:"post",
	        data:{
	        	roleId:roleId
	        },
	        success:function(data){
	        	$("#roleId").val(data.roleId);
	        	$("#roleName5").val(data.roleName);  
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取角色信息失败");
	        }
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
//		window.location.href="/hs_gongan_superportal/role/showRole?pageNo="+pageNo;
		 jumpTarget(pageNo);
	}
};





//删除角色信息
function deleteRole(roleId,roleName){
	if(confirm("确认要删除角色信息"+roleName+"")){
		 $.ajax({
				url : "deleteRole",
				type : "post",
				data : {
					roleId : roleId
				},
				success : function(data) {
					window.location.reload();
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("删除角色信息失败");
				}
		});
		
	}


}


$(function() {
	$('.dateInfo').datetimepicker({
//		yearOffset:222,
		lang:'ch',
		timepicker:false,
//		format:'d/m/Y',
		format:'Y/m/d',
		formatDate:'Y/m/d',
//		minDate:'-1970/01/02', // yesterday is minimum date
//		maxDate:'+1970/01/02' // and tommorow is maximum date calendar
	});
  });




//打开角色管理的页面
function privilegeManage(roleId){
	window.location.href="/hs_gongan_superportal/role/rolePrivilege?roleId="+roleId;
}


//跳转到指定页面
function jumpTarget(pageNo){
	window.location.href="/hs_gongan_superportal/role/showRole?"+ 
			"pageNo=" +pageNo+
			"&search['roleName']=" +encodeURI(encodeURI($("#searchRoleName").val().trim()))+
			"&search['sysNo']=" +$("#searchSysno").val();
}


function downloadExcelTemplate(fileName){
	window.location.href="/hs_gongan_superportal/util/downloadExcelTemplate?fileName="+fileName; 
}