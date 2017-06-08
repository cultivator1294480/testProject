<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>人员列表</title>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery-ui.css" />

		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-1.12.3.js"></script>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.datetimepicker.full.js"></script>
		<!--<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/pagelimit.css" />-->
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-ui.min.js"></script>

		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">
<!--		<style type="text/css">
			ul li {
				list-style-type: none
			}
			
			#navigation li a {
				display: block;
				font-size: 12px;
				text-decoration: none;
				text-align: center;
				padding: 3px;
			}
			
			#navigation li a:hover {
				background: url(/hs_gongan_superportal/images/tab_bg.gif) repeat-x;
				border: solid 1px #adb9c2;
			}
		</style>
-->	</head>

	<body>
		<ul class="leftsidebar">
			<c:forEach var="system" items="${systemMap}">
				<li>
					<a href="/hs_gongan_superportal/user/showSubRole?sysNo=${system.key}&&userId=${userId}" target="hs_gongan_superportal_subRoleFrame">${system.value}</a>
				</li>
			</c:forEach>
		</ul>
	</body>

</html>