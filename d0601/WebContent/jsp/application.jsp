<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>application 객체 사용</h2>
<%
	String value = "apple";
	application.setAttribute("fruit", value);
	String fruit = application.getAttribute("fruit").toString();
%>
application 객체에 저장된 값 : <%= fruit %>
</body>
</html>