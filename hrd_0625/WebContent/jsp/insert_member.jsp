<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int max = 0;
	try {
		sql = "SELECT MAX(custno) from member_tbl_02";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			max = rs.getInt(1);
			max++;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
<script>
function check() {
	if(document.form.name.value == '') {
		alert('회원성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.phone.value == '') {
		alert('회원전화가 입력되지 않았습니다.');
		document.form.phone.focus();
		return;
	} else if (document.form.address.value == '') {
		alert('회원주소가 입력되지 않았습니다.');
		document.form.address.focus();
	} else if (document.form.joindate.value == '') {
		alert('가입일자가 입력되지 않았습니다.');
		document.form.joindate.focus();
	} else if (document.form.grade.value == '') {
		alert('고객등급이 입력되지 않았습니다.');
		document.form.grade.focus();
	} else if (document.form.city.value == '') {
		alert('도시코드가 입력되지 않았습니다.');
		document.form.city.focus();
	} else {
		document.form.submit();
	}
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">홈쇼핑 회원 등록</h1>
<br>
	<form name="form" method="post" action="insert_member_ok.jsp">
		<table border="1">
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" name="id" value="<%=max %>"></td>
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
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" name="joindate"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="grade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등 록" onclick="javascript:check()">
					<input type="button" value="조 회" onclick="location.href='select_member.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>