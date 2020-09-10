<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm" method="get" action="/projectDAO/add">
		<p><input type="text" name="no" placeholder="회원정보"></p>
		<p><input type="text" name="name" placeholder="이름"></p>
		<p><input type="text" name="email" placeholder="이메일"></p>
		<p><input type="password" name="pwd" placeholder="비밀번호"></p>
		<p><input type="submit" value="회원가입"></p>
	</form>
</body>
</html>