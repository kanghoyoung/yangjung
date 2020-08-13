<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<br><br><br>
<h1 align="center">인사관리 퇴사처리 화면</h1>
<form name="form" method="post" action="delete_ok.jsp">
	<table border="1">
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>사원번호</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="삭 제">
				<input type="button" value="취 소" onclick="location.href='index.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>