<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<br><br><br>
<h2 align="center">회원매출조회</h2>
<br>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	sql = "SELECT a.custno, a.custname, a.grade, b.price FROM t_member_02 a, t_money_tbl_02 b WHERE a.custno = b.custno GROUP BY a.custno, a.custname, a.grade, b.price ORDER BY 1,2";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<table border="1">
	<tr>
		<th>회원번호</th>
		<th>회원성명</th>
		<th>고객등급</th>
		<th>매출</th>
	</tr>
<%
	while(rs.next()){
		int custno = rs.getInt("custno");
		String custname = rs.getString("custname");
		String grade = rs.getString("grade");
		String price = rs.getString("price");
%>
	<tr class="tr">
		<td><%=custno %></td>
		<td><%=custname %></td>
		<td>
<%
			if(grade.equals("A")) {
				out.println("VIP");
			} else if (grade.equals("B")) {
				out.println("일반");
			} else if (grade.equals("C")) {
				out.println("직원");
			}
%>		
		</td>
		<td><%=price %></td>
	</tr>
<%
	}
%>
</table>
<section>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>