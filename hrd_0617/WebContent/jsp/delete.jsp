<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function check() {
		if (document.form.hakbun.value == "") {
			alert("학번을 입력하세요");
			document.form.hakbun.focus();
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
		<h1 align=center>학생 성적 삭제</h1>
		<form name="form" method="post" action="deleteAction.jsp">
			<table border="1">
				<tr>
					<td>학번</td>
					<td id="b"><input type="text" name="hakbun"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="전송"
						onclick="javascript:check()"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>