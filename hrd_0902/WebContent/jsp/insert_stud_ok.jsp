<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	String hakgwa = request.getParameter("hakgwa");
	String hakyen = request.getParameter("hakyen");
	String[] hobby = request.getParameterValues("hobby");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	try {
		sql = "INSERT INTO stud0902 VALUES (?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hakbun);
		pstmt.setString(2, name);
		pstmt.setString(3, hakgwa);
		pstmt.setString(4, hakyen);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		for(int i=0; i<hobby.length; i++) {
			pstmt.setString(7, hobby[i]);
		} //for
		pstmt.executeUpdate();
%>
<script>
alert('입력되었습니다.');
location.href="index.jsp"
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (rs != null) {
			rs.close();
		}
	}
%>