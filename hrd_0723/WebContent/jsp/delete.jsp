<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
var delete_ok = confirm('정말로 삭제하시겠습니까?');
</script>
<body>
<%
	try {
		String id = request.getParameter("id");
		Statement stmt = conn.createStatement();
		String sql = "DELETE FROM pMember WHERE id = " + id;
		stmt.executeUpdate(sql);
%>
<script>
	if (delete_ok) {
		alert('삭제되었습니다.');
	}
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