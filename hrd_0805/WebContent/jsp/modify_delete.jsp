<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	
	String sql = "";
	
	try {
		String code = request.getParameter("code");
		Statement stmt = conn.createStatement();
		sql = "DELETE FROM subTbl WHERE id = " + code;
		stmt.executeUpdate(sql);
%>
<script>
location.href="selectGwamok.jsp";
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