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

<h1 align="center">호봉 정보 조회</h1>

<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	
	try {
		sql = "SELECT * FROM hobongTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
	<table border="1">
		<tr>
			<th width="50px">no</th>
			<th width="50px">등급</th>
			<th width="50px">급여</th>
		</tr>
<%
		while(rs.next()) {
			String dunggub = rs.getString("dunggub");
			String salary = rs.getString("salary");
%>
		<tr>
			<td width="100px"></td>
			<td width="100px">
<%
		if(dunggub.equals("1")) {
			out.println("1급");
		} else if(dunggub.equals("2")) {
			out.println("2급");
		} else if(dunggub.equals("3")) {
			out.println("3급");
		} else if(dunggub.equals("4")) {
			out.println("4급");
		} else if(dunggub.equals("5")) {
			out.println("5급");
		}
%>
			</td>
			<td width="100px"><%=salary %></td>
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