<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth"); // year
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String email1 = request.getParameter("eamil1"); // @ 전 문자
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	try {
		sql = "UPDATE pMember SET password = ?, name = ?, gender = ?, birth = ?, mail = ?, phone = ?, address = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, gender);
		pstmt.setString(4, birth + "-" + month + "-" + day);
		pstmt.setString(5, email1 + "@" + email);
		pstmt.setString(6, phone);
		pstmt.setString(7, address);
		pstmt.setInt(8, id);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('완료되었습니다.');
location.href="selectMember.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
	}
%>