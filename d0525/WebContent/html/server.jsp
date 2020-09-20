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
		int num = Integer.parseInt(request.getParameter("score"));
	
		if(num>=90) {
			out.println("당신의 성적은 A 입니다." + "<br>");
		} else if(num>=80) {
			out.println("당신의 성적은 B 입니다." + "<br>");
		} else if(num>=70) {
			out.println("당신의 성적은 C 입니다." + "<br>");
		}
	%>
</body>
</html>