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
<br><br>
	<h1 align="center">회원 가입 등록 화면</h1>
	<table border="1">
		<tr>
			<th width="300px">아이디</th>
			<td width="500px">
				<input type="text" name="id" size="30">(마지막 번호+1)
			</td>
		</tr>
		<tr>
			<th>성 명</th>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td>
				<input type="password" name="password_ok">
			</td>
		</tr>
		<tr>
			<th>성 별</th>
			<td>
				<input type="radio" name="gender" value="1" checked>남성
				<input type="radio" name="gender" value="2">여성
			</td>
		</tr>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>