<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check() {
	if(document.form.code.value == "") {
		alert('상품코드를 입력하세요.');
		document.form.code.focus();
		return;
	} else if(document.form.name.value == "") {
		alert('상품명을 입력하세요.');
		document.form.name.focus();
		return;
	}
	document.form.submit();
}
function check_1() {
	
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br>
	<h1 align="center">상품 등록 화면</h1>
	<form name="form" method="post" action="addProduct_ok.jsp">
		<table border="1">
			<tr>
				<th width="300px">상품코드</th>
				<td width="500px">
					<input type="text" name="code" size="30">
				</td>
			</tr>
			<tr>
				<th>상품명</th>
				<td>
					<input type="text" name="name" size="30" onclick="javascript:check_1()">
				</td>
			</tr>
			<tr>
				<th>가 격</th>
				<td>
					<input type="text" name="price" size="30">
				</td>
			</tr>
			<tr>
				<th>상세정보</th>
				<td>
					<input type="text" name="description" size="30">
				</td>
			</tr>
			<tr>
				<th>제조사</th>
				<td>
					<input type="text" name="manufacturer" size="30">
				</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>
					<input type="text" name="category" size="30">
				</td>
			</tr>
			<tr>
				<th>재고수</th>
				<td>
					<input type="text" name="unitsinstock" size="30">
				</td>
			</tr>
			<tr>
				<th>상 태</th>
				<td>
					<input type="radio" name="condition" value="1" checked>신규 제품
					<input type="radio" name="condition" value="2">중고 제품
					<input type="radio" name="condition" value="3">재생 제품
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" onclick="javascript:check()">
					<input type="button" value="취소" onclick="location='addProduct.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>