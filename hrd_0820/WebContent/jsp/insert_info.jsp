<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int max = 0;
	try {
		sql = "SELECT MAX(id) FROM info0820";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			max = rs.getInt(1);
			max++;
		}
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인사관리 사원등록 화면</title>
<script>
function insert() {
	if(document.form.name.value == '') {
		alert('성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.duty.value == '') {
		alert('직책이 입력되지 않았습니다.');
		document.form.duty.focus();
		return;
	} else if (document.form.phone.value == '') {
		alert('연락처가 입력되지 않았습니다.');
		document.form.phone.focus();
		return;
	} else if (document.form.address.value == '') {
		alert('주소가 입력되지 않았습니다.');
		document.form.address.focus();
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
<h1 align="center">인사관리 사원등록 화면</h1>
<br>
<form name="form" method="post" action="insert_info_ok.jsp">
	<table border="1">
		<tr>
			<th>사원번호(자동생성)</th>
			<td><input type="text" name="id" value="<%=max %>">마지막번호+1</td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>소속부서</th>
			<td>
				<select name="dept">
					<option value="1">인사부</option>
					<option value="2">기획부</option>
					<option value="3">홍보부</option>
					<option value="4">영업부</option>
					<option value="5">경리부</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>직급</th>
			<td>
				<input type="radio" name="position" value="1" checked>1급
				<input type="radio" name="position" value="2">2급
				<input type="radio" name="position" value="3">3급
				<input type="radio" name="position" value="4">4급
				<input type="radio" name="position" value="5">5급
			</td>
		</tr>
		<tr>
			<th>직책</th>
			<td><input type="text" name="duty"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등록" onclick="javascript:insert()">
				<input type="button" value="취소" onclick="location='index.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>