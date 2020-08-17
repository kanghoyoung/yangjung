<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>도서 예약 정보 조회</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">도서 예약정보 조회</h1>
<br>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String cnt = "";
	int count = 0;
	try {
		cnt = "SELECT COUNT(*) FROM reservation_tbl";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	out.println("총 " + count + "권의 도서 예약 정보가 있습니다.");
%>
	<table border="1">
		<tr>
			<th>no</th>
			<th>대출번호</th>
			<th>고객성명</th>
			<th>도서코드</th>
			<th>도서명</th>
			<th>대출일자</th>
			<th>반납일자</th>
			<th>대출상태</th>
			<th>등급</th>
		</tr>
<%
	int no = 0;
	try {
		sql = "SELECT a.lentno, a.custname, a.bookno, b.bookname, a.outdate, a.indate, a.status, a.class  FROM reservation_tbl a, bookinfo_tbl b WHERE a.bookno = b.bookno";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			no++;
			String lentno = rs.getString("lentno");
			String custname = rs.getString("custname");
			String bookno = rs.getString("bookno");
			String bookname = rs.getString("bookname");
			String outdate = rs.getString("outdate");
			String indate = rs.getString("indate"); // 반납일자
			String status = rs.getString("status");
			String _class = rs.getString("class");
			
			String sub_outdate = outdate.substring(0, 10);
			//String sub_indate = indate.substring(0, 10); // null
%>
	<tr>
		<td align="center"><%=no %></td>
		<td align="center"><%=lentno %></td>
		<td align="center"><%=custname %></td>
		<td align="center"><%=bookno %></td>
		<td align="center"><%=bookname %></td>
		<td align="center"><%=sub_outdate %></td>
		<td align="center"><%=indate %></td>
		<td align="center"><%=status %></td>
		<td align="center"><%=_class %></td>
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
	<input type="button" value="도서 정보 추가" onclick="location='insert_out.jsp'">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>