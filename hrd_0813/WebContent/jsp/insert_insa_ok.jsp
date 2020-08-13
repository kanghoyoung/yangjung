<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String name = request.getParameter("name");
	String dept = request.getParameter("dept");
	String position = request.getParameter("position");
	String duty = request.getParameter("duty");
	String phone = request.getParameter("phone");
	try {
		sql = "INSERT INTO insaTbl VALUES(insa_seq.nextval, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, dept);
		pstmt.setString(3, position);
		pstmt.setString(4, duty);
		pstmt.setString(5, phone);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('등록되었습니다.');
location.href="insert_insa.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(conn!=null) {
			conn.close();
		}
	}
%>