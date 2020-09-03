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
		if (document.form.name.value == "") {
			alert("이름을 입력하세요");
			document.form.name.focus();
			return;
		} else if (document.form.id.value == "") {
			alert("사원번호를 입력하세요");
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
	<br><br><br><br>
		<h3 align="center">입사관리 퇴사처리 화면</h3>
		<br>
		<form name="form" method="post" action="deleteAction.jsp">
			<table border="1">
				<tr>
					<td>성명</td>
					<td id="b"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>사원번호</td>
					<td id="b"><input type="text" name="id"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="button" value="삭제"
						onclick="javascript:check()"> <input type="button"
						value="취소"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>