<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 정보 등록 화면</title>
<script>
function check() {
	if (document.form.hakbun.value == '') {
		alert('학번이 입력되지 않았습니다.');
		document.form.hakbun.focus();
		return;
	} else if (document.form.name.value == '') {
		alert('성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.address.value == '') {
		alert('주소가 입력되지 않았습니다.');
		document.form.address.focus();
		return;
	} else if (document.form.phone.value == '') {
		alert('연락처가 입력되지 않았습니다.');
		document.form.phone.focus();
		return;
	} else {
		document.form.submit();
	}
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">학사 정보 등록 화면</h1>
<br>
	<form name="form" method="post" action="insert_stud_ok.jsp">
		<table border="1">
			<tr>
				<th>학번</th>
				<td><input type="text" name="hakbun"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>학과</th>
				<td>
					<select name="hakgwa">
						<option value="1">컴퓨터공학과</option>
						<option value="2">기계공학과</option>
						<option value="3">전자과</option>
						<option value="4">영문학과</option>
						<option value="5">일어과</option>
						<option value="6">경영학과</option>
						<option value="7">무역학과</option>
						<option value="8">교욱학과</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>학년</th>
				<td>
					<input type="radio" name="hakyen" value="1" checked> 1학년
					<input type="radio" name="hakyen" value="2"> 2학년
					<input type="radio" name="hakyen" value="3"> 3학년
					<input type="radio" name="hakyen" value="4"> 4학년
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<input type="checkbox" name="hobby" value="프로그램">프로그램&nbsp;
					<input type="checkbox" name="hobby" value="독서">독서&nbsp;
					<input type="checkbox" name="hobby" value="등산">등산&nbsp;
					<input type="checkbox" name="hobby" value="여행">여행&nbsp;
					<input type="checkbox" name="hobby" value="낚시">낚시&nbsp;
					<input type="checkbox" name="hobby" value="영화보기">영화보기&nbsp;
					<input type="checkbox" name="hobby" value="잠자기">잠자기&nbsp;
					<input type="checkbox" name="hobby" value="멍때리기">멍때리기&nbsp;
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="button" value="등록" onclick="javascript:check()">
					<input type="button" value="취소" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>