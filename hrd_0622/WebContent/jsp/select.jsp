<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	try {
		sql = "SELECT * FROM personnel";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원정보조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
	<div class="section">
		직원 정보 조회
	</div>
	<br>
	<table border="1">
		<tr>
			<th>no</th>
			<th>성명</th>
			<th>사번</th>
			<th>직급</th>
			<th>직책</th>
			<th>연락처</th>
			<th>소속부서</th>
		</tr>
<% 
		while (rs.next()) {
			String id = rs.getString(1); // 사번
			String name = rs.getString(2); // 성명
			String dept = rs.getString(3); // 소속부서
			String position = rs.getString(4); //직급
			String duty = rs.getString(5); // 직책
			String phone = rs.getString(6); // 연락처
			cnt++;
			
%>
		<tr>
			<td align="center"><%=cnt %></td>
			<td align="center"><%=name %></td>
			<td align="center"><a href="modify.jsp?id=<%=id %>"><%=id %></a></td>
			<td align="center"><%=position %></td>
			<td align="center"><%=duty %></td>
			<td align="center"><%=phone %></td>
			<td align="center"><%=dept %></td>
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>