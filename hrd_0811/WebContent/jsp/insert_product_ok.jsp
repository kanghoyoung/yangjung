<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	int price = Integer.parseInt(request.getParameter("price"));
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	int unitsInstock = Integer.parseInt(request.getParameter("unitsInstock"));
	String condition = request.getParameter("condition");
	try {
		sql = "INSERT INTO product0811 VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, code);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, description);
		pstmt.setString(5, manufacturer);
		pstmt.setString(6, category);
		pstmt.setInt(7, unitsInstock);
		pstmt.setString(8, condition);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('등록이 완료되었습니다');
location.href="insert_product.jsp";
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