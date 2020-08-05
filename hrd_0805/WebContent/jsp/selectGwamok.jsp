<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">교과목 조회</h1>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String sql_count = "SELECT COUNT(*) FROM subTbl";
		pstmt = conn.prepareStatement(sql_count);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		sql = "SELECT * FROM subTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
		<% out.println("총 " + count + "개의 교과목이 있습니다."); %>
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
		while(rs.next()) {
			String code = rs.getString(1);
			String subject_name = rs.getString(2);
			int credit = rs.getInt(3);
			String lecturer = rs.getString(4);
			int week = rs.getInt(5);
			int start = rs.getInt(6);
			int end = rs.getInt(7);
%>
			<tr>
				<td><%=code %></td>
				<td><%=subject_name %></td>
				<td><%=credit %></td>
				<td>
<%
					if(lecturer.equals("1")) {
						out.println("김교수");
					} else if(lecturer.equals("2")) {
						out.println("이교수");
					} else if(lecturer.equals("3")) {
						out.println("박교수");
					} else if(lecturer.equals("4")) {
						out.println("우교수");
					} else if(lecturer.equals("5")) {
						out.println("최교수");
					} else if(lecturer.equals("6")) {
						out.println("강교수");
					} else if(lecturer.equals("7")) {
						out.println("황교수");
					}
%>
				</td>
				<td><%=week %></td>
				<td><%=start %></td>
				<td><%=end %></td>
				<td><a href="modify_gwamok.jsp?code=<%=code %>">수정</a> / <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="modify_delete.jsp?code=<%=code %>">삭제</a></td>
			</tr>
<%
	}
%>
<%
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>