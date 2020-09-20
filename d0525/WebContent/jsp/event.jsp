<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try {
		// JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		out.println("database 연결 중...");
		conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		out.println("database 연결 성공...");
		String sql = "insert into event values(?,?)";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("uname"));
		pstmt.setString(2, request.getParameter("email"));
		
		if (request.getParameter("uname") != null) {
			pstmt.executeUpdate();
		}
		
	} catch (Exception e) {
		out.println("database 연결 오류" + e.getMessage());
	}
%>