<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn=null;
	try{
		String url="jdbc:oracle:thin:@//localhost:1521/xe";
		String user="system";
		String pwd="1234";
		Class.forName("oracle.jdbc.OracleDriver");
		conn=DriverManager.getConnection(url,user,pwd);
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>