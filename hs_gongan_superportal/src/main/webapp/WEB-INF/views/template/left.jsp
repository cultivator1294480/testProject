<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.js"></script>
<script type="text/javascript" src="/hs_gongan_superportal/js/chili-1.7.pack.js"></script>
<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.easing.js"></script>
<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.dimensions.js"></script>
<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.accordion.js"></script>
<script language="javascript">
	jQuery().ready(function(){
		jQuery('#navigation').accordion({
			header: '.head',
			navigation1: true, 
			event: 'click',
			fillSpace: true,
			animated: 'bounceslide'
		});
	});
</script>
<!-- <script type="text/javascript">
//如果角色权限全部新加完成，需要判断是否有权限打开菜单时，可以把一下注释打开

  $(function() {
	 var value=document.getElementById("zzgl").getAttribute("value");
	 if(value.indexOf("ZZGL")!=-1){
		 $("#zzgl").css("display","block");
	 }else{	 
		 $("#zzgl").css("display","none");  //非管理员时不显示导航栏
	 }
  })
    $(function() {
	 var value=document.getElementById("rygl").getAttribute("value");
	 if(value.indexOf("RYGL")!=-1){
		 $("#rygl").css("display","block");
	 }else{	 
		 $("#rygl").css("display","none");  //非人员管理时显示导航栏
	 }
  })
    $(function() {
	 var value=document.getElementById("jsgl").getAttribute("value");
	 if(value.indexOf("JSGL")!=-1){
		 $("#jsgl").css("display","block");
	 }else{	 
		 $("#jsgl").css("display","none");  //非角色管理时不显示导航栏
	 }
  })
      $(function() {
	 var value=document.getElementById("qxgl").getAttribute("value");
	 if(value.indexOf("QXGL")!=-1){
		 $("#qxgl").css("display","block");
	 }else{	 
		 $("#qxgl").css("display","none");  //非权限管理时不显示导航栏
	 }
  })
       $(function() {
	 var value=document.getElementById("xtzcgl").getAttribute("value");
	 if(value.indexOf("XTZCGL")!=-1){
		 $("#xtzcgl").css("display","block");
	 }else{	 
		 $("#xtzcgl").css("display","none");  //非系统注册管理时不显示导航栏
	 }
  })
  
  $(function(){
    	$("#navigation li li a").click(function () {
            $("a").removeClass("active");
            $(this).addClass("active");
        }); 
   }); 

</script> -->
<style type="text/css">
<!--
body {
	margin:0px;
	padding:0px;
	font-size: 12px;
}
#navigation {
	margin:0px;
	padding:0px;
	width:147px;
}
#navigation a.head {
	cursor:pointer;
	background:url(/hs_gongan_superportal/images/main_34.gif) no-repeat scroll;
	display:block;
	font-weight:bold;
	margin:0px;
	padding:5px 0 5px;
	text-align:center;
	font-size:12px;
	text-decoration:none;
}
#navigation ul {
	border-width:0px;
	margin:0px;
	padding:0px;
	text-indent:0px;
}
#navigation li {
	list-style:none; display:inline;
}
#navigation li li a {
	display:block;
	font-size:12px;
	text-decoration: none;
	text-align:center;
	padding:3px;
}
#navigation li li a:hover {
	background:url(/hs_gongan_superportal/images/tab_bg.gif) repeat-x;
		border:solid 1px #adb9c2;
}
.active{
       background:url(/hs_gongan_superportal/images/tab_bg.gif) repeat-x;
		border:solid 1px #adb9c2;
}
-->
</style>
</head>
<body>
<div  style="height:100%;">
   <ul id="navigation">
  <!-- 程城 -->
	<li > <a class="head">组织管理</a>
	      <ul>
	        <li  id="zzgl" value="${privList}"><a href="/hs_gongan_superportal/dept/showDept" target="hs_gongan_superportal_rightFrame">组织管理</a></li>
	      </ul>
     </li>

    <li > <a class="head">人员管理</a>
      <ul>
        <li id="rygl" value="${privList}"><a href="/hs_gongan_superportal/user/showUser" target="hs_gongan_superportal_rightFrame">人员管理</a></li>
      </ul>
    </li>
    
    
    <li > <a class="head">角色管理</a>
      <ul>
        <li  id="jsgl" value="${privList}"><a href="/hs_gongan_superportal/role/showRole" target="hs_gongan_superportal_rightFrame">角色管理</a></li>
      </ul>
    </li>
    <li  > <a class="head">权限管理</a>
      <ul>
        <li id="qxgl" value="${privList}"><a href="/hs_gongan_superportal/privilege/showPrivilege" target="hs_gongan_superportal_rightFrame">权限管理</a></li>
      </ul>
    </li>    
    <li> <a class="head">系统注册管理</a>
      <ul>
        <li id="xtzcgl" value="${privList}"><a href="/hs_gongan_superportal/mult/Allsystems" target="hs_gongan_superportal_rightFrame">系统注册管理</a></li>
      </ul>
    </li>  
  </ul>
</div>
</body>
</html>