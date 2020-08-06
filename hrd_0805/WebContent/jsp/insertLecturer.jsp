<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function lecturer_check() {
	if(document.lecturer_form.lecturerName.value == '') {
		alert('강사명이 입력되지 않았습니다.');
		document.lecturer_form.lecturerName.focus();
		return;
	} else if (document.lecturer_form.major.value == '') {
		alert('전공이 입력되지 않았습니다.');
		document.lecturer_form.major.focus();
		return;
	} else if (document.lecturer_form.detailMajor.value == '') {
		alert('세부전공이 입력되지 않았습니다.');
		document.lecturer_form.detailMajor.focus();
		return;
	}
	document.lecturer_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">강사 추가</h1>
<form name="lecturer_form" method="post" action="insertLecturer_ok.jsp" >
	<table border="1">
		<tr>
			<th>강사 ID</th>
			<td><input type="text" name="lecturerId">자동증가(Sequence 발생)</td>
		</tr>
		<tr>
			<th>강 사 명</th>
			<td><input type="text" name="lecturerName"></td>
		</tr>
		<tr>
			<th>전 공</th>
			<td><input type="text" name="major"></td>
		</tr>
		<tr>
			<th>세부 전공</th>
			<td><input type="text" name="detailMajor"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="목록">
				<input type="button" value="저장" onclick="javascript:lecturer_check()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>