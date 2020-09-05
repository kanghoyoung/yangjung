<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	String url = "";
	try {
		url = "jdbc:oracle:thin:@//localhost:1521/xe";
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, "system", "1234");
		//System.out.println("연결 성공");
	} catch (Exception e) {
		e.printStackTrace();
	}
%>