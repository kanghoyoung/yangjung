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
<section>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT * FROM t_member_02";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
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
	while(rs.next()) {
		int custno = rs.getInt(1);
		String custname = rs.getString(2);
		String phone = rs.getString(3);
		String address = rs.getString(4);
		String joindate = rs.getString(5);
		String grade = rs.getString(6);
		String city = rs.getString(7);
		String joindate_substring = joindate.substring(0, 11);
%>
	<tr class="tr">
		<td><a href="modify.jsp?custno=<%=custno %>"><%=custno %></a></td>
		<td><%=custname %></td>
		<td><%=phone %></td>
		<td><%=address %></td>
		<td><%=joindate_substring %></td>
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
		<td><%=city %></td>
	</tr>
<%
	} // while

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
	}
%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>