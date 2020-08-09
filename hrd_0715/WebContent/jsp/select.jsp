<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h2 align="center">상품 목록</h2>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	
	try {
		
		String count_sql = "SELECT COUNT(*) FROM productTbl";
		pstmt = conn.prepareStatement(count_sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
		
		sql = "SELECT ID, CATEGORY, WNAME, PNAME, SNAME, PRICE, DOWNPRICE, INPUTDATE, STOCK, DESCRIPTION FROM productTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<% out.println("총 " + count + "개의 상품이 있습니다."); %>
		<table border="1">
			<tr>
				<th>상품코드</th>
				<th>상품분류</th>
				<th>작성자 이름</th>
				<th>상품이름</th>
				<th>제조사 이름</th>
				<th>시중가격</th>
				<th>판매가격</th>
				<th>날짜</th>
				<th>재고량</th>
				<th>메모</th>
			</tr>
		<%
		while(rs.next()) {
			String id = rs.getString(1);
			String category = rs.getString(2);
			String wname = rs.getString(3);
			String pname = rs.getString(4);
			String sname = rs.getString(5);
			String price = rs.getString(6);
			String downprice = rs.getString(7);
			String inputdate = rs.getString(8);
			String stock = rs.getString(9);
			String description = rs.getString(10);
			%>
			<tr>
				<td><%=id %></td>
				<td><%=category %></td>
				<td><%=wname %></td>
				<td><%=pname %></td>
				<td><%=sname %></td>
				<td><%=price %></td>
				<td><%=downprice %></td>
				<td><%=inputdate %></td>
				<td><%=stock %></td>
				<td><%=description %></td>
			</tr>
			</table>
			<%
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
%>
<div class="center">
	<input type="button" value="작성">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>