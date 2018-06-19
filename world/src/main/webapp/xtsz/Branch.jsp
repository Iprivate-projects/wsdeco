<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>部门管理</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript">
function shanchu(id, pageno)
{
	var  str = confirm("是否确定删除栏目？");
	if(str == true)
	{
		
		location.href="${pageContext.request.contextPath}/test/deleteBranch.do?id=" + id+"&pageno=" + pageno;
		
	}
	
}
//声明两个变量
  var childWin;
  var timer;
  //打开一个子窗口
  	function openChildWindow(uri, width, height){
		//获取到打开的子窗口对象
		childWin=window.open(uri,null,"width=" + width + ",height=" + height);
		//定义一个定时器，每一秒钟调用一次reloadCurrentPage()函数
		timer=setInterval("reloadCurrentPage()", 1000);
	} 
	//当子窗口关闭时刷新当前页面
	function reloadCurrentPage(){
	if(childWin.closed == true){
		//消除定时器
		clearInterval(timer);
		//刷新当前页面
		self.location.reload(true);
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
		<li><a href="../Branch.jsp"><p>部门管理</p></a></li>
		<li><a href="../xtsz/EaDoc.jsp"><p>审批文档流程管理</p></a></li>
		<li><a href="../xtsz/Role.jsp"><p>角色管理</p></a></li>
		<li><a href="../xtsz/Power.jsp"><p>权限管理</p></a></li>
		<li><a href="../xtsz/XTCS.jsp"><p>系统参数设置</p></a></li>
		<li><a href="../xtsz/NormalManage.jsp"><p>常规功能管理</p></a></li>
		<li><a href="../xtsz/CustomManage.jsp"><p>自定义功能管理</p></a></li>
	</ul>
	</div>
	<div class="mian_b">
	<div class="mian_b1">
		<a href="../xtsz/AddBranch.jsp" title="添加"><p class="mian_b1_a1"></p></a>
		<a href="#" onClick="shanchu()"></a>
		<p class="mian_b1_sousuo"><input name="" type="text"></p>
		<a href="#" title="搜索"><p class="mian_b1_a3"></a>
	
	  <tabel width="95%" border="0" cellpadding="0" cellspacing="0" class="mian_b1">
	  <tr>
	  <c:choose>
	  <%--当前就一页的情况 --%>
	  	<c:when test="${page.totalPages == 1 }">
	  		<td><a href="#" title="最后"><p class="mian_b1_a4"></p></a><a href="#" title="下一页"><p class="mian_b1_a5"></p></a><a href="#" title="上一页"><p class="mian_b1_a6"></p></a>　<a href="#" title="最前"><p class="mian_b1_a7"></p></a></td>
	  	</c:when>
	  	<%--当前页为第一页的情况 --%>
	  	<c:when test="${page.pageno == 1 }">
	  		<td><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=${page.totalPages}" title="最后"><p class="mian_b1_a4"></p></a><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=${page.pageno+1}" title="下一页"><p class="mian_b1_a5"></p></a><a href="#" title="上一页"><p class="mian_b1_a6"></p></a><a href="#" title="最前"><p class="mian_b1_a7"></p></a>　</td>
	  	</c:when>
	  	<%--当前页为最后一页的情况 --%>
	  	<c:when test="${page.pageno == page.totalPages }">
	  		<td><a href="#" title="最后"><p class="mian_b1_a4"></p></a><a href="#" title="下一页"><p class="mian_b1_a5"></p></a><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=${page.pageno - 1}" title="上一页"><p class="mian_b1_a6"></p></a><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=1" title="最前"><p class="mian_b1_a7"></p></a>　</td>
	  	</c:when>
	  	<%--当前页为中间的情况 --%>
	  	<c:otherwise>
	  		<td><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno= ${page.totalPages}" title="最后"><p class="mian_b1_a4"></p></a>　<a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=${page.pageno + 1}" title="下一页"><p class="mian_b1_a5"></p></a><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno= ${page.pageno - 1}" title="上一页"><p class="mian_b1_a6"></p></a><a href="${pageContext.request.contextPath}/test/queryBranch.do?pageno=1"" title="最前"><p class="mian_b1_a7"></p></a></td>
	  	</c:otherwise>
	  	</c:choose>
	  </tr>
	  </tabel>
	
		
			<%-- <a href="" title="最前"><p class="mian_b1_a4"></p>
			<a href="#" title="上一页"><p class="mian_b1_a5"></a>
			<a href="#" title="下一页"><p class="mian_b1_a6"></a>
			<a href="#" title="最后"><p class="mian_b1_a7"></a> --%>
		
	</div>
	
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg">
	<tr>
		<td width="3%" class="mian_b_bg_lm"><input type="checkbox" id="ckb" onclick="seltAll()" />&nbsp;</td>
		<td width="11%" class="mian_b_bg_lm"><span></span></td>
		<td width="13%" class="mian_b_bg_lm"><span></span>部门名称</td>
		<td width="10%" class="mian_b_bg_lm"><span></span>部门简称</td>
		<td width="37%" class="mian_b_bg_lm"><span></span>备注</td>
		<td colspan="2" class="mian_b_bg_lm" ><span></span>  共 ${page.pageno}/${page.totalPages} 页 ${page.totalRows}</td>
	</tr>
	<c:forEach items="${page.dates}" var="department">
	<tr>
		<td><input type="checkbox" name="chckBox" value="${department.id}"/>&nbsp;</td>
		<td></td>
		<td>${department.name}</td>
		<td>${department.shortName}</td>
		<td>${department.remark}</td>
		<td width="8%" class="mian_b_icon_01"><a href="#" onClick="openChildWindow('../test/modifyPage.do?id=${department.id}',670,260)">编辑</a></td>
		<td width="8%" ><a href="#" onClick="shanchu(${department.id},${page.pageno })">删除</a></td>
	</tr>
	</c:forEach>
	<%-- <tr>
		<td><input name="" type="checkbox" value="">&nbsp;</td>
		<td>1001 </td>
		<td>人事部</td>
		<td>HR</td>
		<td>主管公司人事</td>
		<td width="8%" class="mian_b_icon_01"><a href="AddBranch.html">编辑</a></td>
		<td width="8%" class="mian_b_icon_02"><a href="BranchDetail.html">查看</a></td>
	</tr> --%>
	<tr>
		<td width="3%" class="mian_b_bg_lm"></td>
		<td width="11%" class="mian_b_bg_lm"><span></span></td>
		<td width="13%" class="mian_b_bg_lm"><span></span>部门名称</td>
		<td width="10%" class="mian_b_bg_lm"><span></span>部门简称</td>
		<td width="37%" class="mian_b_bg_lm"><span></span>备注</td>
		<td colspan="2" class="mian_b_bg_lm"><span></span></td>
	</tr>
</table>

	</div>
	</div>
</body>
</html>