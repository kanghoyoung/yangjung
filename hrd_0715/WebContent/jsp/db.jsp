<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	Connection conn = null;
	try {
		String url = "jdbc:oracle:thin:@//localhost:1521/testDB";
		String user = "system";
		String pwd = "1234";
	} catch (Exception e) {
		System.out.println("오라클 연결 실패");
		e.printStackTrace();
	}
%>