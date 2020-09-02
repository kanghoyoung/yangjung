<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql_cnt = "";
	String sql = "";
	int cnt = 0;
	try {
		sql_cnt = "SELECT COUNT(*) FROM stud0902";
		pstmt = conn.prepareStatement(sql_cnt);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			cnt = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사정보 목록</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">학사정보 목록</h1>
<br>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>성명</th>
			<th>학과</th>
			<th>학년</th>
			<th>주소</th>
			<th>연락처</th>
			<th>취미</th>
			<th>관리</th>
		</tr>
<%
	out.println("총 " + cnt + "명의 학사정보가 있습니다.");
	try {
		sql = "SELECT * FROM stud0902";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	while (rs.next()) {
		String studno = rs.getString(1);
		String name = rs.getString(2);
		String dept = rs.getString(3);
		String position = rs.getString(4);
		String address = rs.getString(5);
		String phone = rs.getString(6);
		String hobby = rs.getString(7);
%>
		<tr>
			<td align="center"><%=studno %></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=dept %></td>
			<td align="center"><%=position %></td>
			<td align="center"><%=address %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=hobby %></td>
			<td align="center"><a href="stud_modify.jsp?studno=<%=studno %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="stud_delete.jsp?studno=<%=studno %>">삭제</a></td>
		</tr>
<%
	} // while
	
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
	</table>
	<br>
	<div class="center">
		<input type="button" value="학사정보 추가" onclick="location='insert_stud.jsp'">
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>