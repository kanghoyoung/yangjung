<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 등록</title>
<script>
function ok() {
	if(document.form.name.value === '') {
		alert('이름을 입력하세요.');
		document.form.name.focus();
		return;
	}
	document.form.submit();
}
</script>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section>
<h1 align="center">회원 가입 등록 화면</h1>

<form name="form" method="post" action="register_ok.jsp">
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id">(마지막번호+1)</td>
		</tr>
		<tr>
			<th>성 명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="passwd"></td>
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td><input type="password" name="passwd_ok"></td>
		</tr>
		<tr>
			<th>성 별</th>
			<td>
				<input type="radio" name="gender" value="남성" checked>남성
				<input type="radio" name="gender" value="여성">여성
			</td>
		</tr>
		<tr>
			<th>생 일</th>
			<td>
				<input type="text" name="year">년
				<select name="month">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				월
				<select name="day">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				일
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<input type="text" name="email">@
				<input type="text" name="email2">
				<select name="select_email">
					<option value="0">선택하세요</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="hotmail.com">hotmail.com</option>
					<option value="gmail.com">gmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등록" onclick="javascript:ok()">
				<input type="button" value="취소" onclick="location='index.jsp'">
			</td>
		</tr>
	</table>
</form>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>