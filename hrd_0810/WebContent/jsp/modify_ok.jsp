<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int db_id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joinDate = request.getParameter("joinDate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	try {
		sql = "UPDATE t_member_02 SET custname = ?, phone = ?, address = ?, joindate = ?, grade = ?, city = ? WHERE custno = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setString(3, address);
		pstmt.setString(4, joinDate);
		pstmt.setString(5, grade);
		pstmt.setString(6, city);
		pstmt.setInt(7, db_id);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('회원정보수정이 완료되었습니다!');
location.href="select.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
	}
%>