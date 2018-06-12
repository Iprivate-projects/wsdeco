<%@page contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>无标题页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}${road}/css/index.css">
<style type="text/css">
.zlh{background:url(${pageContext.request.contextPath}${road}/images/bnt_03.gif) no-repeat;width:80px;height:22px;border:0;cursor:pointer;vertical-align:middle;}
</style>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=1"><p>人员信息</p></a></li>
				<li><a href="RSEventApply.html"><p>招聘申请</p></a></li>
				<li><a href="RSEventApply.html"><p>职位调整申请</p></a></li>
				<li><a href="RSEventApply.html"><p>离职申请</p></a></li>
				<li><a href="RSEventApply.html"><p>培训申请</p></a></li>
				<li><a href="ExaAppdocument.html"><p>公文审批</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="4" class="mian_b_bg_lm">添加员工信息</td>
				</tr>
			</table>
			<form action="${pageContext.request.contextPath}/hr/handlers/Addhr.do" method="post">
				<table width="100%" border="1" cellpadding="0" cellspacing="0"
					class="mian_b_bg_xz">
					<tr style="background-color: White; height: 30px">
						<td colspan="8">基本信息</td>
					</tr>
					<tr style="background-color: White; height: 30px">
						<td style="width: 8%;" align="center">工号</td>
						<td style="width: 8%" align="center">姓名</td>
						<td style="width: 8%" align="center">性别</td>
						<td style="width: 8%" align="center">员工职位</td>
						<td style="width: 8%" align="center">电话</td>
						<td style="width: 8%" align="center">所属部门</td>
						<td style="width: 8%" align="center">入职时间</td>
						<td style="width: 8%" align="center">状态</td>
					</tr>
					<tr style="background-color: White; height: 30px">
						<td><input name="id" type="text"
							style="border: 0px; width: 100px"></td>
						<td><input name="name" type="text"
							style="border: 0px; width: 100px"></td>
						<td><select name="male" style="width: 80px">
								<option>男
								<option>女
						</select></td>
						<td><input name="position" type="text"
							style="border: 0px; width: 100px"></td>
						<td><input name="tel" type="text"
							style="border: 0px; width: 100px"></td>
						<td><input name="depatrment" type="text"
							style="border: 0px; width: 100px"></td>
						<td><input name="year" type="text"
							style="border: 0px; width: 30px"> - 
							<input name="month" type="text"
							style="border: 0px; width: 30px"> - 
							<input name="day" type="text"
							style="border: 0px; width: 30px">
							</td>
						<td><select name="state" style="width: 80px">
								<option>在职
								<option>离职
						</select></td>
					</tr>
					
					<tr style="background-color: White; height: 30px">
						<td align="center" colspan="8">
							<input type="submit" value="" class="zlh" 
							 />
						<%-- 	<a href="${pageContext.request.contextPath}/hr/handlers/Addhr.do">
							<img src="${pageContext.request.contextPath}${road}\images\bnt_03.gif" style="margin-right: 10px;"	width="80" height="22"></a> --%>
							<a href="${pageContext.request.contextPath}/hr/handlers/Readhr.do?pageno=1">
							<img src="${pageContext.request.contextPath}${road}\images\bnt_05.gif" alt=""style="vertical-align:middle;" width="80px" height="22px"></a>
						</td>
					</tr>
					<c:if test="${insertInputError}">
						<tr><td>您输入的信息有误，请重新输入</td></tr>
					</c:if>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>