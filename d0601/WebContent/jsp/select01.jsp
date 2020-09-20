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
<%@ include file = "dbconnection.jsp" %>
<table width=300 border=1>
	<tr>
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
	</tr>
<%
	ResultSet rs = null;
	Statement stmt = null;
	try {
		String sql = "select * from membertable";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()) {
			// String id = rs.getString("id");
			// String pass = rs.getString("passwd");
			// String name = rs.getString("name");
			%>
			<tr>
			<td><%= rs.getString("id") %></td>
			<td><%= rs.getString("passwd") %></td>
			<td><%= rs.getString("name") %></td>
			</tr>
			<%
		}
	} catch(SQLException e) {
		out.println("조회 실패");
		e.printStackTrace();
	} finally {
		if(rs != null) {
			rs.close();
		}
		if(stmt != null) {
			stmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
%>
</table>
</body>
</html>