<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
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
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<td align="center">상품명</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align="center">가격</td>
			<td><input type="text" name="price"></td>
		</tr>
		<tr>
			<td align="center">상세정보</td>
			<td><input type="text" name="description"></td>
		</tr>
		<tr>
			<td align="center">상품코드</td>
			<td><input type="text" name="code"></td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>