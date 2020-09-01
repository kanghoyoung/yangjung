<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String mail = request.getParameter("mail");
	String mail2 = request.getParameter("mail2");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	try {
		sql = "UPDATE member0824 SET password = ?, name = ?, gender = ?, birth = ?, mail = ?, phone = ?, address = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, gender);
		pstmt.setString(4, year + "-" + month + "-" + day);
		pstmt.setString(5, mail + "@" + mail2);
		pstmt.setString(6, phone);
		pstmt.setString(7, address);
		pstmt.setString(8, id);
		pstmt.executeUpdate();
%>
<script>
alert('수정되었습니다.');
location.href="selectMember.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
	}
%>