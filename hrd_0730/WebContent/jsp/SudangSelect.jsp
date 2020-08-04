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
<h1 align="center">수당 정보 조회</h1>

<table border="1">
	<tr>
		<th>no</th>
		<th>사원번호</th>
		<th>이름</th>
		<th>가족수당</th>
		<th>직책수당</th>
		<th>근속수당</th>
		<th>기타수당</th>
		<th>수당합계</th>
		<th>구 분</th>
	</tr>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql_1 = "";
	String sql_2 = "";
	
	try {
		sql_1 = "SELECT * FROM infoTbl";
		pstmt = conn.prepareStatement(sql_1);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String id = rs.getString("id");
			String name = rs.getString("name");
%>
		<tr>
			<td></td>
			<td><%=id %></td>
			<td><%=name %></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
<%
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	PreparedStatement pstmt2 = null;
	ResultSet rs2 = null;
	
	try {
		
		sql_2 = "SELECT * FROM sudangTbl";
		pstmt2 = conn.prepareStatement(sql_2);
		rs2 = pstmt2.executeQuery();
		
		while (rs2.next()) {
			String gajok = rs2.getString("gajok");
			String jikchak = rs2.getString("jikchak");
			String gunsok = rs2.getString("gunsok");
			String gitasudang = rs2.getString("gitasudang");
			
%>
		<tr>
		<td></td>
		<td></td>
		<td></td>
			<td><%=gajok %></td>
			<td><%=jikchak %></td>
			<td><%=gunsok %></td>
			<td><%=gitasudang %></td>
			<td></td>
			<td><a href="#">수정</a> / <a href="#">삭제</a></td>
		</tr>
<%
		}

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
		
		if(pstmt2 != null) {
			pstmt.close();
		}
		
		if(rs2 != null) {
			rs.close();
		}
		
	}
%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>