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
<br><br>
	<h1 align="center">상품 목록</h1>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String cnt = "SELECT COUNT(*) FROM pMember";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			count = rs.getInt(1);
		}
		sql = "SELECT * FROM pMember";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<% out.println("총 " + count + "개의 상품이 있습니다."); %>
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
			while(rs.next()) {
				String id = rs.getString(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				String gender = rs.getString(4);
				String birth = rs.getString(5);
				String mail = rs.getString(6);
				String phone = rs.getString(7);
				String address = rs.getString(8);
				String titmestamp = rs.getString(9);
%>
			<tr>
				<td><%=id %></td>
				<td><%=name %></td>
				<td><%=password %></td>
				<td><%=gender %></td>
				<td><%=birth %></td>
				<td><%=mail %></td>
				<td><%=phone %></td>
				<td><%=address %></td>
				<td><%=titmestamp %></td>
				<td><a href="modify.jsp?id=<%=id %>">수정</a> / <a href="delete.jsp?id=<%=id %>">삭제</a></td>
			</tr>
<%
			}
%>
		</table>
		<div class="font"?>
			<input type="button" value="작성" onclick="location='addMember.jsp'">
		</div>
<%		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>