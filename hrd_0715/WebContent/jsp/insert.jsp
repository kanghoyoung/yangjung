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
		alert('상품코드를 입력하세요.');
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
<h2 align="center">상품추가</h2>
<form name="form" method="post" action="insert_ok.jsp">
<table border="1">
	<tr>
		<td>상품코드</td>
		<td><input type="text" name="code"></td>
		<td>상품분류</td>
		<td>
			<select name="category">
				<option value="상품 분류">상품 분류</option>
				<option value="가구">가구</option>
				<option value="전기/전자">전기/전자</option>
				<option value="부엌용품">부엌용품</option>
				<option value="의류">의류</option>
				<option value="보석및 액세서리">보석및 액세서리</option>
				<option value="헬스기구">헬스기구</option>
				<option value="컴퓨터 관련">컴퓨터 관련</option>
				<option value="기타">기타</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>작성자이름</td>
		<td><input type="text" name="wname"></td>
		<td>상품 이름</td>
		<td><input type="text" name="pname"></td>
	</tr>
	<tr>
		<td>제조사 이름</td>
		<td colspan="4"><input type="text" name="sname"></td>
	</tr>
	<tr>
		<td>시중 가격</td>
		<td><input type="text" name="price"></td>
		<td>판매 가격</td>
		<td><input type="text" name="downprice"></td>
	</tr>
	<tr>
		<td>날짜</td>
		<td><input type="text" name="date"></td>
		<td>재고량</td>
		<td><input type="text" name="stock"></td>
	</tr>
	<tr>
		<td>메모</td>
		<td colspan="4">
			<textarea cols="50" rows="8" name="memo"></textarea>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="4">
			<input type="button" value="목록" onclick="location.href='select.jsp'">
			<input type="button" value="저장" onclick="javascript:check()">
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>