<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	int code = Integer.parseInt(request.getParameter("code"));
	String category = request.getParameter("category");
	String wname = request.getParameter("wname");
	String pname = request.getParameter("pname");
	String sname = request.getParameter("sname");
	int price = Integer.parseInt(request.getParameter("price"));
	int downprice = Integer.parseInt(request.getParameter("downprice"));
	String date = request.getParameter("date");
	int stock = Integer.parseInt(request.getParameter("stock"));
	String memo = request.getParameter("memo");
	
	PreparedStatement pstmt = null;
	String sql = "";
	
	try {
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null){
			pstmt.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
	
%>