var initPage=function(){
	
		//分页
		$(".tz").on("click",yeInfo);
		//删除
		$(".del").on("click",del);
};


//分页跳转输入
var yeInfo=function(){
	var reg=/^\+?[1-9][0-9]*$/;
	var startNum=$(".yeInfo").val().trim();
	var pageTotal=$(".totalPage").val().trim();
	
	if(!reg.test(startNum)){
		alert("请输入大于0的整数");
	}else if(startNum-pageTotal>0){
		alert("输入数值已超过最大页数，请重新输入");
	}else{
		window.location.href="/hs_gongan_compare/list?startNum="+startNum;
		
	}
};



//删除单条记录
var del=function(){
	var obj=$(this);
	var id=obj.attr("sourceid");
	var sourcename=obj.attr("sourcename");
	if(confirm("确认要删除数据源["+sourcename+"]")){
	$.post(
			"/hs_gongan_compare/delete",
			{"id":id},
			function(result){
				if(result=="success")
					
					window.location.href="/hs_gongan_compare/list?startNum=1";
				
			},'html');
	}
};

$(function(){
	initPage();
});