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
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<%
	try {
		sql = "SELECT * FROM productTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
	 	out.println("총 " + count + "개의 상품이 있습니다.");
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
			int id = rs.getInt(1);
			String category = rs.getString(2);
			String wname = rs.getString(3);
			String pname = rs.getString(4);
			String sname = rs.getString(5);
			int price = rs.getInt(6);
			int downprice = rs.getInt(7);
			String inputdate = rs.getString(8);
			int stock = rs.getInt(9);
			String description = rs.getString(10);
%>
			<tr>
				<td><%=id %></td>
				<td>
<%
			if(category.equals("11")) {
				out.println("가구");
			} else if (category.equals("22")) {
				out.println("전기/전지");
			} else if (category.equals("33")) {
				out.println("부엌용품");
			} else if (category.equals("44")) {
				out.println("의류");
			} else if (category.equals("55")) {
				out.println("보석 및 액세서리");
			} else if (category.equals("66")) {
				out.println("헬스기구");
			} else if (category.equals("77")) {
				out.println("컴퓨터관련");
			} else if (category.equals("88")) {
				out.println("기타");
			}
%>
				</td>
				<td><%=wname %></td>
				<td><%=pname %></td>
				<td><%=sname %></td>
				<td><%=price %></td>
				<td><%=downprice %></td>
				<td><%=inputdate %></td>
				<td><%=stock %></td>
				<td><%=description %></td>
				<td><a href="modify.jsp?id=<%=id %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?id=<%=id %>">삭제</a></td>
			</tr>
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
</table>
<br>
<div class="center">
	<input type="button" value="작성" onclick="location='insert.jsp'">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>