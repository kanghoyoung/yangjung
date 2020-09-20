<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- page지시자 -->
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>클래스 예제</h1>

<%
	String str1 = "korea";
	String str2 = new String("KOREA");
%>
	<%=str1 %>을 대문자로 변환 <%=str1.toUpperCase() %>
	<br>
	<%=str2 %>을 소문자로 변환<%=str2.toLowerCase() %>
	<br><hr>
	<%
		out.println("HOUSE".equals("House"));
	%>
	<br><hr>
	<h1>Date예제</h1>
	<%
		Date d = new Date();
	%><br><hr>
	<%=d.getYear()+1900 %>-<%=d.getMonth()+1 %> -<%=d.getDate() %>
</body>
</html>