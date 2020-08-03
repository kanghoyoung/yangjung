<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
	<table border="1">
		<tr>
			<th>no</th>
			<th>등급</th>
			<th>급여</th>
		</tr>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>