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
		<!--<link rel="stylesheet" type="text/css" href="/hs_gongan_superportal/css/pagelimit.css" />-->
		<script type="text/javascript" src="/hs_gongan_superportal/js/user/showUser.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-ui.min.js"></script>
		<style type="text/css">
			.nameInfor {
				width: 40px;
			}
		</style>

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
									警号：<input value="${pageSupport.search['jh']}" type="text" name="jh" id="searchJh" placeholder="请输入..." />&nbsp;&nbsp; 警员姓名：
									<input value="${pageSupport.search['jyxm']}" type="text" name="jyxm" id="searchJyxm" placeholder="请输入..." />&nbsp;&nbsp; 身份证号：
									<input value="${pageSupport.search['sfzh']}" type="text" name="sfzh" id="searchSfzh" placeholder="请输入..." />&nbsp;&nbsp;
									<span   onclick="jumpTarget(1)" id="btSelect" class="btn-current label-filter"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;查询</span>&nbsp;&nbsp;
									<span id="openAddUser" class="btn-current label-filter"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</span>&nbsp;&nbsp;
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
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">序号</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">用户名</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">警号</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">警员姓名</span></div>
							</th>
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">性别</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">身份证号</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">出生日期</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">藉贯</span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">民族</span></div>
							</th>
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">政治面貌</span></div>
							</th>
							<th width="15%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">操作</span></div>
							</th>
						</tr>
						<c:forEach items="${pageSupport.items}" var="item" varStatus="_status">
							<tr>
								<td bgcolor="#FFFFFF" class="STYLE6">
									<div align="center">
										<span class="STYLE10">${_status.index+1}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.loginId}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.jh}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.jyxm}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.xb_value}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.sfzh}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.csrq}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.jg_value}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.mz_value}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.zzmm_value}</span>
									</div>
								</td>
								<td bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<!--<input type="button" value="修改" onclick="updateUserDialog(${item.userId})" />
										<input type="button" value="删除" onclick="deleteUser(${item.userId},'${item.jyxm}')" />
										<input type="button" value="角色管理" onclick="showRole(${item.userId})" />-->
										<span title="修改" class="glyphicon glyphicon-pencil" aria-hidden="true" onclick="updateUserDialog(${item.userId})"></span>
										<span title="删除" class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deleteUser(${item.userId},'${item.jyxm}')"></span>
										<span title="角色管理" class="glyphicon glyphicon-cog" aria-hidden="true" onclick="showRole(${item.userId})"></span>
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
														<a  href="javascript:void(0)" onclick="jumpTarget(1)">首页</a>
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
														<li class="active"><a class="a">${pageNo}</a></li>
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

													<li style="line-height: 20px">
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

		<!--添加部门信息dialog -->
		<div id="userDialog" title="添加警员信息">
			<form class="dlgform" action="" id="userForm">
				<input type="hidden" id="userId" name="userId" />
				<div><span>登陆帐号：</span><input id="loginId" name="loginId" class="subUserForm" /></div>
				<div><span>警号：</span><input id="jh" name="jh" class="subUserForm" /></div>
				<div><span>警员姓名：</span><input id="jyxm" name="jyxm"class="subUserForm" /></div>
				<div><span>性别：</span>
					<input id="man" type="radio" checked="checked" name="xb" value="1"/>男
					<input id="woman" type="radio" name="xb" value="2" />女
				</div>
				<div><span>身份证号：</span><input id="sfzh" name="sfzh" class="subUserForm" /></div>
				<div><span>出生日期：</span>
					<input type="text" id="csrq" name="csrq" class="subUserForm dateInfo" />
				</div>
				<div><span>籍贯：</span>
					<select id="jg" name="jg" class="subUserForm">
					</select>
				</div>
				<div><span>民族：</span>
					<select id="mz" name="mz" class="subUserForm">
					</select>
				</div>
				<div><span>政治面貌：</span>
					<select id="zzmm" name="zzmm" class="subUserForm">
					</select>
				</div>
				<div><span>工作单位：</span>
					<select id="gzdwdm" name="gzdwdm" class="subUserForm">
					</select>
				</div>
				<div><span>参加工作时间：</span>
					<input type="text" id="cjgzsj" name="cjgzsj" class="subUserForm dateInfo" />
				</div>
				<div><span>参加公安工作时间：</span>
					<input type="text" id="cjgagzsj" name="cjgagzsj" class="subUserForm dateInfo" />
				</div>
				<div><span>职务名称：</span>
					<select id="zwmc" name="zwmc" class="subUserForm">
					</select>
				</div>
				<div><span>职务说明：</span><input id="zwsm" name="zwsm" class="subUserForm" /></div>
				<div><span>批准任职日期：</span>
					<input id="pzrzrq" name="pzrzrq" class="subUserForm dateInfo" />
				</div>
				<div><span>警衔：</span>
					<select id="jyyx" name="jyyx" class="subUserForm">
					</select>
				</div>
				<div><span>授衔日期：</span>
					<input type="text" id="sjxrq" name="sjxrq" class="subUserForm dateInfo" />
				</div>
				<div><span>办公室电话：</span><input id="bgsdhhm" name="bgsdhhm" class="subUserForm" /></div>
				<div><span>电话号码：</span><input id="sjhm" name="sjhm" class="subUserForm" /></div>
				<div><span>是否可用：</span>
					<input id="notLock" type="radio" checked="checked" name="islock" value="1" />是
					<input id="lock" type="radio" name="islock" value="0" />否
				</div>
				<div>
					<span class="nameInfor">用户使用期限：</span>
					<input id="endTime" name="endTime" class="subUserForm" />
				</div>
				<div>
				</div>
			</form>
		</div>

		<form method="post" enctype="multipart/form-data" action="/hs_gongan_superportal/user/addUsers">
			&nbsp;&nbsp;&nbsp;&nbsp;请选择用户信息文件：<input type="file" name="excelFile">
			<button type="submit" class="btn-current">导入</button>
		</form>
		<input type="button" onclick="downloadExcelTemplate('-tb_sys_user.xlsx')" value="下载用户信息模板"/>
	</body>

</html>