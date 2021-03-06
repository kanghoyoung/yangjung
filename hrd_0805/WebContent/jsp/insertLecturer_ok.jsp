<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		String lecturerName = request.getParameter("lecturerName");
		String major = request.getParameter("major");
		String detailMajor = request.getParameter("detailMajor");
		sql = "INSERT INTO teachertbl VALUES(lecturer_seq.nextval, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, lecturerName);
		pstmt.setString(2, major);
		pstmt.setString(3, detailMajor);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('완료되었습니다.');
location.href="insertLecturer.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null){
			pstmt.close();
		}
		if(rs!=null){
			rs.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
%>