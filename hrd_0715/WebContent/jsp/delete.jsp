<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
</head>
<body>
<%
	try {
		String sql = "";
		String id = request.getParameter("id");
		Statement stmt = conn.createStatement();
		sql = "DELETE FROM productTbl WHERE id=" + id;
		stmt.executeUpdate(sql);
%>
<script>
location.href="select.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
	}
%>
</body>
</html>