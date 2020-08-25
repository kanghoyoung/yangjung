<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String cnt = "SELECT COUNT(*) FROM member0824";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		sql = "SELECT * FROM member0824";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/main.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section>
<h1 align="center">회원목록</h1>
<%out.println("총 " + count + "명의 회원이 있습니다."); %>

	<table border="1">
		<tr>
			<th>아이디</th>
			<th>성 명</th>
			<th>비밀번호</th>
			<th>성별</th>
			<th>생년월일</th>
			<th>이메일</th>
			<th>연락처</th>
			<th>주소</th>
			<th>입력일</th>
			<th>구분</th>
		</tr>
<%
		while (rs.next()) {
			int id = rs.getInt(1);
			String passwd = rs.getString(2);
			String name = rs.getString(3);
			String gender = rs.getString(4);
			String birth = rs.getString(5);
			String mail = rs.getString(6);
			String phone = rs.getString(7);
			String address = rs.getString(8);
			String time = rs.getString(9);
			String sub_time = time.substring(0, 10);
%>
		<tr>
			<td><%=id %></td>
			<td><%=name %></td>
			<td><%=passwd %></td>
			<td><%=gender %></td>
			<td><%=birth %></td>
			<td><%=mail %></td>
			<td><%=phone %></td>
			<td><%=address %></td>
			<td><%=sub_time %></td>
			<td><a href="modify.jsp">수정</a> / <a href="delete.jsp">삭제</a></td>
		</tr>
<%
		} // while
%>
	</table>
	
</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>