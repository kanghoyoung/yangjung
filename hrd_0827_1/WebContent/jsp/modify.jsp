<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	int custno = Integer.parseInt(request.getParameter("custno"));
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String custname = "";
	String phone = "";
	String address = "";
	String joindate = "";
	String grade = "";
	String city = "";
	String sub_joindate = "";
	try {
		String update = "SELECT * FROM member0827 WHERE custno = ?";
		pstmt = conn.prepareStatement(update);
		pstmt.setInt(1, custno);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			custname = rs.getString(2);
			phone = rs.getString(3);
			address = rs.getString(4);
			joindate = rs.getString(5);
			grade = rs.getString(6);
			city = rs.getString(7);
			sub_joindate = joindate.substring(0, 10);
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 정보 수정</title>
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
		<b>홈쇼핑 회원 정보 수정</b>
	</div>
	<br>
	<form name="form" method="post" action="modify_ok.jsp">
		<table border="1">
			<tr>
				<th>회원번호</th>
				<td><input type="text" name="custno" value="<%=custno %>"></td>
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
				<td><input type="text" name="address" value="<%=address %>"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" name="date" value="<%=sub_joindate %>"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="grade" value="<%=grade %>"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="city" value="<%=city %>"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="button" value="수 정" onclick="javascript:check()">
					<input type="button" value="조 회" onclick="location.href='select_cust.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>