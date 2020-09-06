<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	String sql = "";
	String partCode = request.getParameter("partCode");
	String partName = request.getParameter("partName");
	String model = request.getParameter("model");
	String standard = request.getParameter("standard");
	String unit = request.getParameter("unit");
	String purchase = request.getParameter("purchase");
	String sales = request.getParameter("sales");
	String memo = request.getParameter("memo");
	try {
		sql = "INSERT INTO partTbl VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, partCode);
		pstmt.setString(2, partName);
		pstmt.setString(3, model);
		pstmt.setString(4, standard);
		pstmt.setString(5, unit);
		pstmt.setString(6, purchase);
		pstmt.setString(7, sales);
		pstmt.setString(8, memo);
		pstmt.executeUpdate();
%>
<script>
alert('등록되었습니다.');
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
	}
%>