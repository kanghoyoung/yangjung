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
<h1 align="center">상품 목록</h1>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String cnt = "SELECT COUNT(*) FROM product0819";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	out.println("총 " + count + "개의 상품이 있습니다.");
	
	try {
		sql = "SELECT * FROM product0819";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
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
			<th>구분</th>
		</tr>
<%
	while(rs.next()) {
		int id = rs.getInt(1); // 상품코드
		String category = rs.getString(2); // 상품분류
		String wname = rs.getString(3); // 작성자 이름
		String pname = rs.getString(4); // 상품 이름
		String sname = rs.getString(5); // 제조사 이름
		int price = rs.getInt(6); // 시중가격
		int downprice = rs.getInt(7); // 판매가격
		String inputdate = rs.getString(8); // 상품올린날짜
		int stock = rs.getInt(9);
		String desc = rs.getString(10); // 메모
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
		<td><%=desc %></td>
		<td><a href="modify.jsp?id=<%=id %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?id=<%=id %>">삭제</a></td>
	</tr>
<%
	} // while

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
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>