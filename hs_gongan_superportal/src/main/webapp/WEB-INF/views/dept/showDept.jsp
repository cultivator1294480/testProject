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
		<script type="text/javascript" src="/hs_gongan_superportal/js/dept/showDept.js"></script>
		<script type="text/javascript" src="/hs_gongan_superportal/js/jquery-ui.min.js"></script>
		<link href="/hs_gongan_superportal/resources/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="/hs_gongan_superportal/resources/theme/common.css" rel="stylesheet">

	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			
			<tr>
				<td height="56">
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="21"></td>
							<td>
								<form id="quaryFrom" method="post">
									部门编号：<input  value="${pageSupport.search['code']}" type="text" name="code" id="searchCode" placeholder="请输入..." />&nbsp;&nbsp; 
									部门名称：<input value="${pageSupport.search['deptName']}" type="text" name="deptName" id="searchDeptName" placeholder="请输入..." />&nbsp;&nbsp;
									<span onclick="jumpTarget(1)" id="btSelect" class="btn-current label-filter"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>&nbsp;查询</span>&nbsp;&nbsp;
									<span id="openAddDept" class="btn-current label-filter"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;添加</span>&nbsp;&nbsp;
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
								<div align="center"><span class="STYLE10">序号 </span></div>
							</th>
							<th width="10%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">部门编号</span></div>
							</th>
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">部门名称</span></div>
							</th>
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">备注</span></div>
							</th>
							<th width="5%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">版本</span></div>
							</th>
							<th width="13%" height="25" bgcolor="d3eaef" class="STYLE6">
								<div align="center"><span class="STYLE10">操作</span></div>
							</th>
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
										<span class="STYLE10">${item.code}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.name}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.remark}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span class="STYLE10">${item.version}</span>
									</div>
								</td>
								<td width="20" height="20" bgcolor="#FFFFFF" class="STYLE19">
									<div align="center">
										<span title="修改" class="glyphicon glyphicon-pencil" aria-hidden="true" onclick="updateDeptDialog('${item.id}')"></span>
										<span title="删除" class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deleteDept('${item.id}','${item.name}')"></span>
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
															<a href="javascript:void(0)" onclick="jumpTarget(${pageSupport.pageNo-1})">前一页</a>
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
														<input type="button"  value="go" class="tz" title="最大页数为：<c:out value='${pageSupport.totalPageCount}'/>" />
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
		<div id="addDetpDialog" title="添加部门信息">
			<form class="dlgform" action="" id="detpForm">
				<input type="hidden" id="id" name="id" />
				<div><span>部门编号：</span><input id="code" name="code" class="subDetpForm" /></div>
				<div><span>部门名称：</span><input id="name" name="name" class="subDetpForm" /></div>
				<div><span>备注：</span><input id="remark" name="remark" class="subDetpForm" /></div>
				<div><span>版本：</span><input id="version" name="version" class="subDetpForm" /></div>
			</form>
		</div>

		<form method="post" enctype="multipart/form-data" action="/hs_gongan_superportal/dept/addDepts">
			&nbsp;&nbsp;&nbsp;&nbsp;请选择部门信息文件：<input type="file" name="excelFile">
			<button type="submit" class="btn-current">导入</button>
		</form>
		<div>
<!-- 			<a href="/hs_gongan_superportal/util/downloadExcelTemplate?fileName=部门信息-tb_d_gzdwdm.xlsx ">下载部门信息模板 </a> -->
			<input type="button" onclick="downloadExcelTemplate('-tb_d_gzdwdm.xlsx')" value="下载部门信息模板"/>
		</div>
		 
	</body>

</html>