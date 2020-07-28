<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String sql = "";
	try {
		String id = request.getParameter("id");
		Statement stmt = conn.createStatement();
		sql = "DELETE FROM pMember WHERE id = " + id;
		stmt.executeUpdate(sql);
%>
<script>
		location.href="selectMember.jsp";
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