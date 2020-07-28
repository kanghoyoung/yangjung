<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	String sql = "";
	try {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String email1 = request.getParameter("eamil1");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		sql = "INSERT INTO pMember VALUES(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, birth + "-" + month + "-" + day);
		pstmt.setString(6, email1 + "@" + email);
		pstmt.setString(7, phone);
		pstmt.setString(8, address);
		pstmt.executeUpdate();
%>
<script>
		alert('등록되었습니다.');
		location.href="selectMember.jsp";
</script>
<%
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