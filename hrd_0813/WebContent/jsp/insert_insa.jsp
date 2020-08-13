<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check() {
	if(document.form.id.value == '') {
		alert('사번이 입력되지 않았습니다.');
		document.form.id.focus();
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
<br><br><br>
<h1 align="center">인사관리 시스템</h1>
<br>
<h2>인사관리 시스템을 작성한다</h2>
<form name="form" method="post" action="insert_insa_ok.jsp">
	<table border="1">
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>사원번호</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>소속부서</th>
			<td>
				<select name="dept">
					<option value="1">인사부</option>
					<option value="2">기획부</option>
					<option value="3">홍보부</option>
					<option value="4">영업부</option>
					<option value="5">경리부</option>
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
				</select>
			</td>
		</tr>
		<tr>
			<th>직책</th>
			<td><input type="text" name="duty"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등 록" onclick="javascript:check()">
				<input type="button" value="취 소" onclick="location='insert_insa.jsp.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</html>