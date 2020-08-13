<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원정보조회</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try {
		sql = "SELECT * FROM insaTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<br><br><br>
<h1 align="center">직원 정보 조회</h1>
<br>
<table border="1">
	<tr>
		<th align="center">no</th>
		<th align="center">성명</th>
		<th align="center">사번</th>
		<th align="center">직급</th>
		<th align="center">직책</th>
		<th align="center">연락처</th>
		<th align="center">소속부서</th>
	</tr>
<%
	while(rs.next()) {
		int id = rs.getInt(1); // 사원번호
		String name = rs.getString(2); // 사원명
		String dept = rs.getString(3); // 소속부서
		String position = rs.getString(4); // 직급
		String duty = rs.getString(5); // 직책
		String phone = rs.getString(6); // 연락처
%>
	<tr>
		<td align="center"></td>
		<td align="center"><%=name %></td>
		<td align="center"><a href="modify.jsp?id=<%=id %>"><%=id %></a></td>
		<td align="center"><%=position %></td>
		<td align="center"><%=duty %></td>
		<td align="center"><%=phone %></td>
		<td align="center"><%=dept %></td>
	</tr>
<%
	}
%>
</table>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null) {
			conn.close();
		}
		if(rs!=null) {
			rs.close();
		}
		if(pstmt!=null) {
			pstmt.close();
		}
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>