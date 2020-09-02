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
	
	String tmp = "";
	if (hobby != null) {
		for(int i=0; i<hobby.length; i++) {
			if (i==hobby.length-1) {
				tmp += hobby[i];
			} else {
				tmp += hobby[i] + ",";
			}
		} //for
	} // if
	
	try {
		sql = "UPDATE stud0902 SET name = ?, dept = ?, position = ?, address = ?, phone = ?, hobby = ? WHERE studno = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, hakgwa);
		pstmt.setString(3, hakyen);
		pstmt.setString(4, address);
		pstmt.setString(5, phone);
		pstmt.setString(6, tmp);
		pstmt.setString(7, hakbun);
		pstmt.executeUpdate();
%>
<script>
alert('수정되었습니다.');
location.href="select_stud.jsp";
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