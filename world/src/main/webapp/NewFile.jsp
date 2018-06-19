<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	js代码 Java代码
	<script type="text/javascript">
		function selectAll() {
			for (var i = 0; i < document.form1.selectList.length; i++) {
				var until = document.form1.selectList[i];
				until.checked = document.form1.selected.checked;
			}
		}
		function testSelect() {
			var select = false;
			for (var i = 0; i < document.form1.selectList.length; i++) {
				if (document.form1.selectList[i].checked) {
					select = true;
					break;
				}
			}
			if (!select) {
				alert("你还没选择要删除的记录！");
			}
			return select;
		}
		function ss() {
			alert("hello");
		}
	</script>
	Java代码 html: Java代码
	<pre name="code" class="java">
		<form action="/deleted.jspx?method=listDelete" name="form1" id="form1" onsubmit="return testSelect();" method="post"> 
 <table border="1" class="font"> 
       <tr>
					<td><input type="checkbox" id="selected" name="selected" onclick="selectAll();" />序号</td>
					<td width="10%">问题摘要</td>
					<td>问题类型</td>
					<td> 评审意见</td> 
     				<td>操作</td> 
     </tr> 
    <#list list as pro> 
     <tr> 
     <td><input id="selectList" name="selectList" type="checkbox" value="${pro.proId}" />${pro_index+1}</td> 
     <td>${pro.proDescrible}</td> 
     <td>${pro.proType }</td> 
     <td>${pro.review.content}</td> 
     <td> 
        <a href="/query.jspx?proId=${pro.proId}">查看</a> 
        <a href="/delete.jspx?proId=${pro.proId}" onclick='return(confirm("确定删除?"));'>删除</a> 
     </td> 
     </tr> 
    </#list> 
   </table> 
	</pre>
	
	
	
	
</body>
</html>