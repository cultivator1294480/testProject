<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">
		<script src="/hs_gongan_superportal/js/jquery.js"></script>
		<script>
			$(function(){
				$('ul.navbar-nav li').on('click', function(){
					$(this).addClass('active').siblings().removeClass('active');
				});
			});
		</script>
		<title>无标题文档</title>
		<!--<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			font-size: 12px;
			color: #000000;
		}
		.STYLE5 {font-size: 12}
		.STYLE7 {font-size: 12px; color: #FFFFFF; }
		.STYLE7 a{font-size: 12px; color: #FFFFFF; }
		a img {
			border:none;
		}
		</style>-->
	</head>

	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<a class="navbar-brand logo" href="javascript:;">SCOPA</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="javascript:window.parent.location.reload();" target="hs_gongan_superportal_rightFrame"><span class="text">首页</span></a>
						</li>
						<li>
							<a href="/hs_gongan_superportal/dept/showDept" target="hs_gongan_superportal_rightFrame"><span class="text">组织管理</span></a>
						</li>
						<li>
							<a href="/hs_gongan_superportal/user/showUser" target="hs_gongan_superportal_rightFrame"><span class="text">人员管理</span></a>
						</li>
						<li>
							<a href="/hs_gongan_superportal/role/showRole" target="hs_gongan_superportal_rightFrame"><span class="text">角色管理</span></a>
						</li>
						<li>
							<a href="/hs_gongan_superportal/privilege/showPrivilege" target="hs_gongan_superportal_rightFrame"><span class="text">权限管理</span></a>
						</li>
						<li>
							<a href="/hs_gongan_superportal/mult/Allsystems" target="hs_gongan_superportal_rightFrame"><span class="text">系统注册管理</span></a>
						</li>
					</ul>
					<div class="nav navbar-nav navbar-right">
						<div class="import hidden">
							<span class="icon icon-importdata" id="btnIm"></span>
						</div>
						<div class="userinfo ellipsis">${sessionScope.user.loginid}</div>
						<a class="logout" title="退出登录" href="javascript:window.parent.location='/hs_gongan_superportal/logs/loginid'" target="hs_gongan_superportal_mainFrame"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a>
					</div>
				</div>
			</div>
		</nav>
	</body>

</html>