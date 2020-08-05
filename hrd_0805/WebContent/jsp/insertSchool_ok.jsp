<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		String hakbun = request.getParameter("hakbun");
		String name = request.getParameter("name");
		String hakgwa = request.getParameter("hakgwa");
		String hakyen = request.getParameter("hakyen");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		sql = "INSERT INTO schoolTbl VALUES(?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hakbun);
		pstmt.setString(2, name);
		pstmt.setString(3, hakgwa);
		pstmt.setString(4, hakyen);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('등록이 완료 되었습니다!');
location.href="insertSchool.jsp";
</script>
<%
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