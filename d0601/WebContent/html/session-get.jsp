<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>session 정보 가져오기</h2>
현재 session id는<%= session.getAttribute("id") %>입니다.<br>
현재 session 비밀번호는<%= session.getAttribute("pwd") %>입니다.<br>
</body>
</html>