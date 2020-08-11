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
	int db_id = 0;
	String db_password = "";
	String name = "";
	String gender = "";
	String birth = "";
	String mail = "";
	String phone = "";
	String address = "";
	String nickname = "";
	
	try {
		sql = "SELECT * FROM member0811";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<h1 align="center">회원 정보 조회</h1>
<br>
<table border="1">
	<tr>
		<th>id</th>
		<th>성명</th>
		<th>패스워드</th>
		<th>성별</th>
		<th>생년월일</th>
		<th>이메일</th>
		<th>휴대폰</th>
		<th>주 소</th>
		<th>닉네임</th>
	</tr>
<%
		while(rs.next()) {
			db_id = rs.getInt(1);
			db_password = rs.getString(2);
			name = rs.getString(3);
			gender = rs.getString(4);
			birth = rs.getString(5);
			mail = rs.getString(6);
			phone = rs.getString(7);
			address = rs.getString(8);
			nickname = rs.getString(9);
%>
	<tr>
		<td><%=db_id %></td>
		<td><%=name %></td>
		<td><%=db_password %></td>
		<td><%=gender %></td>
		<td><%=birth %></td>
		<td><%=mail %></td>
		<td><%=phone %></td>
		<td><%=address %></td>
		<td><%=nickname %></td>
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