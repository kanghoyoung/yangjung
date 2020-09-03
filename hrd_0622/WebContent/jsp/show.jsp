<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
	<br><br><br><br>
		<h3 align="center">직원 정보 조회</h3>
		<br>
		<form method="post" action="showAction.jsp">
			<table border="1">
				<tr>
					<td id="b">성명</td>
					<td id="b">사번</td>
					<td id="b">직급</td>
					<td id="b">직책</td>
					<td id="b">연락처</td>
					<td id="b">소속부서</td>
				</tr>

				<%
				
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {
						
						String sql2 = "select * from personnel";
						pstmt = conn.prepareStatement(sql2);
						rs = pstmt.executeQuery();
						while (rs.next()) {
							int id = rs.getInt("id");
							String name = rs.getString("name");
							String dept = rs.getString("dept");
							String position = rs.getString("position");
							String duty = rs.getString("duty");
							String phone = rs.getString("phone");
				%>

				<tr>
					<td id="b"><%=name%></td>
					<td id="b"><a href="change.jsp"><%=id%></a></td>
					<td id="b"><%=position%></td>
					<td id="b"><%=duty%></td>
					<td id="b"><%=phone%></td>
					<td id="b"><%=dept%></td>
				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					} finally {

						if (pstmt != null) {
							pstmt.close();
						}

						if (rs != null) {
							rs.close();
						}

						if (conn != null) {
							conn.close();
						}
					}
				%>

			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>