<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 화면</title>
<script>
function check() {
	var pName = document.getElementById("ProductName");
	var pPrice = document.getElementById("ProductPrice");
	if(document.form.code.value == '') {
		alert('상품코드를 입력하세요.');
		document.form.code.focus();
		return;
	} else if (document.form.name.value == '') {
		alert('상품명을 입력하세요.');
		document.form.name.focus();
		return;
	} else if (pName.value.length < 4 || pName.value.length > 12) {
		alert('[상품명]\n최소 4자에서 최대 50자까지 입력하세요.');
		document.form.name.focus();
	} else if (document.form.price.value == '') {
		alert('가격을 입력하세요.');
		document.form.price.focus();
		return;
	} else if (pPrice.value.length == 0 || isNaN(pPrice.value)) {
		alert('[가격]\n숫자만 입력하세요.');
		document.form.price.focus();
	} else if (pPrice.value < 0) {
		alert('[가격]\n음수를 입력할 수 없습니다.');
		document.form.price.focus();
	} else if (document.form.description.value == '') {
		alert('상세정보를 입력하세요.');
		document.form.description.focus();
		return;
	} else if (document.form.manufacturer.value == '') {
		alert('제조사를 입력하세요.');
		document.form.manufacturer.focus();
		return;
	} else if (document.form.category.value == '') {
		alert('분류를 입력하세요.');
		document.form.category.focus();
		return;
	} else if (document.form.unitsInstock.value == '') {
		alert('재고수를 입력하세요.');
		document.form.unitsInstock.focus();
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
<h1 align="center">상품 등록 화면</h1>
<br>
	<form name="form" method="post" action="addProduct_ok.jsp">
		<table border="1">
			<tr>
				<th>상품코드</th>
				<td><input type="text" name="code"></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td><input type="text" id="ProductName" name="name"></td>
			</tr>
			<tr>
				<th>가 격</th>
				<td><input type="text" id="ProductPrice" name="price"></td>
			</tr>
			<tr>
				<th>상세정보</th>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<th>제조사</th>
				<td><input type="text" name="manufacturer"></td>
			</tr>
			<tr>
				<th>분 류</th>
				<td><input type="text" name="category"></td>
			</tr>
			<tr>
				<th>재고수</th>
				<td><input type="text" name="unitsInstock"></td>
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
				<td align="center" colspan="2">
					<input type="button" value="등록" onclick="javascript:check()">
					<input type="button" value="취소" onclick="location='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>