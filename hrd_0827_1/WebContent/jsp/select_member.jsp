<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
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
	<div class="section">
		<b>회원매출조회</b>
	</div>
	<br>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT a.custno, b.custname, b.grade, SUM(a.price) from money0827 a, member0827 b WHERE a.custno=b.custno group by a.custno, b.custname, b.grade order by SUM(a.price) desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String custno = rs.getString(1);
			String custname = rs.getString(2);
			String grade = rs.getString(3);
			String price = rs.getString(4);
%>
		<tr>
			<td align="center"><%=custno %></td>
			<td align="center"><%=custname %></td>
			<td align="center">
<%
			if (grade.equals("A")) {
				out.println("VIP");
			} else if (grade.equals("B")) {
				out.println("일반");
			} else if (grade.equals("C")) {
				out.println("직원");
			}
%>
			</td>
			<td align="center"><%=price %></td>
		</tr>
<%
		} //while
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>