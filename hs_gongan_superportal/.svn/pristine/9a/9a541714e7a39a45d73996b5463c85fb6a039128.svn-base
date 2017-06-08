<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>显示人员角色</title>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery-ui.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-1.12.3.js"></script>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.datetimepicker.full.js"></script>
		<!--<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/pagelimit.css" />-->
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-ui.min.js"></script>

		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">

	</head>

	<body style="padding:20px;">

		<form id="rolePrivilegeVoForm" action="">

			<c:forEach items="${rolePrivilegeVos}" var="rolePrivilegeVo" varStatus="num">
				<c:if test="${num.count == 1}">
					<input type="hidden" name="sysNo" id="sysNo" value="${rolePrivilegeVo.sysNo}" />
					<input type="hidden" name="roleId" id="roleId" value="${roleId}" />
				</c:if>
			</c:forEach>

			<table>
				<tr>
					<c:forEach items="${rolePrivilegeVos}" var="rolePrivilegeVo" varStatus="num">
						<td><label>
						<c:if test="${num.index%6==0&&num.index!=0}">
							<tr></tr>
							<td>
						</c:if> 
						<c:choose>
							<c:when test="${rolePrivilegeVo.roleId!=null&&rolePrivilegeVo.roleId!=0}">  
      								<input type="checkbox" name="privId" value="${rolePrivilegeVo.privId}" checked="checked" /> 
							</c:when>
							<c:otherwise> 
     							<input type="checkbox" name="privId" value="${rolePrivilegeVo.privId}" /> 
							</c:otherwise>
						</c:choose> 
                        <span> ${rolePrivilegeVo.privComm}</span> </label>
						</td>
					</c:forEach>
				</tr>
			</table>

			<!-- 	判断是否要显示 用户"保存","取消保存"按钮 -->
			<c:choose>
				<c:when test="${fn:length(rolePrivilegeVos) > 0}">
					<button class="btn-current" type="button" id="submitRolePrivilegeVo" />保存</button>
					<button class="btn-current" type="button" id="consoleSubmitRolePrivilegeVo" />取消保存</button>
				</c:when>
				<c:otherwise>
					<div>没有权限可供选择</div>
				</c:otherwise>
			</c:choose>

		</form>
	</body>
	<script type="text/javascript" src="/hs_gongan_superportal/js/role/subRolePrivilege.js"></script>

</html>