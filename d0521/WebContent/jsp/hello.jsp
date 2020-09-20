<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>Hello world</h1>
<!-- jsp -->
<%
int num1 = 100;
int num2 = 200;
int sum = 0;
for(int i=2; i<=9; i++) {
	%>7*<%=i %>=<%=7*i %><br>
<% 
}
%>

<%!

%>

1부터 10까지 합: <%=sum %><br>
<%@ include file="aaaaa.jsp" %>

</body>
</html>