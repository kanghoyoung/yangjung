<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String code = request.getParameter("code");
	String subject_name = request.getParameter("gwamok");
	int credit = Integer.parseInt(request.getParameter("score"));
	String lecturer = request.getParameter("lecturer");
	int week = Integer.parseInt(request.getParameter("week"));
	int start = Integer.parseInt(request.getParameter("start"));
	int end = Integer.parseInt(request.getParameter("end"));
	try {
		sql = "UPDATE subTbl SET subject_name = ?, credit = ?, lecturer = ?, week = ?, start_hour = ?, end_hour = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, subject_name);
		pstmt.setInt(2, credit);
		pstmt.setString(3, lecturer);
		pstmt.setInt(4, week);
		pstmt.setInt(5, start);
		pstmt.setInt(6, end);
		pstmt.setString(7, code);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('수정되었습니다.');
location.href="selectGwamok.jsp";
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