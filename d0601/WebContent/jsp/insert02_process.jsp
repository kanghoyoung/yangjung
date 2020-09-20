<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconnection.jsp" %>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null;
	
	try {
		String sql = "insert into membertable(id, passwd, name) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.executeUpdate();
		out.println("입력 성공" + "<br>");
		out.println("id=" + id + "<br>");
		out.println("패스워드=" + passwd + "<br>");
		out.println("name=" + name + "<br>");
	} catch (SQLException e) {
		out.println("입력 실패");
		e.printStackTrace();
	} finally {
		if(pstmt != null) {
			pstmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
%>
</body>
</html>