<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function checkWrite() {
		if (document.form.hakbun.value == "") {
			alert("학번을 입력하세요");
			document.form.hakbun.focus();
			return;
		} else if (document.form.name.value == "") {
			alert("이름을 입력하세요");
			document.form.name.focus();
			return;
		} else if (document.form.kor.value == "") {
			alert("국어 점수를 입력하세요");
			document.form.kor.focus();
			return;
		} else if (document.form.eng.value == "") {
			alert("영어 점수를 입력하세요");
			document.form.eng.focus();
			return;
		} else if (document.form.math.value == "") {
			alert("수학 점수를 입력하세요");
			document.form.math.focus();
			return;
		} else if (document.form.hist.value == "") {
			alert("역사 점수를 입력하세요");
			document.form.hist.focus();
			return;
		}
		document.form.submit();
	}
</script>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<br><br><br><br>
		<h1 align="center">학생 성적 입력</h1>
		<form name="form" method="post" action="inputAction.jsp">
			<table border="1">
				<tr>
					<td>학번</td>
					<td id="b"><input type="text" name="hakbun" maxlength="5"></td>
				</tr>
				<tr>
					<td>성명</td>
					<td id="b"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>국어</td>
					<td id="b"><input type="text" name="kor"></td>
				</tr>
				<tr>
					<td>영어</td>
					<td id="b"><input type="text" name="eng"></td>
				</tr>
				<tr>
					<td>수학</td>
					<td id="b"><input type="text" name="math"></td>
				</tr>
				<tr>
					<td>역사</td>
					<td id="b"><input type="text" name="hist"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="button" value="성적저장"
						onclick="javascript:checkWrite()"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>