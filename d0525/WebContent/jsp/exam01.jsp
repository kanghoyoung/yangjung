<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html주석 -->
<%-- jsp주석 소스보기에서 안보임 --%>
<%
	int age = 18;
	int num1 = 100, num2 = 200;
	if (age >= 18) {
		out.println("성년입니다");
	} else {
		out.println("미성년입니다");
	}
%>
<br>

100 + 200 = <%= num1 + num2 %>

</body>
</html>