<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		String code = request.getParameter("code");
		String gwamok = request.getParameter("gwamok");
		String score = request.getParameter("score");
		String lecturer = request.getParameter("lecturer");
		String week = request.getParameter("week");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		sql = "INSERT INTO subTbl VALUES(?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		pstmt.setString(2, gwamok);
		pstmt.setString(3, score);
		pstmt.setString(4, lecturer);
		pstmt.setString(5, week);
		pstmt.setString(6, start);
		pstmt.setString(7, end);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('완료되었습니다.');
location.href="insertGwamok.jsp";
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