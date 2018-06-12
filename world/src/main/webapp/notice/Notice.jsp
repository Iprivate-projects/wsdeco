<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
function shanchuNotice(id, pageno)
{
	var  str = confirm("是否确定删除栏目？");
	if(str == true)
	{
		
		location.href="${pageContext.request.contextPath}/run/deleteNotice.do?id=" + id+"&pageno=" + pageno;
		
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
<head>
<title>公告</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="NoticeClass.html">
						<p>公告类别</p>
				</a></li>
				<li><a href="Notice.html">
						<p>公告管理</p>
				</a></li>
				<li><a href="NoticeCount.html">
						<p>公告统计</p>
				</a></li>
				<li><a href="NoticeShow.html">
						<p>公告查看</p>
				</a></li>
			</ul>
		</div>
		<div class="mian_b">
			<div class="mian_b1">
				<a href="../notice/AddNotice.jsp" title="添加">
					<p class="mian_b1_a1"></p>
				</a><a href="#" title="删除">
					<p></p>
				</a>
				<p class="mian_b1_sousuo">
					<input name="" type="text">
				</p>
				<a href="#" title="搜索">
					<p class="mian_b1_a3"></p>
				 <tabel width="95%" border="0" cellpadding="0" cellspacing="0" class="mian_b1">
	  <tr>
	  <c:choose>
	  <%--当前就一页的情况 --%>
	  	<c:when test="${page.totalPages == 1 }">
	  		<td><a href="#" title="最后"><p class="mian_b1_a4"></p></a><a href="#" title="下一页"><p class="mian_b1_a5"></p></a><a href="#" title="上一页"><p class="mian_b1_a6"></p></a>　<a href="#" title="最前"><p class="mian_b1_a7"></p></a></td>
	  	</c:when>
	  	<%--当前页为第一页的情况 --%>
	  	<c:when test="${page.pageno == 1 }">
	  		<td><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=${page.totalPages}" title="最后"><p class="mian_b1_a4"></p></a><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=${page.pageno+1}" title="下一页"><p class="mian_b1_a5"></p></a><a href="#" title="上一页"><p class="mian_b1_a6"></p></a><a href="#" title="最前"><p class="mian_b1_a7"></p></a>　</td>
	  	</c:when>
	  	<%--当前页为最后一页的情况 --%>
	  	<c:when test="${page.pageno == page.totalPages }">
	  		<td><a href="#" title="最后"><p class="mian_b1_a4"></p></a><a href="#" title="下一页"><p class="mian_b1_a5"></p></a><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=${page.pageno - 1}" title="上一页"><p class="mian_b1_a6"></p></a><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=1" title="最前"><p class="mian_b1_a7"></p></a>　</td>
	  	</c:when>
	  	<%--当前页为中间的情况 --%>
	  	<c:otherwise>
	  		<td><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno= ${page.totalPages}" title="最后"><p class="mian_b1_a4"></p></a>　<a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=${page.pageno + 1}" title="下一页"><p class="mian_b1_a5"></p></a><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno= ${page.pageno - 1}" title="上一页"><p class="mian_b1_a6"></p></a><a href="${pageContext.request.contextPath}/run/seeNotice.do?pageno=1"" title="最前"><p class="mian_b1_a7"></p></a></td>
	  	</c:otherwise>
	  	</c:choose>
	  </tr>
	  </tabel>
			</div>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg">
				<tr>
					<td width="3%" class="mian_b_bg_lm"><input name=""
						type="checkbox" value=""></td>
					<td width="56%" colspan="2" class="mian_b_bg_lm">公告主题</td>
					<td width="25%" class="mian_b_bg_lm"><span></span>有效期</td>
					<td width="16%" class="mian_b_bg_lm" colspan="2">操作</td>
				</tr>
				<c:forEach items="${page.dates}" var="noticeBean">
				<tr>
					<td><input name="" type="checkbox" value=""></td>
					<td ></td>
					<td><span style="color: #307d74;">${noticeBean.title }</span></td>
					<td>${noticeBean.time}</td>
					
					<td width="8%">
						<div class="mian_b_icon_04">
							<a href="#" onClick="openChildWindow('../run/modifyPage.do?id=${noticeBean.id}',670,260)">编辑</a>
						</div>
					</td>
					<td width="8%" ><a href="#" onClick="shanchuNotice(${noticeBean.id},${page.pageno })">删除</a></td>
				</tr>
				</c:forEach>
				<tr>
					<td class="mian_b_bg_lm"><input name="" type="checkbox"
						value=""></td>
					<td colspan="2" class="mian_b_bg_lm">公告主题</td>
					<td class="mian_b_bg_lm"><span></span>有效期</td>
					<td class="mian_b_bg_lm" colspan="2">操作</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
<script src="/common.js"></script>