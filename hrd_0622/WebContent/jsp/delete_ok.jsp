<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String delete_sql = "";
	String db_id = "";
	String db_name = "";
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	try {
		sql = "SELECT * FROM personnel WHERE id = ? and name = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
		
	try {
		if (rs.next()) {
			db_id = rs.getString("id");
			db_name = rs.getString("name");
			if(id.equals(db_id) && name.equals(db_name)) {
				delete_sql = "DELETE FROM personnel WHERE id = ?";
				pstmt = conn.prepareStatement(delete_sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
%>
<script>
alert('삭제되었습니다.')
location.href="index.jsp";
</script>
<%
			} else {
%>
<script>
alert('사번과 비밀번호가 틀립니다.');
location.href="delete.jsp";
</script>
<%
			}
		} else {
%>
<script>
alert('사번이 존재하지 않습니다.');
location.href="delete.jsp";
</script>
<%
		}
		
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