<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
		String jdbcDriver = "com.mysql.cj.jdbc.Driver";
		String jdbcUrl = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(jdbcUrl, "root", "1234");
		
%>