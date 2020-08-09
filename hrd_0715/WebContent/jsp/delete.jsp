<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
</head>
<body>
<script>
	var del = confirm('정말로 삭제하시겠습니까?');
</script>
<%
	try {
		
		String sql = "";
		String id = request.getParameter("id");
		Statement stmt = conn.createStatement();
		sql = "DELETE FROM productTbl WHERE id=" + id;
		stmt.executeUpdate(sql);
		%>
		<script>
		if(del) {
			alert('완료되었습니다.');
		}
		location.href = "select.jsp";
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