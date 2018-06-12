<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script>
	function add()
	{
		
		document.getElementById("form1").action="../run/addNotice.do";
			
	}
</script>
<head>
<title>添加公告</title>
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
<form name="form1" id="form1" method="post" action="">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加公告</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td width="10%" valign="top">公告标题：</td>
					<td width="55%"><input type="text" class="input_01"
						name="title" id="title"/></td>
					<td width="35%">&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">有效期：</td>
					<td><input type="text" class="input_01"
							name="time" id="time"/></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
					
						<div align="center">
							<input type="image" src="..\images\bnt_03.gif" onClick="add()"/>
						</div>
						<div align="center">
							
							
							<img src="..\images\bnt_05.gif" alt="" width="80" height="22" onclick="javascript:window.history.go(-1);">
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	
</body>
</html>
<script src="/common.js"></script>