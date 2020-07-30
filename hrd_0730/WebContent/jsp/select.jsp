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
<h2 align="center">사원 정보 조회</h2>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int seq = 0;
	
	try {
		String _seq = "SELECT info_seq.nextval FROM dual";
		pstmt = conn.prepareStatement(_seq);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			seq = rs.getInt(1);
		}
		
		sql = "SELECT * FROM infoTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
	<table border="1">
		<tr>
			<th>no</th>
			<th>성명</th>
			<th>사번</th>
			<th>직급</th>
			<th>직책</th>
			<th>연락처</th>
			<th>소속부서</th>
			<th>주소</th>
		</tr>
<%
		while(rs.next()) {
			String name = rs.getString("name"); // 이름
			String id = rs.getString("id"); // 사원번호
			String position = rs.getString("position"); // 직급
			String duty = rs.getString("duty"); // 직책
			String phone = rs.getString("phone"); // 연락처
			String address = rs.getString("address"); // 주소
%>
		<tr>
			<td><%=seq %></td>
			<td><%=name %></td>
			<td><a href="modify.jsp?id=<%=id %>"><%=id %></a></td>
			<td><%=position %></td>
			<td><%=duty %></td>
			<td><%=phone %></td>
			<td>
<%
			if(position.equals("1")) {
%>
			인사부
<%
			} else if(position.equals("2")) {
%>
			기획부
<%
			} else if(position.equals("3")) {
%>
			홍보부
<%
			} else if(position.equals("4")) {
%>
			영업부
<%
			} else if(position.equals("5")) {
%>
			경리부
<%
			}
%>
			</td>
			<td><%=address %></td>
		</tr>
<%
		}
%>
	</table>
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