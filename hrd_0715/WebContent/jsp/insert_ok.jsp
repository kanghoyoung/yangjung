<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
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
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try {
		sql = "INSERT INTO productTbl VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, code);
		pstmt.setString(2, category);
		pstmt.setString(3, wname);
		pstmt.setString(4, pname);
		pstmt.setString(5, sname);
		pstmt.setInt(6, price);
		pstmt.setInt(7, downprice);
		pstmt.setString(8, date);
		pstmt.setInt(9, stock);
		pstmt.setString(10, memo);
		pstmt.executeUpdate();
%>
<script>
self.window.alert('저장했습니다.');
location.href="select.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null){
			pstmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		if(rs!=null){
			rs.close();
		}
	}
	
%>