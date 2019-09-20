<%@page import="java.util.HashMap"%>
<%@page import="test.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String msg = "아이디 또는 비밀번호를 확인하세요";
	String url = "login.jsp";

	String id = request.getParameter("id");
	
	HashMap<String, MemberDTO> map = new HashMap();
	
	map.put("aaa",new MemberDTO("aaa","1111","황진욱"));
	map.put("bbb",new MemberDTO("bbb","2222","신명진"));
	map.put("ccc",new MemberDTO("ccc","3333","황현진"));
	map.put("ddd",new MemberDTO("ddd","4444","이강표"));
	
	
	if(map.containsKey(id) &&
			request.getParameter("pw").equals(map.get(id).getPw())){
		
		msg = map.get(id).getName()+"님 로그인 성공";
		url = "Detail.jsp";
		
		session.setAttribute("pid", map.get(id).getId());
		session.setAttribute("ppw", map.get(id).getPw());
		session.setAttribute("pname", map.get(id).getName());
		
		
	}
	

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginReg</title>
</head>
<body>
</body>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
</html>