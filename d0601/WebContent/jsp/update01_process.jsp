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
		String pass = request.getParameter("passwd");
		String name = request.getParameter("name");
		ResultSet rs = null;
		Statement stmt = null;
		try {
			String sql = "select id,passwd from membertable where id='" + id + "'"; // form에서 넘어온 데이터
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				String rID = rs.getString("id");
				String rPass = rs.getString("passwd");
				
				if(stmt != null) {
					stmt.close();
				}
				
				if(id.equals(rID) && pass.equals(rPass)) {
					sql = "update membertable set name='" + name + "' where id='" + id + "'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					out.println("데이터 수정 완료");
				} else {
					out.println("비밀번호가 일치하지 않습니다.");
				}
				
			} else {
				out.println("일치하는 아이디가 없습니다.");
			}
		} catch (SQLException e) {
			out.println("수정 오류");
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

</body>
</html>