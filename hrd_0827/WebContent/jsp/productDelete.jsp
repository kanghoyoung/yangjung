<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String delete_sql = "";
	String id = request.getParameter("id");
	try {
		delete_sql = "DELETE FROM product0824 WHERE productId = ?";
		pstmt = conn.prepareStatement(delete_sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
%>
<script>
location.href="productList.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
	}
%>