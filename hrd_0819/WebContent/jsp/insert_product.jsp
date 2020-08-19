<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2 align="center">상품 추가</h2>
<form name="form" method="post" action="insert_product_ok.jsp">
	<table border="1">
		<tr>
			<th>상품 코드</th>
			<td><input type="text" name="id"></td>
			<th>상품분류</th>
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
			<th>작성자 이름</th>
			<td><input type="text" name="wname"></td>
			<th>상품 이름</th>
			<td><input type="text" name="pname"></td>
		</tr>
		<tr>
			<th>제조사 이름</th>
			<td><input type="text" name="sname"></td>
		</tr>
		<tr>
			<th>시중가격</th>
			<td><input type="text" name="price"></td>
			<th>판매가격</th>
			<td><input type="text" name="downprice"></td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><input type="text" name="inputdate"></td>
			<th>재고량</th>
			<td><input type="text" name="stock"></td>
		</tr>
		<tr>
			<th>메모</th>
			<td><textarea cols="30" rows="8"></textarea></td>
		</tr>
		<tr>
			<th>메모</th>
			<td colspan="4" align="center">
				<input type="submit" value="저장">
				<input type="button" value="목록" onclick="location='select_product.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>