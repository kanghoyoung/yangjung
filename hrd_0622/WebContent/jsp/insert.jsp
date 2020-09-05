<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 등록</title>
<script>
function check() {
	if (document.form.name.value == '') {
		alert('이름이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.id.value == '') {
		alert('사원번호가 입력되지 않았습니다.');
		document.form.id.focus();
		return;
	} else if (document.form.duty.value == '') {
		alert('직책이 입력되지 않았습니다.');
		document.form.duty.focus();
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
	<div class="section">
		인사관리 사원 등록 화면
	</div>
	<br>
	<form name="form" method="post" action="insert_ok.jsp">
		<table border="1">
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" size="30"></td>
			</tr>
			<tr>
				<th>사원번호</th>
				<td><input type="text" name="id" size="30" maxlength="3"></td>
			</tr>
			<tr>
				<th>소속부서</th>
				<td>
					<select name="dept">
						<option value="인사부">인사부</option>
						<option value="기획부">기획부</option>
						<option value="홍보부">홍보부</option>
						<option value="영업부">영업부</option>
						<option value="경리부">경리부</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>직급</th>
				<td>
					<select name="position">
						<option value="1">1급</option>
						<option value="2">2급</option>
						<option value="3">3급</option>
						<option value="4">4급</option>
						<option value="5">5급</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>직책</th>
				<td><input type="text" name="duty" size="30"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone" size="30"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등 록" onclick="javasript:check()">
					<input type="button" value="취 소" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>