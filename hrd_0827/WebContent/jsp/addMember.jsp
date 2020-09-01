<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int max = 0;
	try {
		sql = "SELECT MAX(id) FROM member0824";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			max = rs.getInt(1);
			max++;
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
<title>회원가입</title>
<script>
function addMember() {
	if(document.form.name.value == '') {
		alert('이름을 입력하세요.');
		document.form.name.focus();
		return;
	} else if (document.form.password.value == '') {
		alert('비밀번호를 입력하세요.');
		document.form.password.focus();
		return;
	} else if (document.form.password_ok.value == '') {
		alert('비밀번호 확인을 입력하세요.');
		document.form.password_ok.focus();
		return;
	} else {
		document.form.submit();
	}
}

function email_change() {
	// 직접입력
	if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == '0') {
		document.form.mail2.disabled = true;
		document.form.mail2.value = "";
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == '9') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "";
		document.form.mail2.focus();
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == 'naver.com') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "naver.com";
		
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == 'daum.net') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "daum.net";
		
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == 'nate.com') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "nate.com";
		
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == 'hotmail.com') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "hotmail.com";
		
	} else if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == 'gmail.com') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "gmail.com";
	
	} else {
		document.form.mail2.disabled = true;
		document.form.mail2.value = document.form.select_mail.options[document.form.select_mail.selectedIndex].value;
	}
}

function pw_check() {
	if (document.form.password.value != document.form.password_ok.value) {
		alert('비밀번호를 동일하게 입력하세요.');
		document.form.password_ok.value = "";
	}
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">회원 가입 등록 화면</h1>
<br>
	<form name="form" method="post" action="addMember_ok.jsp">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" value="<%=max %>">(마지막 번호+1)</td>
			</tr>
			<tr>
				<th>성 명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="password_ok" onchange="javascript:pw_check()"></td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>
					<input type="radio" name="gender" value="남성" checked>남성
					<input type="radio" name="gender" value="여성">여성
				</td>
			</tr>
			<tr>
				<th>생 일</th>
				<td>
					<input type="text" name="year">년
					<select name="month">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					월
					<select name="day">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>
					일
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="mail" placeholder="이메일">
					@
					<input type="text" name="mail2" disabled>
					<select name="select_mail" onchange="email_change()">
						<option value="0">선택하세요</option>
						<option value="9">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</td>
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
				<td align="center" colspan="2">
					<input type="button" value="등록" onclick="javascript:addMember()">
					<input type="button" value="취소" onclick="location='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>