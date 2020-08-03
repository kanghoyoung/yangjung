<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	String sql = "";
	String dunggub = request.getParameter("dunggub");
	String salary = request.getParameter("salary");
	try {
		sql = "INSERT INTO hobongTbl VALUES(?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dunggub);
		pstmt.setString(2, salary);
		pstmt.executeUpdate();
%>
		<script>
			alert('등록되었습니다.');
			location.href="hobong_insert.jsp";
		</script>
<%	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>