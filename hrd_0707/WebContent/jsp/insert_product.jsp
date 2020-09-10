<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check(){
	if(document.form.productId.value==""){
		alert("상품코드를 입력하세요");
		document.form.productId.focus();
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
<h2 align="center">상품 정보 등록 화면</h2>
<form name="form" method="post" action="insert_product_ok.jsp">
	<table border="1">
		<tr>
			<td align="center" width="100px">삼품코드</td>
			<td width="500px"><input type="text" name="productId" size="50"></td>
		</tr>
		<tr>
			<td align="center" width="100px">상품명</td>
			<td width="500px"><input type="text" name="produtName" size="50"></td>
		</tr>
		<tr>
			<td align="center" width="100px">가격</td>
			<td width="500px"><input type="text" name="unitprice" size="50"></td>
		</tr>
		<tr>
			<td align="center" width="100px">상세정보</td>
			<td width="500px"><input type="text" name="description" size="50"></td>
		</tr>
		<tr>
			<td align="center" width="100px">제조사</td>
			<td width="500px"><input type="text" name="manufacturer" size="50"></td>
		</tr>
		<tr>
			<td align="center">분류</td>
			<td width="250px"><input type="text" name="category" size="20">
			재고수
			<input type="text" name="unitsInstock" size="20"></td>
		</tr>
		<tr>
			<td align="center" width="100px">상태</td>
			<td><input type="radio" name="condition" value="1" checked>신규제품
			    <input type="radio" name="condition" value="2">중고제품
			    <input type="radio" name="condition" value="3">재생제품
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="상품등록" onclick="javascript:check()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>