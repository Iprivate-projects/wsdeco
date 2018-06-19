<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	function ckAll() {
		var flag = document.getElementById("allChecks").checked;//全选/反选的选择框id
		var cks = document.getElementsByName("check");//选中的复选框
		for (var i = 0; i < cks.length; i++) {
			cks[i].checked = flag;
		}
	}

	function shanchu() {
	
		if (!confirm("确定要删除这些部门吗？")) {
			return;
		}
		var cks = document.getElementsByName("check");
		var str = "";
		//拼接所有的部门id
		for (var i = 0; i < cks.length; i++) {
			if (cks[i].checked) {
				str += "id=" + cks[i].value + "&";
			}
		}
		//去掉字符串末尾的‘&'
		str = str.substring(0, str.length - 1);
		location.href = "../test/deleteBranch.do?id=" + str;
		//rel = "external nofollow" + str;
	}
</body>
</html>