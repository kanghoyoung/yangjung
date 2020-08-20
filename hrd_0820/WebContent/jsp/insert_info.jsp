<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="sytlesheet" href="../css/index.css">
<script>
function insert() {
	if(document.form.name.value == '') {
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
<h1 align="center">인사관리 사원등록 화면</h1>
<form name="form" method="post" action="insert_info_ok.jsp">
	<table border="1">
		<tr>
			<th>사원번호(자동생성)</th>
			<td><input type="text" name="id">마지막번호+1</td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
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
				<input type="radio" name="position" checked>1급
				<input type="radio" name="position">2급
				<input type="radio" name="position">3급
				<input type="radio" name="position">4급
				<input type="radio" name="position">5급
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
			<th>주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등록" onclick="javascript:insert()">
				<input type="button" value="취소" onclick="location='index.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>