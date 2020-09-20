<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>session 정보 설정</h2>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
%>
아이디는 <%= id %><br>
패스워드는<%= pass %><br>

<%
	session.setAttribute("id", id); // 속성의 값 설정 (setAttribute("문자열", 객체))
	session.setAttribute("pwd", pass);
%>
<a href="session-get.jsp">session-get 페이지로 이동</a>

</body>
</html>