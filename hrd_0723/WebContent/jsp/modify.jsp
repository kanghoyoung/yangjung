<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check() {
	if(document.form.id.value == "") {
		alert('아이디를 입력하세요.');
		document.form.id.focus();
		return;
	} else if(document.form.name.value == "") {
		alert('이름을 입력하세요.');
		document.form.name.focus();
		return;
	} else if(document.form.password.value == "") {
		alert('비밀번호를 입력하세요.');
		document.form.password.focus();
		return;
	}
	document.form.submit();
}
function email_change() {
	if(document.form.email.options[document.form.email.selectedIndex].value == '1') {
		document.form.email2.disabled = true;
		document.form.email2.value = "";
	}
	if(document.form.email.options[document.form.email.selectedIndex].value == '2') {
		document.form.email2.disable = false;
		document.form.email2.value = "";
		document.form.email2.focus();
	} else {
		document.form.email2.disabled = true;
		document.form.email2.value = document.form.email.options[document.form.email.selectedIndex].value;
	}
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
	String id = request.getParameter("id");
	String name = "";
	String password = "";
	String gender = "";
	String birth = "";
	String mail = "";
	String phone = "";
	String address = "";
	String titmestamp = "";
	try {
		String sql2 = "SELECT * FROM pMember where id = ?";
		pstmt = conn.prepareStatement(sql2);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			password = rs.getString(2);
			name = rs.getString(3);
			gender = rs.getString(4);
			birth = rs.getString(5);
			mail = rs.getString(6);
			phone = rs.getString(7);
			address = rs.getString(8);
			titmestamp = rs.getString(9);
		}
%>
	<br><br>
	<h1 align="center">회원 가입 등록 화면</h1>
	<form name="form" method="post" action="modify_ok.jsp">
		<table border="1">
			<tr>
				<th width="300px">아이디</th>
				<td width="500px">
					<input type="text" name="id" size="30" value="<%=id %>">(마지막 번호+1)
				</td>
			</tr>
			<tr>
				<th>성 명</th>
				<td>
					<input type="text" name="name" size="30" value="<%=name %>">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="password" size="30" value="<%=password %>">
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" name="password_ok" size="30" value="<%=password %>">
				</td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>
					<input type="radio" name="gender" value="1" <%if(gender.equals("남성")) {%>checked<%} %> checked>남성
					<input type="radio" name="gender" value="2" <%if(gender.equals("여성")) {%>checked<%} %>>여성
				</td>
			</tr>
			<tr>
				<th>생 일</th>
				<td>
<%
					String year = birth.substring(0, 4);
					String month = birth.substring(5, 7);
					String day = birth.substring(8);
%>
					<input type="number" min="0" max="9999" step="1" name="birth" size="5" value="<%=year %>">년
					<select name="month">
						<option value="1" <%if(month.equals("01")) {%>selected<%} %>>1</option>
						<option value="2" <%if(month.equals("02")) {%>selected<%} %>>2</option>
						<option value="3" <%if(month.equals("03")) {%>selected<%} %>>3</option>
						<option value="4" <%if(month.equals("04")) {%>selected<%} %>>4</option>
						<option value="5" <%if(month.equals("05")) {%>selected<%} %>>5</option>
						<option value="6" <%if(month.equals("06")) {%>selected<%} %>>6</option>
						<option value="7" <%if(month.equals("07")) {%>selected<%} %>>7</option>
						<option value="8" <%if(month.equals("08")) {%>selected<%} %>>8</option>
						<option value="9" <%if(month.equals("09")) {%>selected<%} %>>9</option>
						<option value="10" <%if(month.equals("10")) {%>selected<%} %>>10</option>
						<option value="11" <%if(month.equals("11")) {%>selected<%} %>>11</option>
						<option value="12" <%if(month.equals("12")) {%>selected<%} %>>12</option>
					</select>
					월
					<select name="day">
						<option value="1" <%if(day.equals("01")) {%>selected<%} %>>1</option>
						<option value="2" <%if(day.equals("02")) {%>selected<%} %>>2</option>
						<option value="3" <%if(day.equals("03")) {%>selected<%} %>>3</option>
						<option value="4" <%if(day.equals("04")) {%>selected<%} %>>4</option>
						<option value="5" <%if(day.equals("05")) {%>selected<%} %>>5</option>
						<option value="6" <%if(day.equals("06")) {%>selected<%} %>>6</option>
						<option value="7" <%if(day.equals("07")) {%>selected<%} %>>7</option>
						<option value="8" <%if(day.equals("08")) {%>selected<%} %>>8</option>
						<option value="9" <%if(day.equals("09")) {%>selected<%} %>>9</option>
						<option value="10" <%if(day.equals("10")) {%>selected<%} %>>10</option>
						<option value="11" <%if(day.equals("11")) {%>selected<%} %>>11</option>
						<option value="12" <%if(day.equals("12")) {%>selected<%} %>>12</option>
						<option value="13" <%if(day.equals("13")) {%>selected<%} %>>13</option>
						<option value="14" <%if(day.equals("14")) {%>selected<%} %>>14</option>
						<option value="15" <%if(day.equals("15")) {%>selected<%} %>>15</option>
						<option value="16" <%if(day.equals("16")) {%>selected<%} %>>16</option>
						<option value="17" <%if(day.equals("17")) {%>selected<%} %>>17</option>
						<option value="18" <%if(day.equals("18")) {%>selected<%} %>>18</option>
						<option value="19" <%if(day.equals("19")) {%>selected<%} %>>19</option>
						<option value="20" <%if(day.equals("20")) {%>selected<%} %>>20</option>
						<option value="21" <%if(day.equals("21")) {%>selected<%} %>>21</option>
						<option value="22" <%if(day.equals("22")) {%>selected<%} %>>22</option>
						<option value="23" <%if(day.equals("23")) {%>selected<%} %>>23</option>
						<option value="24" <%if(day.equals("24")) {%>selected<%} %>>24</option>
						<option value="25" <%if(day.equals("25")) {%>selected<%} %>>25</option>
						<option value="26" <%if(day.equals("26")) {%>selected<%} %>>26</option>
						<option value="27" <%if(day.equals("27")) {%>selected<%} %>>27</option>
						<option value="28" <%if(day.equals("28")) {%>selected<%} %>>28</option>
						<option value="29" <%if(day.equals("29")) {%>selected<%} %>>29</option>
						<option value="30" <%if(day.equals("30")) {%>selected<%} %>>30</option>
						<option value="31" <%if(day.equals("31")) {%>selected<%} %>>31</option>
					</select>
					일
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
<%
					int idx = mail.indexOf("@");
					String mail1 = mail.substring(0, idx);
					String mail2 = mail.substring(idx+1);
%>
					<input type="text" name="eamil1" value="<%=mail1 %>" onfocus="this.value='';">@
					
					<input type="text" name="email2" value="" disabled>
					<select name="email" onchange="email_change()">
						<option value="1">선택하세요</option>
						<option value="2">직접입력</option>
						<option value="naver.com" <%if(day.equals("naver.com")) {%>selected<%} %>>naver.com</option>
						<option value="daum.net" <%if(day.equals("daum.net")) {%>selected<%} %>>daum.net</option>
						<option value="nate.com" <%if(day.equals("nate.com")) {%>selected<%} %>>nate.com</option>
						<option value="hotmail.com" <%if(day.equals("hotmail.com")) {%>selected<%} %>>hotmail.com</option>
						<option value="gmail.com" <%if(day.equals("gmail.com")) {%>selected<%} %>>gmail.com</option>
						<option value="hanmail.net" <%if(day.equals("hanmail.net")) {%>selected<%} %>>hanmail.net</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>연락처</th>
				<td>
					<input type="text" name="phone" size="30" value="<%=phone %>">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="address" size="30" value="<%=address %>">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정" onclick="javascript:check()">
					<input type="button" value="취소" onclick="location='selectMember.jsp'">
				</td>
			</tr>
		</table>
	</form>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>