<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	String sql = "";
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	String score = request.getParameter("score");
	String lecturer = request.getParameter("lecturer");
	String week = request.getParameter("week");
	String start = request.getParameter("start");
	String end = request.getParameter("end");
	try {
		sql = "UPDATE course_tbl SET name = ?, credit = ?, lecturer = ?, week = ?, start_hour = ?, end_end = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, score);
		pstmt.setString(3, lecturer);
		pstmt.setString(4, week);
		pstmt.setString(5, start);
		pstmt.setString(6, end);
		pstmt.setString(7, code);
		pstmt.executeUpdate();
%>
<script>
alert('수정되었습니다');
location.href="index.jsp";
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
	}
%>