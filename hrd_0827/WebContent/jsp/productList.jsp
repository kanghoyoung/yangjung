<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	int cnt = 0;
	try {
		String sql_count = "SELECT COUNT(*) FROM product0824";
		pstmt = conn.prepareStatement(sql_count);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">상품 목록</h1>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
	out.println("총 "+ count + "개의 상품이 있습니다."); 
%>
	<table border="1">
		<tr>
			<th>no</th>
			<th>제품코드</th>
			<th>제품명</th>
			<th>단가</th>
			<th>상세정보</th>
			<th>제조사</th>
			<th>분류</th>
			<th>재고수</th>
			<th>상태</th>
			<th>구분</th>
		</tr>
<%
	try {
		
		sql = "SELECT * FROM product0824";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			cnt++;
			String id = rs.getString(1);
			String name = rs.getString(2);
			String price = rs.getString(3);
			String desc = rs.getString(4); // 상세정보
			String category = rs.getString(5); // 상태
			String manufacturer = rs.getString(6);
			String unitsInstock = rs.getString(7); // 재고수
			String condition = rs.getString(8);
%>
		<tr>
			<td align="center"><%=cnt %></td>
			<td align="center"><%=id %></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=price %></td>
			<td align="center"><%=desc %></td>
			<td align="center"><%=manufacturer %></td>
			<td align="center"><%=category %></td>
			<td align="center"><%=unitsInstock %></td>
			<td align="center">
<%
		if (condition.equals("1")) {
			out.println("신규 제품");
		} else if (condition.equals("2")) {
			out.println("중고 제품");
		} else if (condition.equals("3")) {
			out.println("재생 제품");
		}
%>
			</td>
			<td align="center"><a href="productModify.jsp?id=<%=id %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="productDelete.jsp?id=<%=id %>">삭제</a></td>
		</tr>
<%
		} // while
		
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
	</table>
	<br>
	<div class="center">
		<input type="button" value="작성" onclick="location.href='addProduct.jsp'">
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>