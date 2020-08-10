<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check() {
	if(document.form.name.value == '') {
		alert('회원성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	}
	document.form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int seq = 0;
	try {
		String seq_sql = "SELECT cust_seq.nextval FROM DUAL";
		pstmt = conn.prepareStatement(seq_sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			seq = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
%>
<h1 align="center">홈쇼핑 회원 등록</h1>
<br>
<form name="form" method="post" action="insert_ok.jsp">
	<table border="1">
		<tr>
			<th>회원번호(자동발생)</th>
			<td><input type="text" name="id" value="<%=seq %>"></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address" size="33"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joinDate"></td>
		</tr>
		<tr>
			<th>고객등급[A:VIP,B:일반,C:직원]</th>
			<td><input type="text" name="grade"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등 록" onclick="javascript:check()">
				<input type="button" value="조 회">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>