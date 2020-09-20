<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>출력할 별의 줄 수를 입력하세요.</h1>

<%
	//int num = 0;
	//if(request.getParameter("num")!=null) {
		//num = Integer.parseInt(request.getParameter("num"));
	//}
	
	//out.println("<table border=1><tr><td>1</td></tr></table>");
%>

<form method="post" action="for1.jsp">
	<input type="text" name="num2">
	<input type="submit" value="입력">
</form>


<!-- 자기자신 for2.jsp불러오는것도 가능 -->
<!-- 
<form name="input" method="post" action="for2.jsp">
	<input type="text" name="num">
	<input type="submit" value="입력">
</form>
 -->
</body>
</html>