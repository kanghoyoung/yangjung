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
		sql = "INSERT INTO course_tbl VALUES (?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		pstmt.setString(2, name);
		pstmt.setString(3, score);
		pstmt.setString(4, lecturer);
		pstmt.setString(5, week);
		pstmt.setString(6, start);
		pstmt.setString(7, end);
		pstmt.executeUpdate();
%>
<script>
alert('완료되었습니다.');
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