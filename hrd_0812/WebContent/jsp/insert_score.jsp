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
	if(document.form.hakbun.value == '') {
		alert('학번이 입력되지 않았습니다.');
		document.form.hakbun.focus();
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
<h2 align="center">학생 성적 입력</h2>
<form name="form" method="post" action="insert_score_ok.jsp">
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
			<th>국어</th>
			<td><input type="text" name="kor"></td>
		</tr>
		<tr>
			<th>영어</th>
			<td><input type="text" name="eng"></td>
		</tr>
		<tr>
			<th>수학</th>
			<td><input type="text" name="math"></td>
		</tr>
		<tr>
			<th>역사</th>
			<td><input type="text" name="hist"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="성적저장" onclick="javascript:check()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>