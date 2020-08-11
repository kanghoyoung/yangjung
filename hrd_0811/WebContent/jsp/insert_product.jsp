<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function insert_product() {
	if(document.insert_product_form.code.value == '') {
		alert('상품번호를 입력하세요.');
		document.insert_product_form.code.focus();
		return;
	}
	document.insert_product_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">상품 정보 등록 화면</h1>
<form name="insert_product_form" method="post" action="insert_product_ok.jsp">
	<table border="1">
		<tr>
			<td align="center">상품코드</td>
			<td colspan="4"><input type="text" name="code"></td>
		</tr>
		<tr>
			<td align="center">상품명</td>
			<td colspan="4"><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align="center">가격</td>
			<td colspan="4"><input type="text" name="price"></td>
		</tr>
		<tr>
			<td align="center">상세정보</td>
			<td colspan="4"><input type="text" name="description"></td>
		</tr>
		<tr>
			<td align="center">제조사</td>
			<td colspan="4"><input type="text" name="manufacturer"></td>
		</tr>
		<tr>
			<td align="center">분류</td>
			<td colspan="4"><input type="text" name="category"></td>
			<td align="center">재고수</td>
			<td colspan="4"><input type="text" name="unitsInstock"></td>
		</tr>
		<tr>
			<td align="center">상태</td>
			<td>
				<input type="radio" name="condition" value="1" checked>신규제품
				<input type="radio" name="condition" value="2">중고제품
				<input type="radio" name="condition" value="3">재생제품
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="button" value="상품등록" onclick="javascript:insert_product()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>