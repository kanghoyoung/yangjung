<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int lecturerId = Integer.parseInt(request.getParameter("lecturerId"));
	String lecturerName = request.getParameter("lecturerName");
	String major = request.getParameter("major");
	String detailMajor = request.getParameter("detailMajor");
	try {
		sql = "UPDATE teachertbl SET name = ?, major = ?, field = ? WHERE idx = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, lecturerName);
		pstmt.setString(2, major);
		pstmt.setString(3, detailMajor);
		pstmt.setInt(4, lecturerId);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('수정되었습니다.');
location.href="selectLecturer.jsp";
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