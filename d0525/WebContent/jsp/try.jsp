<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		int a = 0;
		int num = 100/a;
		out.println(num);
	} catch (Exception e) {
		out.println("예외가 발생" + e.getMessage() + "<br>");
	} finally {
		out.println("무조건 실행");
	}
	%>
</body>
</html>