<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>世尊家具综合管理系统</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script language="javascript">
function login()
{
	var name=document.getElementById("name").value;
	var pwd=document.getElementById("pwd").value;
	if(name==""){
			alert("请输入用户名称！");
			document.getElementById("name").focus();
			return false;
		}
	if(pwd==""){
			alert("请输入用户密码！");
			document.getElementById("pwd").focus();
			return false;
		}
	if(name=="admin" && pwd=="admin")
	{	
		location.href="${pageContext.request.contextPath}/index.jsp";
	  return true;
	}
}
</script>
</head>
<body style="background:#000;">
	<div class="png login_logo"><img src="images/logo_03.png" alt=""></div>
	<div class="login">
		<div class="login_1"><input name="name" id="name" type="text"></div>
		<div class="login_2"><input name="pwd" id="pwd" type="password"></div>
		<div class="login_3"><input name="checkbox" id="checkbox" type="checkbox" value="1"></div>
		<div class="login_4 png"><input type="image" src="images/login_08.jpg" onClick="return login()"/></div>
	</div>
</body>
</html>
