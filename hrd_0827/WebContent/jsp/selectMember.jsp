<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String cnt = "";
	int count = 0;
	try {
		cnt = "SELECT COUNT(*) FROM member0824";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">회원 목록</h1>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
	out.println("총 " + count + "명의 회원이 있습니다."); 
%>

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
	try {
		sql = "SELECT * FROM member0824";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

	while (rs.next()) {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String password = rs.getString("password");
		String gender = rs.getString("gender");
		String birth = rs.getString("birth");
		String mail = rs.getString("mail");
		String phone = rs.getString("phone");
		String address = rs.getString("address");
		String titmestamp = rs.getString("titmestamp");
		String sub_titmestamp = titmestamp.substring(0, 10);

%>
		<tr>
			<td align="center"><%=id %></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=password %></td>
			<td align="center"><%=gender %></td>
			<td align="center"><%=birth %></td>
			<td align="center"><%=mail %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=address %></td>
			<td align="center"><%=sub_titmestamp %></td>
			<td align="center"><a href="modify.jsp?id=<%=id %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?id=<%=id %>">삭제</a></td>
		</tr>
<%

	} // while
		
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
<br>
<div class="center">
	<input type="button" value="작성" onclick="location='addMember.jsp'">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>