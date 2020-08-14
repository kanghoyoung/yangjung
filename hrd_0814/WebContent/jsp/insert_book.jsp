<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 정보 등록</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function insert() {
	if(document.insert_book_form.code.value == '') {
		alert('도서코드가 입력되지 않았습니다.');
		document.insert_book_form.code.focus();
		return;
	} else if (document.insert_book_form.name.value == '') {
		alert('작가가 입력되지 않았습니다.');
		document.insert_book_form.name.focus();
		return;
	} else if (document.insert_book_form.book_name.value == '') {
		alert('도서이름 입력되지 않았습니다.');
		document.insert_book_form.book_name.focus();
		return;
	}
	document.insert_book_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">도서 정보 등록 화면</h1>
<form name="insert_book_form" method="post" action="insert_book_ok.jsp">
	<table border="1">
		<tr>
			<th>도서코드</th>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<th>저자</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>도서이름</th>
			<td><input type="text" name="book_name"></td>
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