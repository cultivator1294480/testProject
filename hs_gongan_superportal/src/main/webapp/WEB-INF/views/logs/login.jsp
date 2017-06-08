<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- CSS -->
		<!--<link rel="stylesheet" href="/hs_gongan_superportal/assets/css/reset.css">
        <link rel="stylesheet" href="/hs_gongan_superportal/assets/css/supersized.css">
        <link rel="stylesheet" href="/hs_gongan_superportal/assets/css/style.css">-->
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/login.css" rel="stylesheet">
		<!-- Javascript -->
		<script src="/hs_gongan_superportal/resources/js/jquery-1.8.2.min.js"></script>
		<script src="/hs_gongan_superportal/resources/js/login.js"></script>
		<!--<script src="/hs_gongan_superportal/assets/js/supersized.3.2.7.min.js" ></script>
        <script src="/hs_gongan_superportal/assets/js/supersized-init.js" ></script>-->
		<!--  <script type="text/javascript">
        	function login(){
        		
        	}
        </script> -->
	</head>

	<body>
		<div class="loginbg"></div>
		<div class="loginicon"></div>
		<div class="login_body">
			<div class="center_continer">
				<div class="login_content">
					<form action="/hs_gongan_superportal/logs/loginid" method="post">
						<div class="login_row"><input type="text" name="loginid" class="input_info input_user" placeholder="请输入您的用户名！"></div>
						<div class="login_row"><input type="password" name="password" class="input_info input_pwd" placeholder="请输入您的用户密码！"></div>
						<div class="login_row row_btn">
							<button type="submit" class="login_btn font14 pull-right">登录</button>
							<button href="javascript:;" class="login_pki_btn font14 pull-left">证书登录</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</body>

</html>