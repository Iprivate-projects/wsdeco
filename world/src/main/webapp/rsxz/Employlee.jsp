<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="../../css/index.css">
	<script language="javascript" type="text/javascript">
		function click1(num) {

			if (document.getElementById(num).style.display == "block") {
				document.getElementById(num).style.display = "none";
			} else {
				document.getElementById(num).style.display = "block";

			}

		}
	</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=1"><p>人员信息</p></a></li>
				<li><a href="../../../rsxz/RSEventApply.html"><p>招聘申请</p></a></li>
				<li><a href="../../rsxz/RSEventApply.html"><p>职位调整申请</p></a></li>
				<li><a href="../../rsxz/RSEventApply.html"><p>离职申请</p></a></li>
				<li><a href="../../rsxz/RSEventApply.html"><p>培训申请</p></a></li>
				<li><a href="../../rsxz/ExaAppdocument.html"><p>公文审批</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="../../rsxz/AddEmploylee.jsp" title="添加"><p
						class="mian_b1_a1"></p></a> 
				<form id="search"action="${pageContext.request.contextPath}/hr/handlers/Queryhr.do">
					<p class="mian_b1_sousuo">
						<input name="content" type="text">
					</p>
				</form>
				<a href="javascript:search.submit()" title="搜索"><p class="mian_b1_a3"></p></a>
<!-- 				<p class="mian_b1_a9">
					<a href="#" onclick="click1('search')">高级搜索>></a>
				</p> -->
				<a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=${page.maxPages}" title="最后"><p class="mian_b1_a4"></p></a>
				<c:choose>
					<c:when test="${page.pageno ne page.maxPages}">
						<a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=${page.pageno+1}" title="下一页"><p class="mian_b1_a5"></p></a>				
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${page.pageno != 1}">
						<a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=${page.pageno-1}" title="上一页"><p class="mian_b1_a6"></p></a> 
					</c:when>
				</c:choose>
				<a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=1" title="最前"><p class="mian_b1_a7"></p></a>
			</div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr id="search" style="display: none;">
					<td colspan="8"
						style="height: 35px; background-color: #DBDBDB; margin-left: 20px">
						<select>
							<option>性别
								<option>男
									<option>女
					</select>&nbsp; <select>
							<option>所属部门
								<option>软装部
									<option>人事部
					</select>&nbsp; <select>
							<option>状态
								<option>在职
									<option>离职
					</select>&nbsp; <input name="" type="text" value="工号、姓名、职位、手机"
						class="input_03">&nbsp;<input name="" type="text"
							value="起始日期" class="input_03">&nbsp;-&nbsp;<input name=""
								type="text" value="结束日期" class="input_03">
					</td>
					<td colspan="3" style="height: 35px; background-color: #DBDBDB;">
						<a href="#" title="高级搜索"><p class="mian_b1_a8"
								onclick="click('search');"></p></a>
					</td>
				</tr>
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""	type="checkbox" value="">&nbsp; </td>
					<td width="10%" class="mian_b_bg_lm"><span></span>工号</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>员工姓名</td>
					<td width="5%" class="mian_b_bg_lm"><span></span>性别</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>员工职位</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>手机</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>所属部门</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>入职时间</td>
					<td width="10%" class="mian_b_bg_lm"><span></span>状态</td>
					<td colspan="2" class="mian_b_bg_lm"><span></span>操作</td>
				</tr>
				<c:forEach items="${page.datas}" var="person"> 
					<tr>
						<td><input name="" type="checkbox" value="">&nbsp; </td>
						<td>${person.id}</td>
						<td>${person.name}</td>
						<c:if test="${person.male}">
							<td>男</td>
						</c:if>
						<c:if test="${!person.male}">
							<td>女</td>
						</c:if>
						<td>${person.position}</td>
						<td>${person.tel}</td>
						<td>软装部</td>
						<td>
							<fmt:formatNumber value="${person.time/10000}" pattern="##" minFractionDigits="0" />
							-
							<fmt:formatNumber value="${person.time%10000/100}" pattern="##" minFractionDigits="0" />
							-
							<fmt:formatNumber value="${person.time%100}" pattern="##" minFractionDigits="0" />
						</td>
						<c:if test="${person.state}">
							<td>在职</td>
						</c:if>
						<c:if test="${!person.state}">
							<td>休息</td>
						</c:if>
						<td width="5%" class="mian_b_icon_01"><a
							href="${pageContext.request.contextPath}/hr/handlers/Check.do?id=${person.id}">编辑</a></td>
						<td width="5%" class="mian_b_icon_02"><a
							href="${pageContext.request.contextPath}/hr/handlers/Delete.do?id=${person.id}">删除</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>