<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>编辑部门</title>
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script>
	function modify(id)
	{
		
		var str = confirm("是否确定修改栏目？");
		if(str == true)
		{
			document.getElementById("form1").action="../test/modifyBranch.do";
		}
	}
</script>
</head>
<body class="mian_bj">
	<div class="mian_top_01">
		<div class="mian_top_r"></div>
		<div class="mian_top_l"></div>
		<div class="mian_top_c">
		
		</div>
		<div class="mian_b">
	<form name="form1" id="form1" method="post" action="">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
				<tr>
					<td width="5%" class="mian_b_bg_lm">&nbsp;</td>
					<td colspan="3" class="mian_b_bg_lm">编辑部门</td>
				</tr>
				<input type="hidden" name="id" value="${department.id }"/>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">部门名称：</td>
					<td><input type="text" class="input_01" name="name" value="${department.name}"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">部门简称：</td>
					<td><input type="text" class="input_01" name="shortName" value="${department.shortName }"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td valign="top">备注：</td>
					<td><input type="text" class="input_01" name="remark" value="${department.remark}"></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					
				</tr>
					</table>
			
						<div align="center">
							<input type="image" src="..\images\bnt_03.gif" onClick="modify(${department.id})"/>
						</div>
		</form>
					<td>&nbsp;</td>
				        <div align="center">
							<input type="image" src="..\images\bnt_05.gif"  onClick="window.close()"/>
						</div>
		</div>
	</div>
	
</body>
</html>