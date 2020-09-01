<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id");
	String name = "";
	String price = "";
	String desc = "";
	String category = "";
	String manufacturer = "";
	String unitsInstock = "";
	String condition = "";
	try {
		String modify = "SELECT * FROM product0824 WHERE productId = ?";
		pstmt = conn.prepareStatement(modify);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			name = rs.getString(2);
			price = rs.getString(3);
			desc = rs.getString(4);
			category = rs.getString(5);
			manufacturer = rs.getString(6);
			unitsInstock = rs.getString(7);
			condition = rs.getString(8);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (rs != null) {
			rs.close();
		}
	}
%>
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
	<form name="form" method="post" action="productModify_ok.jsp">
		<table border="1">
			<tr>
				<th>상품코드</th>
				<td><input type="text" name="code" size="50" value="<%=id %>"></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td><input type="text" id="ProductName" name="name" size="50" value="<%=name %>"></td>
			</tr>
			<tr>
				<th>가 격</th>
				<td><input type="text" id="ProductPrice" name="price" size="50" value="<%=price %>"></td>
			</tr>
			<tr>
				<th>상세정보</th>
				<td><input type="text" name="description" size="50" value="<%=desc %>"></td>
			</tr>
			<tr>
				<th>제조사</th>
				<td><input type="text" name="manufacturer" size="50" value="<%=manufacturer %>"></td>
			</tr>
			<tr>
				<th>분 류</th>
				<td><input type="text" name="category" size="50" value="<%=category %>"></td>
			</tr>
			<tr>
				<th>재고수</th>
				<td><input type="text" name="unitsInstock" size="50" value="<%=unitsInstock %>"></td>
			</tr>
			<tr>
				<th>상 태</th>
				<td>
					<input type="radio" name="condition" value="1" <% if(condition.equals("1")) {%> checked <%} %> checked>신규 제품
					<input type="radio" name="condition" value="2" <% if(condition.equals("2")) {%> checked <%} %>>중고 제품
					<input type="radio" name="condition" value="3" <% if(condition.equals("3")) {%> checked <%} %>>재생 제품
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