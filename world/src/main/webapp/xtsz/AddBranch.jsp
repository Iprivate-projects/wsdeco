<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加部门</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script>
	function tianjia()
	{
		
			document.getElementById("form1").action="../test/addBranch.do";
			
	}
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
			<ul>
				<li><a href="Branch.jsp"><p>部门管理</p></a></li>
				<li><a href="EaDoc.jsp"><p>审批文档流程管理</p></a></li>
				<li><a href="Role.jsp"><p>角色管理</p></a></li>
				<li><a href="Power.jsp"><p>权限管理</p></a></li>
				<li><a href="XTCS.jsp"><p>系统参数设置</p></a></li>
				<li><a href="NormalManage.jsp"><p>常规功能管理</p></a></li>
				<li><a href="CustomManage.jsp"><p>自定义功能管理</p></a></li>
			</ul>
		</div>
		<div class="mian_b">
	<form name="form1" id="form1" method="post" action="">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">添加部门</td>
				</tr>
				
				<tr>
					<td>&nbsp;</td>
					<td valign="top">部门名称：</td>
					<td><input type="text" class="input_01" name="name" id="name"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">部门简称：</td>
					<td><input type="text" class="input_01" name="shortName" id="shortName"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td><input type="text" class="input_01" name="remark" id="remark"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					
				</tr>
					</table>
			
						<div align="center">
							<input type="image" src="..\images\bnt_03.gif" onClick="tianjia()"/>
						</div>
		</form>
					<td>&nbsp;</td>
				        <div align="center">
							<a href="Branch.jsp"><input type="image" src="..\images\bnt_05.gif" /></a>
						</div>
		</div>
	</div>
	
</body>
</html>