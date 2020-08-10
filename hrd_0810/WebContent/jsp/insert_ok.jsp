<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String form_id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joinDate = request.getParameter("joinDate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	try {
		sql = "INSERT INTO t_member_02 VALUES(?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, form_id);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, joinDate);
		pstmt.setString(6, grade);
		pstmt.setString(7, city);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('회원등록이 완료 되었습니다!');
location.href="insert.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(conn!=null) {
			conn.close();
		}
	}
%>