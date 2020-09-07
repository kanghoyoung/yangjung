<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT a.custno, b.custname, b.grade, SUM(a.price) FROM money_tbl_02 a, member_tbl_02 b WHERE a.custno=b.custno GROUP BY a.custno, b.custname, b.grade ORDER BY SUM(a.price) DESC";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">회원매출조회</h1>
<br>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
<%
	while (rs.next()) {
		String custno = rs.getString(1);
		String custname = rs.getString(2);
		String grade = rs.getString(3);
		String price = rs.getString(4);
%>
		<tr>
			<td align="center"><%=custno %></td>
			<td align="center"><%=custname %></td>
			<td align="center"><%=grade %></td>
			<td align="center"><%=price %></td>
		</tr>
<%
	} // while
%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>