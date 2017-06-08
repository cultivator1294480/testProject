
$(function() {
	//初始化dialog
	 $( "#userDialog" ).dialog({
	        autoOpen: false,
	        minHeight: 476,
	        maxHeight: 500,
	        minWidth: 500,
	        modal: true,
	        buttons: {
	          "确定": function() {
	        	  submitUserForm();
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
	$("#openAddUser").click(function() {
		// 清空dialog
		clearAddUserDialog();	
		// 弹出dialog
		$('#userDialog').dialog("option","title", "添加警员信息").dialog('open');  
	});

})




function  clearAddUserDialog(){
	$('.subUserForm').val("");
//	$("#endTime").val("");
//	$("#pzrzrq").val("");
	setOptionInfo();
}


//加载选择框内容
function setOptionInfo(){
	//籍贯信息
	setOption("#jg","findJgList");
	//民族信息
	setOption("#mz","findMzList");
	//政治面貌
	setOption("#zzmm","findZzmmList");
	//工作单位
	setOption("#gzdwdm","findGzdwdmList");
	//职务名称
	setOption("#zwmc","findZwmcList");
	//警衔
	setOption("#jyyx","findJyyxList");
}


function setOption(id,url){
	$(id).empty();
	$(id).prepend("<option value=''>请选择</option>"); 
	$.ajax({  
		url: url,  
		type:'POST',
	    success:function(data){
	    	for ( var key in data) {
				if (data.hasOwnProperty(key)) {
					$(id).append("<option value='"+key+"'>"+data[key]+"</option>");
				}
			}  
	    },
	    error:function(){
	    	alert("页面错误");
	    },
	}); 
}




//提交部门信息
function submitUserForm(){
	
	var userForm = document.getElementById('#userForm');

	var userId = $("#userId").val(); 
	var url;
	if(!userId||0==userId||""==userId){
		url = "addUser";
	}else{
		url = "updateUser";
	}
	$.ajax({  
		url: url,  
		data: $('#userForm').serializeArray(),  
		type:'POST',
	    success:function(data){
	    	window.location.reload();
	    },
	    error:function(){
	    	alert("添加/修改部门失败");
	    }
	}); 
	return true;
}

//更新dialog
function updateUserDialog(userId){
	// 清空dialog
	clearAddUserDialog();
	$('.subUserForm').val("");
	// 弹出dialog
	$('#userDialog').dialog("option","title", "更新警员信息").dialog('open');  
	//设置模态框值
	setUserDialog(userId);
}

//设置模态框数据
function setUserDialog(userId){
	 $.ajax({
	        url:"findUser",
	        type:"post",
	        data:{
	        	userId:userId
	        },
	        success:function(data){
	        	
	        	$('#userId').val(data.userId);
	        	$('#loginId').val(data.loginId);
	        	$('#jh').val(data.jh);
	        	$('#jyxm').val(data.jyxm);
	        	if(1==data.xb){
	        		$('#man').attr("checked","checked");
	        	}else{
	        		$('#woman').attr("checked","checked");
	        	}
	        	$('#sfzh').val(data.sfzh);
	        	$('#csrq').val(data.csrq);
	        	$('#cjgzsj').val(data.cjgzsj);
	        	$('#cjgagzsj').val(data.cjgagzsj);
	        	$('#zwsm').val(data.zwsm);
	        	$('#sjxrq').val(data.sjxrq);
	        	$('#bgsdhhm').val(data.bgsdhhm);
	        	$('#sjhm').val(data.sjhm);
	        	$('#csrq').val(data.csrq);
	        	$('#cjgzsj').val(data.cjgzsj);
	        	$('#cjgagzsj').val(data.cjgagzsj);
	        	$('#pzrzrq').val(data.pzrzrq);
	        	$('#sjxrq').val(data.sjxrq);
	        	if(1==data.islock){
	        		$('#notLock').attr("checked","checked");
	        	}else{
	        		$('#islock').attr("checked","checked");
	        	}
	        	//籍贯信息
	        	$('#jg').val(data.jg);
	        	//民族信息
	        	$('#mz').val(data.mz);
	        	//政治面貌
	        	$('#zzmm').val(data.zzmm);
	        	//工作单位
	        	$('#gzdwdm').val(data.gzdwdm);
	        	//职务名称
	        	$('#zwmc').val(data.zwmc);
	        	//警衔
	        	$('#jyyx').val(data.jyyx);
	        	
	        	$('#endTime').val(data.endTime);
	        	
	        },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	           alert("获取用户信息失败");
	        }
	    });
}





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
//		window.location.href="/hs_gongan_superportal/user/showUser?startNum="+startNum;
		jumpTarget(pageNo);
	}
};




$(function(){
	//分页
	$(".tz").on("click",yeInfo);
});







//跳转到指定页面
function jumpTarget(pageNo){
	window.location.href="/hs_gongan_superportal/user/showUser?"+ 
			"pageNo=" +pageNo+
			"&search['jh']=" +$("#searchJh").val().trim()+
			"&search['jyxm']=" +encodeURI(encodeURI($("#searchJyxm").val().trim()))+
			"&search['sfzh']=" +$("#searchSfzh").val().trim();
}


//删除部门信息
function deleteDept(id,deptName){
	
	if(confirm("确认要删除部门信息"+deptName+"")){
		 $.ajax({
				url : "deleteDept",
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

	
}





//加载日期插件
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











//删除部门信息
function deleteUser(userId,deptName){
	
	if(confirm("确认要删除:"+deptName+"?")){
		 $.ajax({
				url : "deleteUser",
				type : "post",
				data : {
					userId : userId
				},
				success : function(data) {
					window.location.reload();
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("删除部门信息失败");
				}
		});
		
	}
}





//打开角色管理的页面
function showRole(userId){
	window.location.href="/hs_gongan_superportal/user/showRole?userId="+userId;
}



function downloadExcelTemplate(fileName){
	window.location.href="/hs_gongan_superportal/util/downloadExcelTemplate?fileName="+fileName; 
}