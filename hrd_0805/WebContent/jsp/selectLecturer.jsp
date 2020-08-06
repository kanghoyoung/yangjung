<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 목록</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">교과목 목록</h1>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String sql_count = "SELECT COUNT(*) FROM teachertbl";
		pstmt = conn.prepareStatement(sql_count);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		sql = "SELECT * FROM teachertbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
	<% out.println("총 " + count + "명의 강사가 있습니다."); %>
	<table border="1">
		<tr>
			<th>강사코드</th>
			<th>강사명</th>
			<th>전공</th>
			<th>세부전공</th>
			<th>관리</th>
		</tr>
<%
	while(rs.next()) {
		int idx = rs.getInt(1);
		String name = rs.getString(2);
		String major = rs.getString(3);
		String field = rs.getString(4);
%>
		<tr>
			<td><%=idx %></td>
			<td><%=name %></td>
			<td><%=major %></td>
			<td><%=field %></td>
			<td><a href="modify_lecturer.jsp?idx=<%=idx %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete_lecturer.jsp?idx=<%=idx %>">삭제</a></td>
		</tr>
<%
	}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null){
			conn.close();
		}
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
	}
%>
</table>
<br>
<div class="center">
	<input type="button" value="작성" onclick="location='insertLecturer.jsp'">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>