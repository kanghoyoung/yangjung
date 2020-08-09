<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	String code = request.getParameter("code");
	String orderName = request.getParameter("orderName");
	String date = request.getParameter("date");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String pay = request.getParameter("pay");
	String card = request.getParameter("card");
	String orderCount = request.getParameter("orderCount");
	String orderPrice = request.getParameter("orderPrice");
	
	try {
		String sql2 = "SELECT id FROM orderTbl1 WHERE id = ?";
		pstmt = conn.prepareStatement(sql2);
		pstmt.setString(1, code);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		
		if(rs.next()) {
			
			String db_code = rs.getString("id");
			
			if(code.equals(db_code)) {
			
				sql = "INSERT INTO orderTbl1 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, code);
				pstmt.setString(2, orderName);
				pstmt.setString(3, date);
				pstmt.setString(4, tel);
				pstmt.setString(5, address);
				pstmt.setString(6, pay);
				pstmt.setString(7, card);
				pstmt.setString(8, orderCount);
				pstmt.setString(9, orderPrice);
				pstmt.executeUpdate();
%>
				<script>
				self.window.alert('완료되었습니다.');
				location.href="order.jsp";
				</script>
<%
			} else {
%>
				<script>
				alert('등록되지 않은 코드입니다.');
				history.back();
				</script>
<%
			}
		}
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