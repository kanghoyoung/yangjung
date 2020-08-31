<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
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
	<div class="section">
		<b>회원목록조회/수정</b>
	</div>
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
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT * FROM member0827";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String custno = rs.getString(1);
			String custname = rs.getString(2);
			String phone = rs.getString(3);
			String address = rs.getString(4);
			String joindate = rs.getString(5);
			String grade = rs.getString(6);
			String city = rs.getString(7);
			String sub_joindate = joindate.substring(0, 10);
			
%>
		<tr>
			<td align="center"><a href="modify.jsp?custno=<%=custno %>"><%=custno %></a></td>
			<td align="center"><%=custname %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=address %></td>
			<td align="center"><%=sub_joindate %></td>
			<td align="center"><%=grade %></td>
			<td align="center"><%=city %></td>
		</tr>
<%
			
		} //while
%>
	</table>
<% 
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>