<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String productid = "";
	String productname = "";
	int unitprice = 0;
	String description = "";
	String category = "";
	String manufacturer = "";
	int unitsinstock = 0;
	String condition = "";
	try {
		sql = "SELECT * FROM product0811";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<h1 align="center">상품 정보 조회</h1>
<br>
<table border="1">
	<tr>
		<th>상품코드</th>
		<th>상품명</th>
		<th>가격</th>
		<th>상세정보</th>
		<th>분류</th>
		<th>제조사</th>
		<th>재고수</th>
		<th>상태</th>
	</tr>
<%
	while (rs.next()) {
		productid = rs.getString(1);
		productname = rs.getString(2);
		unitprice = rs.getInt(3);
		description = rs.getString(4);
		category = rs.getString(5);
		manufacturer = rs.getString(6);
		unitsinstock = rs.getInt(7);
		condition = rs.getString(8);
%>
	<tr>
		<td><%=productid %></td>
		<td><%=productname %></td>
		<td><%=unitprice %></td>
		<td><%=description %></td>
		<td><%=category %></td>
		<td><%=manufacturer %></td>
		<td><%=unitsinstock %></td>
		<td><%=condition %></td>
	</tr>
<%
		} // while
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
	}
%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>