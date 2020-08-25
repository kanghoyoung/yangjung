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
	String passwd = request.getParameter("passwd");
	String gender = request.getParameter("gender");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String email = request.getParameter("email");
	String email2 = request.getParameter("email2");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	try {
		
		sql = "INSERT INTO member0824 VALUES(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, year + "-" + month + "-" + day);
		pstmt.setString(6, email + "@" + email2);
		pstmt.setString(7, phone);
		pstmt.setString(8, address);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('입력되었습니다.');
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
		if(rs != null) {
			rs.close();
		}
	}
%>