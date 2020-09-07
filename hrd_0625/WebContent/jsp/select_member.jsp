<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT * FROM member_tbl_02";
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
<title>회원목록조회/수정</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">회원목록조회/수정</h1>
<br>
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>가입일자</th>
			<th>고객등급</th>
			<th>거주지역</th>
		</tr>
<%
		while (rs.next()) {
			String custno = rs.getString(1);
			String name = rs.getString(2);
			String phone = rs.getString(3);
			String address = rs.getString(4);
			String join = rs.getString(5);
			String grade = rs.getString(6);
			String city = rs.getString(7);
			String sub_join = join.substring(0, 11);
%>
		<tr>
			<td align="center"><a href="modify_member.jsp?custno=<%=custno %>"><%=custno %></a></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=address %></td>
			<td align="center"><%=sub_join %></td>
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
			<td align="center"><%=city %></td>
		</tr>
<%
		} // while
%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>