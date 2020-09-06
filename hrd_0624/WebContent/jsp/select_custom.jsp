<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">고객 정보 조회</h1>
<br>
	<table border="1">
		<tr>
			<td align="center">id</td>
			<td align="center">성명</td>
			<td align="center">패스워드</td>
			<td align="center">성별</td>
			<td align="center">이메일</td>
			<td align="center">휴대폰</td>
			<td align="center">전화번호</td>
			<td align="center">주 소</td>
			<td align="center">차량번호</td>
			<td align="center">차량종류</td>
		</tr>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		sql = "SELECT * FROM custom_member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(2);
			String pwd = rs.getString(3);
			String gender = rs.getString(4);
			String email = rs.getString(5);
			String phone = rs.getString(6);
			String tel = rs.getString(7);
			String address = rs.getString(8);
			String carNum = rs.getString(9);
			String carType = rs.getString(10);
%>
		<tr>
			<td align="center"><%=id %></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=pwd %></td>
			<td align="center"><%=gender %></td>
			<td align="center"><%=email %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=tel %></td>
			<td align="center"><%=address %></td>
			<td align="center"><%=carNum %></td>
			<td align="center"><%=carType %></td>
		</tr>
<%
		} // while
%>
	</table>
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
		if (rs != null) {
			rs.close();
		}
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>