<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>人员列表</title>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery-ui.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-1.12.3.js"></script>
		<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery.datetimepicker.full.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/js/addSystem.js"></script>
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
									系统编号：<input value="${pageSupport.search['sysno']}"  type="text" name="sysno" id="searchSysno" placeholder="请输入..." />&nbsp;&nbsp;
									系统名称：<input value="${pageSupport.search['sysname']}" type="text" name="sysname" id="searchSysname" placeholder="请输入..." />&nbsp;&nbsp;
									<span  onclick="jumpTarget(1)" class="btn-current label-filter"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;查询</span>&nbsp;&nbsp;
									<span id="openAddSystem" class="btn-current label-filter"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</span>&nbsp;&nbsp;
								</form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table class="newtable" width="100%" border="0" id="" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
						<tr>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">编号</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">系统编号</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">系统名称</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">系统描述</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">版本号</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">系统地址</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">注册人姓名</span></div>
							</td>
							<td width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">注册人身份证号</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">注册时间</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">权限同步时间</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">图片地址</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">是否难权限</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">是否自建系</span></div>
							</td>
							<td width="6%" height="25" bgcolor="d3eaef" class="STYLE6">
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
										<span class="STYLE10">${item.sysno}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysname}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.syscomm}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysversion}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysurl}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.regusername}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.reguseridcard}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysregisttime}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sysnctime}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.conaddr}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.rolectrl}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.ownership}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span title="修改" class="glyphicon glyphicon-pencil" aria-hidden="true" onclick="updatesysDialog('${item.sysno}')"></span>
										<span title="删除" class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deleteSys('${item.sysno}')"></span>
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
															<a href='/hs_gongan_superportal/mult/Allsystems?startNum=<c:out value="${pageSupport.pageNo-1}"/>'>前一页</a>
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
														<input type="hidden" class="totalPage" value="<c:out value='${pageSupport.totalPageCount}'/>" />
														<input type="button" value="go" class="tz " title="最大页数为：<c:out value='${pageSupport.totalPageCount}'/>" />
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

		<!--添加部门信息dialog -->
		<div id="systemDialog" title="添加系统信息">
			<form class="dlgform" action="" method="" id="userForm">
					<div>
						<span>系统编号：</span>
						<input type="text" name="sysno" id="sysno" class="subUserForm"></input>
					</div>
					<div>
						<span>系统名称：</span>
						<input type="text" name="sysname" class="subUserForm"></input>
					</div>
					<div>
						<span>系统描述：</span>
						<input type="text" name="syscomm" class="subUserForm"></input>
					</div>
					<div>
						<span>版本号：</span>
						<input type="text" name="sysversion" class="subUserForm"></input>
					</div>
					<div>
						<span>系统地址：</span>
						<input type="text" name="sysurl" class="subUserForm">
					</div>
					<div>
						<span>图片地址：</span>
						<input type="text" name="conaddr" class="subUserForm">
					</div>
					<div>
						<span>是否难权限：</span>
						<input type="radio" name="rolectrl" checked="checked" value="1" id="rYes">是
						<input type="radio" name="rolectrl" value="0" id="rNo">否
					</div>
					<div>
						<span>是否自建系：</span>
						<input type="radio" name="ownership" checked="checked" value="1" id="oYes">是
						<input type="radio" name="ownership" value="0" id="oNo">否
					</div>
			</form>
		</div>

		<div id="updateDialog" title="注册系统信息">
			<form class="dlgform" action="" method="" id="sysupForm">
					<div>
						<span>系统sdf编号：</span>
						<input type="text" name="sysno" id="sysnos"></input>
					</div>
					<div>
						<span>系统名称：</span>
						<input type="text" name="sysname" id="sysname"></input>
					</div>
					<div>
						<span>系统描述：</span>
						<input type="text" name="syscomm" id="syscomm"></input>
					</div>
					<div>
						<span>版本号：</span>
						<input type="text" name="sysversion" id="sysversion"></input>
					</div>
					<div>
						<span>系统地址：</span>
						<input type="text" name="sysurl" id="sysurl">
					</div>
					<div>
						<span>图片地址：</span>
						<input type="text" name="conaddr" id="conaddr">
					</div>
					<div>
						<span>是否难权限：</span>
						<input type="radio" name="rolectrl" checked="checked" value="1" id="rYes">是
						<input type="radio" name="rolectrl" value="0" id="rNo">否
					</div>
					<div>
						<span>是否自建系：</span>
						<input type="radio" name="ownership" checked="checked" value="1" id="oYes">是
						<input type="radio" name="ownership" value="0" id="oNo">否
					</div>
			</form>
		</div>

	</body>

</html>