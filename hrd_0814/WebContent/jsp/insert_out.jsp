<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function ok() {
	if(document.form.lentno.value == '') {
		alert('대출번호가 입력되지 않았습니다.');
		document.form.lentno.focus();
		return;
	} else if (document.form.custname.value == '') {
		alert('고객성명이 입력되지 않았습니다.');
		document.form.custname.focus();
		return;
	} else if (document.form.bookno.value == '') {
		alert('도서코드가 입력되지 않았습니다.');
		document.form.bookno.focus();
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
<h1 align="center">도서 대출 예약 정보 등록 화면</h1>
	<form name="form" method="post" action="insert_out_ok.jsp">
		<table border="1">
			<tr>
				<th>대출번호</th>
				<td><input type="text" name="lentno"></td>
				<th>고객성명</th>
				<td><input type="text" name="custname"></td>
			</tr>
			<tr>
				<th>도서코드</th>
				<td><input type="text" name="bookno"></td>
				<th>도서이름</th>
				<td><input type="text" name="bookname"></td>
			</tr>
			<tr>
				<th>대출일자</th>
				<td><input type="text" name="outdate"></td>
				<th>반납일자</th>
				<td><input type="text" name="indate"></td>
			</tr>
			<tr>
				<th>대출상태</th>
				<td>
					<input type="radio" name="status" value="대출" checked>대출
					<input type="radio" name="status" value="반납">반납
				</td>
				<th>등급</th>
				<td>
					<select name="select_class">
						<option value="S">S</option>
						<option value="A">A</option>
						<option value="B">B</option>
						<option value="C">C</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="button" value="저장" onclick="javascript:ok()">
					<input type="button" value="취소" onclick="location='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>