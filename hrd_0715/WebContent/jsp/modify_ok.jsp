<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int code = Integer.parseInt(request.getParameter("code"));
	String category = request.getParameter("category");
	String wname = request.getParameter("wname");
	String pname = request.getParameter("pname");
	String sname = request.getParameter("sname");
	int price = Integer.parseInt(request.getParameter("price"));
	int downprice = Integer.parseInt(request.getParameter("downprice"));
	String date = request.getParameter("date");
	int stock = Integer.parseInt(request.getParameter("stock"));
	String memo = request.getParameter("memo");
	try {
		sql = "UPDATE productTbl SET category = ?, wname = ?, pname = ?, sname = ?, price = ?, downprice = ?, inputdate = ?, stock = ?, description = ? WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, category);
		pstmt.setString(2, wname);
		pstmt.setString(3, pname);
		pstmt.setString(4, sname);
		pstmt.setInt(5, price);
		pstmt.setInt(6, downprice);
		pstmt.setString(7, date);
		pstmt.setInt(8, stock);
		pstmt.setString(9, memo);
		pstmt.setInt(10, code);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('수정되었습니다.');
location.href="select.jsp";
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