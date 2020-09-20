<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form에서 넘어온 데이터 처리</h1>

<%
	String id = request.getParameter("id"); // 폼에서 넘어온 데이터를 받아오는 거
	String password = request.getParameter("password");
	
	// jsp에서 출력
	out.println("id : " + id + "<br>");
	out.println("password : " + password + "<br>");
	out.println("----------------------");
%>

<br>
<!-- html에서 출력 -->
id = <%=id %><br>
password = <%=password %>
</body>
</html>