<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<% 

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, "root", "root");
		
		String sql = "insert into car_member values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setString(3, request.getParameter("password"));
		pstmt.setString(4, request.getParameter("gender"));
		pstmt.setString(5, request.getParameter("inputEmail"));
		
		pstmt.setString(6, request.getParameter("phone"));
		pstmt.setString(7, request.getParameter("home1"));
		pstmt.setString(8, request.getParameter("address"));
		pstmt.setString(9, request.getParameter("carNumber"));
		pstmt.setString(10, request.getParameter("carType"));
		
		// id 값을 입력한 경우 sql 문장을 수행
		if (request.getParameter("id") != null) {
			pstmt.executeUpdate();
		}
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		
		// 아이디
		out.println("아이디 : " + id + "<br>");
		
		// 이름
		out.println("이름 : " + name + "<br>");
		
		out.println("등록되었습니다." + "<br>");
		
		
		
	} catch (Exception e) {
		e.getMessage();
	}
%>