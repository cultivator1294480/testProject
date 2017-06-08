<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>部门信息列表</title>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery-ui.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-1.12.3.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/js/privilege/privilege.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-ui.min.js"></script>

		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">

	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="56">
					<table>
						<tr>
							<td width="21"></td>
							<td>
								<form id="quaryFrom" method="post">
									权限名称：<input value = "${pageSupport.search['privName']}" type="text" name="privName" id="searchPrivName" placeholder="请输入..." />&nbsp;&nbsp;
									系统名称：<select  id="searchSysno" name="sysNo">
												<option value="">请选择</option>
												<c:forEach items="${systems}" var="system">
													<c:choose>
														<c:when test="${null != pageSupport.search and null != pageSupport.search['sysNo'] and system.key ==pageSupport.search['sysNo']}">
															<option  selected="selected"  value='${system.key}'>${system.value}</option>
														</c:when>
														<c:otherwise>
															<option value='${system.key}'>${system.value}</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
										</select>
									<span  onclick="jumpTarget(1)" class="btn-current label-filter"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;查询</span>&nbsp;&nbsp;
									<span  id="openAddPrivilege" class="btn-current label-filter"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</span>&nbsp;&nbsp;
								</form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table class="newtable" width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
						<tr>
							<td width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">序号 </span></div>
							</td>
							<td width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">权限名称</span></div>
							</td>
							<td width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">权限描述</span></div>
							</td>
							<td width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">系统编号</span></div>
							</td>
							<td width="13%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">操作</span></div>
							</td>
						</tr>
						<c:forEach items="${pageSupport.items}" var="item" varStatus="_status">
							<tr>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE6">
									<div align="center">
										<span class="STYLE10">${_status.index+1}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.privName}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.privComm}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysNo}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<!--<input type="button" value="修改" onclick="updatePrivilegeDialog(${item.privId})" />
										<input type="button" value="删除" onclick="deletePrivilege(${item.privId},'${item.privName}')" />-->
										<span title="修改" class="glyphicon glyphicon-pencil" aria-hidden="true" onclick="updatePrivilegeDialog(${item.privId})"></span>
										<span title="删除" class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deletePrivilege(${item.privId},'${item.privName}')"></span>
									</div>
								</td>
							</tr>
						</c:forEach>
						<tr>

					</table>
				</td>
				</tr>
				<tr>
					<td height="30">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="33%">
									<div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共有<strong>${pageSupport.totalCount}</strong> 条记录，当前第<strong>${pageSupport.pageNo}</strong> 页，共 <strong>${pageSupport.totalPageCount}</strong> 页</span></div>
								</td>
								<td width="65%">
									<table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
										<tr>
											<div class="paginations pagination-centered">
												<ul id="ul">
													<li>
														<a href="javascript:void(0)" onclick="jumpTarget(1)">首页</a>
													</li>

													<c:if test="${pageSupport.pageNo>1}">
														<li>
															<a  href="javascript:void(0)" onclick="jumpTarget(${pageSupport.pageNo-1})">前一页</a>
														</li>
													</c:if>



											<!-- 页码显示 							-->
											<c:forEach items="${pageSupport.pageNos}" var="pageNo">
												<c:choose>
													<c:when test="${pageSupport.pageNo==pageNo}">
														<li class="active"><a class="a"> <c:out value="${pageNo}" /></a></li>
													</c:when>
													<c:otherwise>
														<a href="javascript:void(0)" onclick="jumpTarget(${pageNo})">${pageNo}</a>
													</c:otherwise>
												</c:choose>
											</c:forEach>
													<c:if test="${pageSupport.pageNo<pageSupport.totalPageCount}">
														<li>
															<a href="javascript:void(0)" onclick="jumpTarget(${pageSupport.pageNo+1})">后一页</a>
														</li>
													</c:if>

													<li>
														<a href="javascript:void(0)" onclick="jumpTarget(${pageSupport.totalPageCount})">尾页</a>
													</li>&nbsp;&nbsp;

													<li style="line-height: 30px">
														<input type="text" name="ye" size="3" class="yeInfo" />
														<input type="hidden" class="totalPage" value="${pageSupport.totalPageCount}" />
														<input type="button" value="go" class="tz" title="最大页数为：${pageSupport.totalPageCount}" />
													</li>
												</ul>
											</div>
										</tr>
									</table>
								</td>
								<td width="21"></td>
							</tr>
						</table>
					</td>
				</tr>
		</table>

		<!--添加权限信息dialog -->
		<div id="addPrivilegeDialog" title="添加权限信息">
			<form class="dlgform" action="" id="privilegeForm">
				<input type="hidden" id="privId" name="privId" />
				<div><span>系统名称：</span>
				<select  id = "sysNo" name="sysNo" >
				</select>
			</div>
			<div><span>权限名称：</span><input id="privName" name="privName"  /></div>
				<div><span>权限描述：</span><input id="privComm" name="privComm"  /></div>

			</form>
		</div>

		<form method="post" enctype="multipart/form-data" action="/hs_gongan_superportal/privilege/addPrivileges">
			&nbsp;&nbsp;&nbsp;&nbsp;请选择权限信息文件：<input type="file" name="excelFile">
			<button type="submit" class="btn-current">导入</button>
		</form>

		<input type="button" onclick="downloadExcelTemplate('-tb_sys_privilege.xlsx')" value="下载权限信息模板"/>
	</body>
</html>