<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	String bname = request.getParameter("book_name");
	String sql = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		sql = "INSERT INTO bookinfo_tbl VALUES(?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		pstmt.setString(2, name);
		pstmt.setString(3, bname);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('등록이 완료되었습니다!');
location.href="index.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>