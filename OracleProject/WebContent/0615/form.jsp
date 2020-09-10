<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function check(){
	if(document.form.id.value==""){
		alert("아이디를 입력하세요");
		document.form.id.focus();
	}else if(document.form.passwd.value==""){
		alert("비밀번호를 입력하세요");
		document.form.passwd.focus();
	}else if(document.form.name.value==""){
		alert("이름을 입력하세요");
		document.form.name.focus();
	}else{
		document.form.submit();
	}
}
</script>
<body>
<form method=post action=insert02_process.jsp>
<p>아이디:<input type="text" name="id"></p>
<p>비밀번호:<input type="password" name="passwd"></p>
<p>이름:<input type="text" name="name"></p>
<input type="button" value="등록" onclick="javascript:check()">
</form>
</body>
</html>