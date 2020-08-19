<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check() {
	if(document.form.code.value == '') {
		alert('상품 코드를 입력하세요');
		document.form.code.focus();
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
<h2 align="center">주문정보 등록</h2>
<form name="form" method="post" action="order_ok.jsp">
	<table border="1">
		<tr>
			<td>상품 코드</td>
			<td><input type="text" name="code"></td>
			<td>주문자 이름</td>
			<td><input type="text" name="orderName"></td>
		</tr>
		<tr>
			<td>주문 날짜</td>
			<td><input type="text" name="date"></td>
			<td>전화번호</td>
			<td><input type="text" name="tel"></td>
		</tr>
		<tr>
			<td>배달주소</td>
			<td colspan="4"><input type="text" name="address"></td>
		</tr>
		<tr>
			<td>결제방법</td>
			<td>
				<input type="radio" name="pay" value="1" checked>현금
				<input type="radio" name="pay" value="2">카드
			</td>
			<td>카드번호</td>
			<td><input type="text" name="card"></td>
		</tr>
		<tr>
			<td>주문상품수</td>
			<td><input type="text" name="orderCount"></td>
			<td>주문금액</td>
			<td><input type="text" name="orderPrice"></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location='orderSelect.jsp'">
				<input type="button" value="저장" onclick="javascript:check()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>