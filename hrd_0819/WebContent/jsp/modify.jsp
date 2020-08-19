<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<% 
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String category = "";
	String wname = "";
	String pname = "";
	String sname = "";
	String price = "";
	String downprice = "";
	String inputdate = "";
	String stock = "";
	String description = "";
	try {
		String update = "SELECT * FROM product0819 WHERE id = ?";
		pstmt = conn.prepareStatement(update);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			category = rs.getString(2);
			wname = rs.getString(3);
			pname = rs.getString(4);
			sname = rs.getString(5);
			price = rs.getString(6);
			downprice = rs.getString(7);
			inputdate = rs.getString(8);
			stock = rs.getString(9);
			description = rs.getString(10);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>
<h2 align="center">상품 추가</h2>
<form name="form" method="post" action="modify_ok.jsp">
	<table border="1">
		<tr>
			<th>상품 코드</th>
			<td><input type="text" name="id" value="<%=id %>"></td>
			<th>상품분류</th>
			<td>
				<select name="category">
					<option value="상품 분류" <%if(category.equals("상품 분류")){%>selected<%} %>>상품 분류</option>
					<option value="가구" <%if(category.equals("가구")){%>selected<%} %>>가구</option>
					<option value="전기/전자" <%if(category.equals("전기/전자")){%>selected<%} %>>전기/전자</option>
					<option value="부엌용품" <%if(category.equals("부엌용품")){%>selected<%} %>>부엌용품</option>
					<option value="의류" <%if(category.equals("의류")){%>selected<%} %>>의류</option>
					<option value="보석및 액세서리" <%if(category.equals("보석및 액세서리")){%>selected<%} %>>보석및 액세서리</option>
					<option value="헬스기구" <%if(category.equals("헬스기구")){%>selected<%} %>>헬스기구</option>
					<option value="컴퓨터 관련" <%if(category.equals("컴퓨터 관련")){%>selected<%} %>>컴퓨터 관련</option>
					<option value="기타" <%if(category.equals("기타")){%>selected<%} %>>기타</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>작성자 이름</th>
			<td><input type="text" name="wname" value="<%=wname %>"></td>
			<th>상품 이름</th>
			<td><input type="text" name="pname" value="<%=pname %>"></td>
		</tr>
		<tr>
			<th>제조사 이름</th>
			<td><input type="text" name="sname" value="<%=sname %>"></td>
		</tr>
		<tr>
			<th>시중가격</th>
			<td><input type="text" name="price" value="<%=price %>"></td>
			<th>판매가격</th>
			<td><input type="text" name="downprice" value="<%=downprice %>"></td>
		</tr>
		<tr>
			<th>날짜</th>
			<td><input type="text" name="inputdate" value="<%=inputdate %>"></td>
			<th>재고량</th>
			<td><input type="text" name="stock" value="<%=stock %>"></td>
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