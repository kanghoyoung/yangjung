<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String code = request.getParameter("code");
	String ProductName = request.getParameter("ProductName");
	String ProductPrice = request.getParameter("ProductPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInstock = request.getParameter("unitsInstock");
	String condition = request.getParameter("condition");
	try {
		sql = "UPDATE product0824 SET name = ?, unitprice = ?, description = ?, category = ?, manufacturer = ?, unitsInstock = ?, condition = ? WHERE productId = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ProductName);
		pstmt.setString(2, ProductPrice);
		pstmt.setString(3, description);
		pstmt.setString(4, category);
		pstmt.setString(5, manufacturer);
		pstmt.setString(6, unitsInstock);
		pstmt.setString(7, condition);
		pstmt.setString(8, code);
		pstmt.executeUpdate();
%>
<script>
alert('수정되었습니다');
location.href="productList.jsp";
</script>
<%
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