 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% 

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pass = request.getParameter("password");
		String gender = request.getParameter("gender");
		String inputEmail = request.getParameter("inputEmail");
		String phone = request.getParameter("phone");
		String home = request.getParameter("home1");
		String address = request.getParameter("address");
		String carNum = request.getParameter("carNumber");
		String carType = request.getParameter("carType");
		
		String sql = "insert into car_member values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pass);
		pstmt.setString(4, gender);
		pstmt.setString(5, inputEmail);
		pstmt.setString(6, phone);
		pstmt.setString(7, home);
		pstmt.setString(8, address);
		pstmt.setString(9, carNum);
		pstmt.setString(10, carType);
		
		pstmt.executeUpdate();
		
		out.println("id=" + id + "<br>");
		out.println("name=" + name + "<br>");
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>