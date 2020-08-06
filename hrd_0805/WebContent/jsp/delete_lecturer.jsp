<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%

	PreparedStatement pstmt = null;
	String sql = "";

	try {
		int idx = Integer.parseInt(request.getParameter("idx"));
		sql = "DELETE FROM teachertbl WHERE idx = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, idx);
		pstmt.executeUpdate();
%>
<script>
location.href="selectLecturer.jsp";
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