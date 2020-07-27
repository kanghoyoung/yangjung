<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String password_ok = request.getParameter("password_ok");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String day = request.getParameter("day");
		String eamil1 = request.getParameter("eamil1");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		sql = "INSERT INTO pMember values(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		pstmt = conn.prepareStatement(sql);
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null){
			conn.close();
		}
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
	}
%>