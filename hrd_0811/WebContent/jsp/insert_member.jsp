<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function insert_member() {
	if(document.insert_member_form.id.value == '') {
		alert('아이디를 입력하세요.');
		document.insert_member_form.id.focus();
		return;
	} else if (document.insert_member_form.name.value == '') {
		alert('이름을 입력하세요.');
		document.insert_member_form.name.focus();
		return
	} else if (document.insert_member_form.password.value == '') {
		alert('비밀번호를 입력하세요.');
		document.insert_member_form.password.focus();
		return
	}
	document.insert_member_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">회원 정보 등록 화면</h1>
<form name="insert_member_form" method="post" action="insert_member_ok.jsp">
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td align="center">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td align="center">성별</td>
			<td>
				<input type="radio" name="gender" value="1" checked>남
				<input type="radio" name="gender" value="2">여
			</td>
		</tr>
		<tr>
			<td align="center">생년월일</td>
			<td><input type="text" name="birth"></td>
		</tr>
		<tr>
			<td align="center">이메일</td>
			<td>
				<input type="text" name="input_email">
				@
				<select name="email_select">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="center">핸드폰</td>
			<td>
				<select name="phone_select">
					<option value="010">010</option>
					<option value="011">011</option>
				</select>
				-
				<input type="text" name="phone_1" size="10">
				-
				<input type="text" name="phone_2" size="10">
			</td>
		</tr>
		<tr>
			<td align="center">주소</td>
			<td><input type="text" name="address" size="50"></td>
		</tr>
		<tr>
			<td align="center">닉네임</td>
			<td><input type="text" name="nickname"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="회원등록" onclick="javascript:insert_member()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>