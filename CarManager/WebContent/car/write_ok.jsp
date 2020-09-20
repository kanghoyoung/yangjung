<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("utf-8");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String title = request.getParameter("title");
		String memo = request.getParameter("memo");
		String standard = request.getParameter("standard");
		sql = "select max(num) from board";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		int max = 0;
		if(rs.next()) {
			max = rs.getInt(1);
		} else {
			max = 0;
		}
		sql = "insert into board(name,password,title,memo,ref,time) values(?,?,?,?,?,sysdate())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		pstmt.setInt(5, max+1);
		pstmt.execute();
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>
<script>
self.window.alert("입력한 글을 저장하였습니다.");
location.href="index.jsp";
</script>