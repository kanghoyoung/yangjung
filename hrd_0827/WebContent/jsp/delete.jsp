<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	String sql = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int id = Integer.parseInt(request.getParameter("id"));
	try {
		sql = "DELETE FROM member0824 WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.executeUpdate();
%>
<script>
location.href="selectMember.jsp";
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