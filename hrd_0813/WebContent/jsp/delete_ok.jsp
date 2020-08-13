<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String delete_sql = "";
	//int id = Integer.parseInt(request.getParameter("id"));
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	try {
		sql = "SELECT id, name FROM insaTbl WHERE id = ? and name = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		if(rs.next()) {
			String db_id = rs.getString("id");
			String db_name = rs.getString("name");
			if(id.equals(db_id) && name.equals(db_name)) {
				delete_sql = "DELETE FROM insaTbl WHERE id = ?";
				pstmt = conn.prepareStatement(delete_sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
%>
<script>
location.href="index.jsp";
</script>
<%
			} else {
%>
<script>
alert('성명과 사원번호가 일치하지 않습니다.');
location.href="delete.jsp";
</script>
<%
			}
		}
%>
<script>
alert('성명과 사원번호가 일치하지 않습니다.');
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
		if (rs != null) {
			rs.close();
		}
	}
%>