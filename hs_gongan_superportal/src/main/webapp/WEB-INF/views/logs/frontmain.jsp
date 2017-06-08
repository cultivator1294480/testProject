<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>

	<head>
		<title>统一管理平台</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
		<link href="/hs_gongan_superportal/logs/css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" />
		<link href="/hs_gongan_superportal/logs/css/main.css" rel="stylesheet" type="text/css" />
		<link href="/hs_gongan_superportal/logs/css/themesetting.css" rel="stylesheet" type="text/css">
		<link href="/hs_gongan_superportal/logs/css/skins/black.css" rel="stylesheet" />
		<link href="/hs_gongan_superportal/logs/css/powerFloat.css" rel="stylesheet" type="text/css" />
		<link href="/hs_gongan_superportal/logs/css/smartMenu.css" rel="stylesheet" type="text/css" />
		<link href="/hs_gongan_superportal/logs/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/jquery-powerFloat-min.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/jquery-smartMenu-min.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/jquery-class.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/artDialog.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/iframeTools.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/jquery-ui-1.8.24.custom.min.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/logs/js/interface.js"></script>
		
		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">
		<script type="text/javascript" src="/hs_gongan_superportal/resources/js/home.js"></script>
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
					<a class="navbar-brand logo2" href="javascript:;">SCOPA</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav topdock" style="margin:0 0 0 100px;">
						<li><a href="javascript:;"><span class="text">桌面1</span></a></li>
						<li><a href="javascript:;"><span class="text">桌面2</span></a></li>
						<li><a href="javascript:;"><span class="text">桌面3</span></a></li>
						<li><a href="javascript:;"><span class="text">桌面4</span></a></li>
						<li><a href="javascript:;"><span class="text">桌面5</span></a></li>
					</ul>
					<div class="nav navbar-nav navbar-right">
						<div class="import hidden">
							<span class="icon icon-importdata" id="btnIm"></span>
						</div>
						<div class="userpic"></div>
						<div class="userinfo ellipsis">${sessionScope.user.jyxm}</div>
						<a class="logout" title="退出登录" href="javascript:window.parent.location='/hs_gongan_superportal/logs/loginid'" target="hs_gongan_superportal_mainFrame"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		
		
		<input type="hidden" id="app" value='${app}'>
		<input type="hidden" id="sApp" value='${sApp}'>
		<input type="hidden" id="ops" value='${ops}'>
		<input type="hidden" id="leftMenu" value='${leftMenuList}'>
		<input type="hidden" id="userKey" value='${userKey}'>
		<input type="hidden" id="allSystem" value='${allSystem}'>
		<div id="themeSetting_wrap" style="display:none;">
			<div id="themeSetting_head" class="themeSetting_head">
				<div id="themeSetting_tabTheme" class="themeSetting_tab current" style="display: block;">系统主题</div>
			</div>
			<div id="themeSetting_body" class="themeSetting_body">
				<div id="themeSetting_area" class="themeSetting_area" style="display: block;">
					<a href="###" themeid="theme_blue" class="themeSetting_settingButton" id="themeSetting_theme_blue">
						<div style="background: url(/hs_gongan_superportal/logs/images/theme_blue.jpg) no-repeat;" class="themeSetting_settingButton_icon"></div>
						<div class="themeSetting_settingButton_text">研判平台</div>
					</a>
					<a href="###" themeid="theme_pinky_night" class="themeSetting_settingButton" id="themeSetting_theme_pinky_night">
						<div style="background: url(/hs_gongan_superportal/logs/images/theme_pinky_night.jpg) no-repeat;" class="themeSetting_settingButton_icon"></div>
						<div class="themeSetting_settingButton_text">梦幻光影</div>
					</a>
					<a href="###" themeid="theme_green" class="themeSetting_settingButton" id="themeSetting_theme_green">
						<div style="background: url(/hs_gongan_superportal/logs/images/theme_green.jpg) no-repeat;" class="themeSetting_settingButton_icon"></div>
						<div class="themeSetting_settingButton_text">青青世界</div>
					</a>
					<a href="###" themeid="theme_wood1" class="themeSetting_settingButton" id="themeSetting_theme_wood1">
						<div style="background: url(/hs_gongan_superportal/logs/images/theme_wood1.jpg) no-repeat;" class="themeSetting_settingButton_icon"></div>
						<div class="themeSetting_settingButton_text">温馨木纹</div>
					</a>
					<a href="###" themeid="theme_wood2" class="themeSetting_settingButton" id="themeSetting_theme_wood2">
						<div style="background: url(/hs_gongan_superportal/logs/images/theme_wood2.jpg) no-repeat;" class="themeSetting_settingButton_icon"></div>
						<div class="themeSetting_settingButton_text">黑色木纹</div>
					</a>
				</div>
				<div id="themeSetting_wallpaper" class="themeSetting_wallpaper" style="display: none;"></div>
			</div>
		</div>

		<div id="zoomWallpaperGrid" class="zoomWallpaperGrid" style="position: absolute; z-index: -10; left: 0pt; top: 0pt; overflow: hidden; height: 381px; width: 1440px;">
			<img id="zoomWallpaper" class="zoomWallpaper" style="position: absolute; top: 0pt; left: 0pt; height: 381px; width: 1440px;">
		</div>
		<div class="taskbar_start_menu_container" id="startMenuContainer" _olddisplay="block" style="display: none;">
			<div class="startMenuImg taskbar_start_menu_body" id="taskbar_start_menu_body">
				<div uin="0" class="taskbar_start_menu_selfinfo" id="startMenuSelfInfo">
					<div class="taskbar_start_menu_nick" id="startMenuSelfNick"></div>
					<a title="反馈" href="###" class="startMenuImg startMenuTopControl_support" cmd="support">&nbsp;</a>
					<a title="锁定" href="###" class="startMenuImg startMenuTopControl_lock" cmd="lock">&nbsp;</a>
				</div>
				<ul class="taskbar_start_menu">
					<li cmd="favorite">
						<a title="添加到收藏夹" href="javascript:void(0)" onclick="addBookmark();">添加到收藏夹</a>
					</li>

					<!-- 				<li cmd="shortcut"><a title="保存桌面快捷方式" target="_blank" -->
					<!-- 					href="###">保存桌面快捷方式</a></li> -->
					<!-- 				<li cmd="download"><a title="下载客户端" href="###">下载客户端</a></li> -->
					<!-- 				<li title="关于Q+ Web" cmd="about" id="taskbar_helpButton"><a -->
					<!-- 					href="###">关于Q+ Web</a></li> -->
					<li cmd="helper">
						<a title="新手指导" href="###">新手指导</a>
					</li>
				</ul>
				<a class="startMenuImg logout_botton" title="注销当前用户" cmd="logout" href="javascript:void(0)" onclick="logout()"></a>
			</div>
		</div>

	</body>
	<script type="text/javascript" src="/hs_gongan_superportal/logs/js/loadbgimg.js"></script>
	<script type="text/javascript" src="/hs_gongan_superportal/logs/js/data.js"></script>
	<script type="text/javascript" src="/hs_gongan_superportal/logs/js/bsv1.3-core.js"></script>
	<script type="text/javascript" src="/hs_gongan_superportal/logs/js/frontmain.js"></script>

</html>