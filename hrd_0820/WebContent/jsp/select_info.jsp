<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		sql = "SELECT * FROM info0820";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">사원 정보 조회</h1>
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
			<th>주소</th>
		</tr>
<%
	while (rs.next()) {
		String id = rs.getString(1);
		String name = rs.getString(2);
		String dept = rs.getString(3); // 직급
		String position = rs.getString(4);
		String duty = rs.getString(5);
		String phone = rs.getString(6);
		String address = rs.getString(7);
		count++;
		
%>
		<tr>
			<td><%=count %></td>
			<td><a href="modify.jsp?id=<%=id %>"><%=id %></a></td>
			<td><%=name %></td>
			<td>
<%
		if (dept.equals("10")) {
			out.println("인사부");
		} else if (dept.equals("20")) {
			out.println("기획부");
		} else if (dept.equals("30")) {
			out.println("홍보부");
		} else if (dept.equals("40")) {
			out.println("영업부");
		} else if (dept.equals("50")) {
			out.println("경리부");
		}
%>
			</td>
			<td><%=position %></td>
			<td><%=duty %></td>
			<td><%=phone %></td>
			<td><%=address %></td>
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>