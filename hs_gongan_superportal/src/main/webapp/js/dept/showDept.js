
$(function() {
	//初始化dialog
	 $( "#addDetpDialog" ).dialog({
	        autoOpen: false,
	        minHeight: 300,
	        minWidth: 400,
	        modal: true,
	        buttons: {
	          "确定": function() {
	        	  submitDeptForm();
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
	$("#openAddDept").click(function() {
		// 清空dialog
//		clearAddDetpDialog();
		$(".subDetpForm").val("");
		// 弹出dialog
		$('#addDetpDialog').dialog("option","title", "添加部门信息").dialog('open'); 
	});

})



//提交部门信息
function submitDeptForm(){
	
	var deptFormInfo = document.getElementById('detpForm');
	var id = deptFormInfo.id.value;
	var code = deptFormInfo.code.value;
	var name = deptFormInfo.name.value;
	var remark = deptFormInfo.remark.value;
	var version = deptFormInfo.version.value;
	if (!code || code.trim() == "" ) {
		alert("请输入部门编号");
	}else if ( !name || name.trim() == "") {
		alert("请输入部门名称");
	}else if ( !version || version.trim() == "") {
		alert("请输入版本号");
	}
	
	var url;
	if(!id||0==id||""==id){
		url = "addWorkUnit";
	}else{
		url = "updateWorkUnit";
	}
	$.ajax({  
		url: url,  
		data: $('#detpForm').serializeArray(),  
		type:'POST',
	    success:function(data,textStatus,jqXHR){
	    	window.location.reload();
	    },
	    error:function(){
	    	alert("添加/修改部门失败");
	    },
	   
	}); 
	return true;
}

//更新dialog
function updateDeptDialog(id){
	// 清空dialog
	$(".subDetpForm").val("");
	// 弹出dialog
	$('#addDetpDialog').dialog("option","title", "修改部门信息").dialog('open'); 
	//设置模态框值
	setDeptDialog(id);
	
	
}
//设置模态框数据
function setDeptDialog(id){
	 $.ajax({
	        url:"findWorkUnit",
	        type:"post",
	        data:{
	        	id:id
	        },
	        success:function(data){
	        	$("#id").val(data.id);
	        	$("#code").val(data.code);
	        	$("#name").val(data.name);
	        	$("#remark").val(data.remark);
	        	$("#version").val(data.version);
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取部门信息失败");
	        }
	    });
}





//删除部门信息
function deleteDept(id,name){

	if(confirm("确认要删除部门信息:"+name+"")){
		 $.ajax({
				url : "deleteWorkUnit",
				type : "post",
				data : {
					id : id
				},
				success : function(data) {
					window.location.reload();
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("删除部门信息失败");
				}
		});
		
	}
};




		
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
	window.location.href="/hs_gongan_superportal/dept/showDept?"+ 
			"pageNo=" +pageNo+
			"&search['code']=" +$("#searchCode").val().trim()+
			"&search['deptName']=" +encodeURI(encodeURI($("#searchDeptName").val().trim()));
	
}





function downloadExcelTemplate(fileName){
	window.location.href="/hs_gongan_superportal/util/downloadExcelTemplate?fileName="+fileName; 
}