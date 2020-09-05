<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보삭제</title>
<script>
function delete_check() {
	if (document.form.name.value == '') {
		alert('성명을 입력하세요.');
		document.form.name.focus();
		return;
	} else if (document.form.id.value == '') {
		alert('사번을 입력하세요.');
		document.form.id.focus();
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
		인사관리 퇴사처리 화면
	</div>
	<br>
	<form name="form" method="post" action="delete_ok.jsp">
		<table border="1">
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" size="30"></td>
			</tr>
			<tr>
				<th>사원번호</th>
				<td><input type="text" name="id" size="30"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="삭 제" onclick="javascript:delete_check()">
					<input type="button" value="취 소" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>