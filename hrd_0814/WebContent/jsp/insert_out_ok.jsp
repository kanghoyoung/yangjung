<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	
	String lentno = request.getParameter("lentno");
	String custname = request.getParameter("custname");
	String bookno = request.getParameter("bookno");
	String bookname = request.getParameter("bookname");
	String outdate = request.getParameter("outdate");
	String indate = request.getParameter("indate");
	String status = request.getParameter("status");
	String select_class = request.getParameter("select_class");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	try {
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		
	}
%>