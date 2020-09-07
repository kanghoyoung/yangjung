<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		sql = "SELECT COUNT(*) FROM course_tbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
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
<title>수강신청 조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">교과목 목록</h1>
<br>
<% 
	for (int i=0; i<15; i++) {
%>
&nbsp;
<%
	}

	out.println("총 " + count + "개의 교과목이 있습니다."); 
%>
	<table border="1">
		<tr>
			<th>과목코드</th>
			<th>과목명</th>
			<th>학점</th>
			<th>담당강사</th>
			<th>요일</th>
			<th>시작시간</th>
			<th>종료시간</th>
			<th>관리</th>
		</tr>
<%
	try {
		sql = "SELECT * FROM course_tbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(2);
			String credit = rs.getString(3);
			String lecturer = rs.getString(4);
			String week = rs.getString(5);
			String start = rs.getString(6);
			String end = rs.getString(7);
%>
		<tr>
			<td align="center"><%=id %></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=credit %></td>
			<td align="center">
<%
		if (lecturer.equals("1") || lecturer.equals("김교수")) {
			out.println("김교수");
		} else if (lecturer.equals("2") || lecturer.equals("이교수")) {
			out.println("이교수");
		} else if (lecturer.equals("3") || lecturer.equals("박교수")) {
			out.println("박교수");
		} else if (lecturer.equals("4") || lecturer.equals("우교수")) {
			out.println("우교수");
		} else if (lecturer.equals("5") || lecturer.equals("최교수")) {
			out.println("최교수");
		} else if (lecturer.equals("6") || lecturer.equals("강교수")) {
			out.println("강교수");
		} else if (lecturer.equals("7") || lecturer.equals("황교수")) {
			out.println("황교수");
		}
%>
			</td>
			<td align="center"><%=week %></td>
			<td align="center"><%=start %></td>
			<td align="center"><%=end %></td>
			<td align="center"><a href="modify.jsp?id=<%=id %>">수정</a> / <a href="delete.jsp?id=<%=id %>">삭제</a></td>
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
<br>
	<div class="center">
		<input type="button" value="작성" onclick="location.href='insert.jsp'">
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>