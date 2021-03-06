<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int count = 0;
	try {
		sql = "SELECT MAX(custno) FROM member0827";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
		count++;
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
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
		return;
	} else if (document.form.date.value == '') {
		alert('가입일자가 입력되지 않았습니다.');
		document.form.date.focus();
		return;
	} else if (document.form.grade.value == '') {
		alert('고객등급이 입력되지 않았습니다.');
		document.form.grade.focus();
		return;
	} else if (document.form.city.value == '') {
		alert('도시코드가 입력되지 않았습니다.');
		document.form.city.focus();
		return;
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
	<div class="section">
		<b>홈쇼핑 회원 등록</b>
	</div>
	<br>
	<form name="form" method="post" action="register_cust_ok.jsp">
		<table border="1">
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" name="custno" value="<%=count %>"></td>
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
				<td><input type="text" name="date"></td>
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
				<td align="center" colspan="2">
					<input type="button" value="등 록" onclick="javascript:check()">
					<input type="button" value="조 회" onclick="location.href='select_cust.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>