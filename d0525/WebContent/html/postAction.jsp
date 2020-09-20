<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>post로 넘어온 값</h2>
<hr>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name"); // 이름
	String id = request.getParameter("id"); // 학번
	String dept = request.getParameter("dept"); // 소속
	
	out.println("이름 : " +  name + "<br>");
	out.println("학번  : " + id + "<br>");
	out.println("소속 : " + dept + "<br>");
%>
<br><hr>
<!-- 내장 객체 -->
이름 : <%=name %><br>
학번 : <%=id %><br>
소속 : <%=dept %><br>
</body>
</html>