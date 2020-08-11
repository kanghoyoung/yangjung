<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	String id = "system";
	String password = "1234";
	try {
		String url = "jdbc:oracle:thin:@//localhost:1521/xe";
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, password);
	} catch (Exception e) {
		e.printStackTrace();
	}
%>