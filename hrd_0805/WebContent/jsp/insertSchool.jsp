<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check() {
	if(document.form.hakbun.value=='') {
		alert('학번이 입력되지 않았습니다.');
		document.form.hakbun.focus();
		return;
	} else if(document.form.name.value=='') {
		alert('성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	}
	document.form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">학사 정보 등록 화면</h1>
<form name="form" method="post" action="insertSchool_ok.jsp">
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
					<option value="1">컴퓨터 공학과</option>
					<option value="2">기계공학과</option>
					<option value="3">전자과</option>
					<option value="4">영문학과</option>
					<option value="5">일어과</option>
					<option value="6">경영학과</option>
					<option value="7">무역학과</option>
					<option value="8">교육학과</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>학년</th>
			<td>
				<select name="hakyen">
					<option value="1">1학년</option>
					<option value="2">2학년</option>
					<option value="3">3학년</option>
					<option value="4">4학년</option>
				</select>
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
			<td colspan="2" align="center">
				<input type="button" value="등록" onclick="javascript:check()">
				<input type="button" value="취소" onclick="location='insertSchool.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>