<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">수당 정보 등록</h1>
<form method="post" action="insert_sudang_ok.jsp">
	<table border="1">
		<tr>
			<th>사원정보</th>
			<td><input type="text" name="id"></td>
			<th>이름</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>가족수당</th>
			<td><input type="text" name="gajok"></td>
			<th>직책수당</th>
			<td><input type="text" name="jikchak"></td>
		</tr>
		<tr>
			<th>근속수당</th>
			<td><input type="text" name="gunsok"></td>
		</tr>
		<tr>
			<th>기타수당</th>
			<td><input type="text" name="gitasudang"></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록">
				<input type="submit" value="저장">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>