<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>while문으로 1부터 100까지 합 구하기</h1>

<%
	int i=1, sum=0;
	while(i<=100) {
		sum=sum+i;
		i++;
	}
	out.println("1부터 100까지의 합 : " + sum + "<br><hr>");
%>

1부터 100까지의 합 : <%=sum %> <br>
<hr>

</body>
</html>