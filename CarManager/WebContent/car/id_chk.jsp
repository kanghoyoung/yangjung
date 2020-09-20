<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url,"root","1234");
		String id = request.getParameter("id");
		String sql = "select * from car_member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			%>
			<script type="text/javascript">
			alert("중복 아이디\n이미 등록된 아이디 입니다.");
			history.back();
			</script>
			<%
			
		// 사용할수 있는 아이디
		} else {
			%>
			<script type="text/javascript">
			alert("사용 가능한 아이디 입니다.");
			history.back();
			</script>
			<%
		}
	} catch (SQLException e) {
		
	}

%>
