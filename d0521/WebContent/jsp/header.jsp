<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#logo {
	float: left;
	vertical-align: middle;
	margin: 10px 0 0 20px;
	color: black;
	font-size: 48px;
}
.right {
	float:right;
}
</style>
</head>
<body>
<div class="header">
	<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>
	<span class="right" style="padding: 20px 10px">
	
	<form method="post" action="login.jsp">
	<fieldset data-role="fieldcontain">
		<label for="ID">회원 ID:</label> 
		<input type="text" id="id" name="id" size="10" maxlength="10" required="required" />
		
		<label for="pswd">비밀번호:</label>
		<input type="password" id="passwd" name="passwd" size="10" maxlength="10" required="required" />
		
		<button type="submit" data-role="button" data-inline="true">로그인</button>
		<a href="join.jsp">회원가입</a>
		</fieldset>
		
	</form>
	</span>
</div>
</body>
</html>