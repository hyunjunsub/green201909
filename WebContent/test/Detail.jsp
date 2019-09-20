<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
</head>
<body>
<table border="">
	<tr>
		<td colspan="2">로그인 정보</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=session.getAttribute("pid") %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=session.getAttribute("ppw") %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=session.getAttribute("pname") %></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="로그아웃" onclick="aaa()"/></td>
	</tr>
</table>
</body>
<% String url ="logout.jsp";  %>
<script>
function aaa() {
	location.href="<%=url%>";
}
</script>
</html>