<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id"); // 사번
	String name = ""; // 성명
	String dept = ""; // 소속부서
	String position = ""; // 직급
	String duty = ""; // 직책
	String phone = ""; // 연락처
	try {
		sql = "SELECT * FROM personnel WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) {
			name = rs.getString(2);
			dept = rs.getString(3);
			position = rs.getString(4);
			duty = rs.getString(5);
			phone = rs.getString(6);
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
<meta charset="UTF-8">
<title>사원 정보 변경</title>
<script>
function check() {
	if (document.form.name.value == '') {
		alert('이름이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.id.value == '') {
		alert('사원번호가 입력되지 않았습니다.');
		document.form.id.focus();
		return;
	} else if (document.form.duty.value == '') {
		alert('직책이 입력되지 않았습니다.');
		document.form.duty.focus();
		return;
	} else if (document.form.phone.value == '') {
		alert('연락처가 입력되지 않았습니다.');
		document.form.phone.focus();
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
		인사관리 사원 정보 변경 화면
	</div>
	<br>
	<form name="form" method="post" action="modify_ok.jsp">
		<table border="1">
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" size="30" value="<%=name %>"></td>
			</tr>
			<tr>
				<th>사원번호</th>
				<td><input type="text" name="id" size="30" value="<%=id %>" maxlength="3">&nbsp;사원번호를 통해 정보를 수정</td>
			</tr>
			<tr>
				<th>소속부서</th>
				<td>
					<select name="dept">
						<option value="인사부" <% if (dept.equals("인사부")) {%> selected <%} %>>인사부</option>
						<option value="기획부" <% if (dept.equals("기획부")) {%> selected <%} %>>기획부</option>
						<option value="홍보부" <% if (dept.equals("홍보부")) {%> selected <%} %>>홍보부</option>
						<option value="영업부" <% if (dept.equals("영업부")) {%> selected <%} %>>영업부</option>
						<option value="경리부" <% if (dept.equals("경리부")) {%> selected <%} %>>경리부</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>직급</th>
				<td>
					<select name="position">
						<option value="1" <% if (position.equals("1")) {%> selected <%} %>>1급</option>
						<option value="2" <% if (position.equals("2")) {%> selected <%} %>>2급</option>
						<option value="3" <% if (position.equals("3")) {%> selected <%} %>>3급</option>
						<option value="4" <% if (position.equals("4")) {%> selected <%} %>>4급</option>
						<option value="5" <% if (position.equals("5")) {%> selected <%} %>>5급</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>직책</th>
				<td><input type="text" name="duty" size="30" value="<%=duty %>"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone" size="30" value="<%=phone %>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="변 경" onclick="javasript:check()">
					<input type="button" value="취 소" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>