<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String password = "";
	String name = "";
	String gender = "";
	String birth = "";
	String mail = "";
	String phone = "";
	String address = "";
	String year = "";
	String morth = "";
	String day = "";
	String email = "";
	String email2 = "";
	int tmp = 0;
	try {
		String modify = "SELECT * FROM member0824 WHERE id = ?";
		pstmt = conn.prepareStatement(modify);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			password = rs.getString(2);
			name = rs.getString(3);
			gender = rs.getString(4);
			birth = rs.getString(5);
			mail = rs.getString(6);
			phone = rs.getString(7);
			address = rs.getString(8);
			
			year = birth.substring(0, 4);
			morth = birth.substring(5, 7);
			day = birth.substring(8);
			
			tmp = mail.indexOf("@");
			email = mail.substring(0, tmp);
			email2 = mail.substring(tmp+1);
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
	}
	if (document.form.select_mail.options[document.form.select_mail.selectedIndex].value == '9') {
		document.form.mail2.disabled = false;
		document.form.mail2.value = "";
		document.form.mail2.focus();
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
	<form name="form" method="post" action="modify_ok.jsp">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" value="<%=id %>">(마지막 번호+1)</td>
			</tr>
			<tr>
				<th>성 명</th>
				<td><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" value="<%=password %>"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="password_ok" value="<%=password %>" onchange="javascript:pw_check()"></td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>
					<input type="radio" name="gender" value="남성" <% if(gender.equals("남성")) {%> checked <%} %> checked>남성
					<input type="radio" name="gender" value="여성" <% if(gender.equals("여성")) {%> checked <%} %>>여성
				</td>
			</tr>
			<tr>
				<th>생 일</th>
				<td>
					<input type="text" name="year" value="<%=year %>">년
					<select name="month">
						<option value="1" <% if(morth.equals("01")) {%> selected <%} %>>1</option>
						<option value="2" <% if(morth.equals("02")) {%> selected <%} %>>2</option>
						<option value="3" <% if(morth.equals("03")) {%> selected <%} %>>3</option>
						<option value="4" <% if(morth.equals("04")) {%> selected <%} %>>4</option>
						<option value="5" <% if(morth.equals("05")) {%> selected <%} %>>5</option>
						<option value="6" <% if(morth.equals("06")) {%> selected <%} %>>6</option>
						<option value="7" <% if(morth.equals("07")) {%> selected <%} %>>7</option>
						<option value="8" <% if(morth.equals("08")) {%> selected <%} %>>8</option>
						<option value="9" <% if(morth.equals("09")) {%> selected <%} %>>9</option>
						<option value="10" <% if(morth.equals("10")) {%> selected <%} %>>10</option>
						<option value="11" <% if(morth.equals("11")) {%> selected <%} %>>11</option>
						<option value="12" <% if(morth.equals("12")) {%> selected <%} %>>12</option>
					</select>
					월
					<select name="day">
						<option value="1" <% if(day.equals("01")) {%> selected <%} %>>1</option>
						<option value="2" <% if(day.equals("02")) {%> selected <%} %>>2</option>
						<option value="3" <% if(day.equals("03")) {%> selected <%} %>>3</option>
						<option value="4" <% if(day.equals("04")) {%> selected <%} %>>4</option>
						<option value="5" <% if(day.equals("05")) {%> selected <%} %>>5</option>
						<option value="6" <% if(day.equals("06")) {%> selected <%} %>>6</option>
						<option value="7" <% if(day.equals("07")) {%> selected <%} %>>7</option>
						<option value="8" <% if(day.equals("08")) {%> selected <%} %>>8</option>
						<option value="9" <% if(day.equals("09")) {%> selected <%} %>>9</option>
						<option value="10" <% if(day.equals("10")) {%> selected <%} %>>10</option>
						<option value="11" <% if(day.equals("11")) {%> selected <%} %>>11</option>
						<option value="12" <% if(day.equals("12")) {%> selected <%} %>>12</option>
						<option value="13" <% if(day.equals("13")) {%> selected <%} %>>13</option>
						<option value="14" <% if(day.equals("14")) {%> selected <%} %>>14</option>
						<option value="15" <% if(day.equals("15")) {%> selected <%} %>>15</option>
						<option value="16" <% if(day.equals("16")) {%> selected <%} %>>16</option>
						<option value="17" <% if(day.equals("17")) {%> selected <%} %>>17</option>
						<option value="18" <% if(day.equals("18")) {%> selected <%} %>>18</option>
						<option value="19" <% if(day.equals("19")) {%> selected <%} %>>19</option>
						<option value="20" <% if(day.equals("20")) {%> selected <%} %>>20</option>
						<option value="21" <% if(day.equals("21")) {%> selected <%} %>>21</option>
						<option value="22" <% if(day.equals("22")) {%> selected <%} %>>22</option>
						<option value="23" <% if(day.equals("23")) {%> selected <%} %>>23</option>
						<option value="24" <% if(day.equals("24")) {%> selected <%} %>>24</option>
						<option value="25" <% if(day.equals("25")) {%> selected <%} %>>25</option>
						<option value="26" <% if(day.equals("26")) {%> selected <%} %>>26</option>
						<option value="27" <% if(day.equals("27")) {%> selected <%} %>>27</option>
						<option value="28" <% if(day.equals("28")) {%> selected <%} %>>28</option>
						<option value="29" <% if(day.equals("29")) {%> selected <%} %>>29</option>
						<option value="30" <% if(day.equals("30")) {%> selected <%} %>>30</option>
						<option value="31" <% if(day.equals("31")) {%> selected <%} %>>31</option>
					</select>
					일
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="mail" placeholder="이메일" value="<%=email %>">
					@
					<input type="text" name="mail2" value="<%=email2 %>" disabled>
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
				<td><input type="text" name="phone" value="<%=phone %>"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address" value="<%=address %>"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="button" value="수정" onclick="javascript:addMember()">
					<input type="button" value="취소" onclick="location='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>