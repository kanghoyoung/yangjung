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
<h1 align="center">학사정보 목록</h1>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		String sql_count = "SELECT COUNT(*) FROM schoolTbl";
		pstmt = conn.prepareStatement(sql_count);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	try {
		sql = "SELECT * FROM schoolTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
		<% out.println("총 " + count + "명의 학사정보가 있습니다."); %>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>성명</th>
				<th>학과</th>
				<th>학년</th>
				<th>주소</th>
				<th>연락처</th>
			</tr>
<%
	while(rs.next()) {
		int studno = rs.getInt(1); // 학번
		String name = rs.getString(2); // 성명
		int dept = rs.getInt(3); // 학과
		int position = rs.getInt(4); // 학년
		String address = rs.getString(5); // 주소
		String phone = rs.getString(6); // 연락처
%>
		<tr>
			<td><%=studno %></td>
			<td><%=name %></td>
			<td><%=dept %></td>
			<td><%=position %></td>
			<td><%=address %></td>
			<td><%=phone %></td>
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
<div class="center">
<br>
<input type="button" value="학사정보 추가" onclick="location='insertSchool.jsp'">
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>