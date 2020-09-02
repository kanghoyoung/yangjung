<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql_cnt = "";
	String sql = "";
	int cnt = 0;
	try {
		sql_cnt = "SELECT COUNT(*) FROM stud0902";
		
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
<br><br><br>
<h1 align="center">학사정보 목록</h1>
<br>
	<table border="1">
		<tr>
			<th>학번</th>
			<th>성명</th>
			<th>학과</th>
			<th>학년</th>
			<th>주소</th>
			<th>연락처</th>
			<th>취미</th>
			<th>관리</th>
		</tr>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>