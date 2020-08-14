<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 정보 조회</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">학사정보 목록</h1>
<br>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String cnt = "";
	int count = 0;
	try {
		cnt = "SELECT COUNT(*) FROM bookinfo_tbl";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		sql = "SELECT * FROM bookinfo_tbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
		<% out.println("총 " + count + "권의 도서정보가 있습니다."); %>
		<table border="1">
			<tr>
				<th>no</th>
				<th>도서코드</th>
				<th>저자</th>
				<th>도 서 명</th>
			</tr>
<%
	int no = 0;
	while(rs.next()) {
		no++;
		int bookno = rs.getInt(1);
		String author = rs.getString(2);
		String bookname = rs.getString(3);
%>
			<tr>
				<td align="center"><%=no %></td>
				<td align="center"><%=bookno %></td>
				<td align="center"><%=author %></td>
				<td align="center"><%=bookname %></td>
			</tr>
<%
	} // while
	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>
</table>
<br>
	<div class="center">
		<input type="button" value="도서 정보 추가" onclick="location='insert_book.jsp'">
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>