<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check() {
	
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsinstock = document.getElementById("unitsinstock");
	
	if(document.form.productId.value == "") {
		alert('상품코드를 입력하세요.');
		document.form.productId.focus();
	} else if(document.form.name.value == "") {
		alert('상품명을 입력하세요.');
		document.form.name.focus();
	} else if(document.form.unitPrice.value == "") {
		alert('가격을 입력하세요.');
		document.form.unitPrice.focus();
	} else if(name.value.length < 4 || name.value.length > 12) {
		alert('[상품명]\n최소 4자에서 최대 50자까지 입력하세요.');
		document.form.name.focus();
	} else if(unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert('[가격]\n숫자만 입력하세요.');
		document.form.unitPrice.focus();
	} else if(unitPrice.value < 0) {
		alert('[가격]\n음수를 입력할 수 없습니다.');
		document.form.unitPrice.focus();
	} else if(unitsinstock.value.length == 0 || inNaN(unitsinstock.value)) {
		alert('[재고]\n숫자만 입력하세요.');
		document.form.unitsinstock.focus();
	} else if(unitsinstock.value < 0) {
		alert('[재고]\n음수를 입력할 수 없습니다.');
		document.form.unitsinstock.focus();
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
<br><br>
	<h1 align="center">상품 등록 화면</h1>
	<form name="form" method="post" action="addProduct_ok.jsp">
		<table border="1">
			<tr>
				<th width="300px">상품코드</th>
				<td width="500px">
					<input type="text" id="productId" name="code" size="30">
				</td>
			</tr>
			<tr>
				<th>상품명</th>
				<td>
					<input type="text" id="name" name="name" size="30">
				</td>
			</tr>
			<tr>
				<th>가 격</th>
				<td>
					<input type="text" id="unitPrice" name="price" size="30">
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
				<th>분 류</th>
				<td>
					<input type="text" name="category" size="30">
				</td>
			</tr>
			<tr>
				<th>재고수</th>
				<td>
					<input type="text" id="unitsinstock" name="unitsinstock" size="30">
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