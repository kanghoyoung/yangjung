<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String description = request.getParameter("description"); // 상제정보
	String manufacturer = request.getParameter("manufacturer"); // 제조사
	String category = request.getParameter("category");
	String unitsInstock = request.getParameter("unitsInstock");
	String condition = request.getParameter("condition");
	try {
		sql = "INSERT INTO product0824 VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		pstmt.setString(2, name);
		pstmt.setString(3, price);
		pstmt.setString(4, description);
		pstmt.setString(5, category);
		pstmt.setString(6, manufacturer);
		pstmt.setString(7, unitsInstock);
		pstmt.setString(8, condition);
		pstmt.executeUpdate();
%>
<script>
alert('등록되었습니다.');
location.href="productList.jsp";
</script>
<%
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