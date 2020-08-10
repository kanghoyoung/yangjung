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
<% 
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int custno = Integer.parseInt(request.getParameter("custno"));
	String custname = "";
	String phone = "";
	String address = "";
	String joindate = "";
	String grade = "";
	String city = "";
	String joindate_substring = "";
	try {
		sql = "SELECT * FROM t_member_02 WHERE custno = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, custno);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			custname = rs.getString(2);
			phone = rs.getString(3);
			address = rs.getString(4);
			joindate = rs.getString(5);
			grade = rs.getString(6);
			city = rs.getString(7);
			joindate_substring = joindate.substring(0, 11);
		}
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
<br><br><br>
<h1 align="center">홈쇼핑 회원 등록</h1>
<br>
<form name="form" method="post" action="modify_ok.jsp">
	<table border="1">
		<tr>
			<th>회원번호(자동발생)</th>
			<td><input type="text" name="id" value="<%=custno %>"></td>
		</tr>
		<tr>
			<th>회원성명</th>
			<td><input type="text" name="name" value="<%=custname %>"></td>
		</tr>
		<tr>
			<th>회원전화</th>
			<td><input type="text" name="phone" value="<%=phone %>"></td>
		</tr>
		<tr>
			<th>회원주소</th>
			<td><input type="text" name="address" size="33" value="<%=address %>"></td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td><input type="text" name="joinDate" value="<%=joindate_substring %>"></td>
		</tr>
		<tr>
			<th>고객등급[A:VIP,B:일반,C:직원]</th>
			<td><input type="text" name="grade" value="<%=grade %>"></td>
		</tr>
		<tr>
			<th>도시코드</th>
			<td><input type="text" name="city" value="<%=city %>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="수 정" onclick="javascript:check()">
				<input type="button" value="조 회">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>