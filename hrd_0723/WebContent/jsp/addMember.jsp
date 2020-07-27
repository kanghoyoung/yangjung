<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
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
<br><br>
	<h1 align="center">회원 가입 등록 화면</h1>
	<form name="form" method="post" action="addMember_ok.jsp">
		<table border="1">
			<tr>
				<th width="300px">아이디</th>
				<td width="500px">
					<input type="text" name="id" size="30">(마지막 번호+1)
				</td>
			</tr>
			<tr>
				<th>성 명</th>
				<td>
					<input type="text" name="name" size="30">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="password" size="30">
				</td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" name="password_ok" size="30">
				</td>
			</tr>
			<tr>
				<th>성 별</th>
				<td>
					<input type="radio" name="gender" value="1" checked>남성
					<input type="radio" name="gender" value="2">여성
				</td>
			</tr>
			<tr>
				<th>생 일</th>
				<td>
					<input type="number" min="0" max="9999" step="1" name="birth" size="5">년
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
					<input type="text" name="eamil1" value="이메일" onfocus="this.value='';">@
					
					<input type="text" name="email2" value="" disabled>
					<select name="email" onchange="email_change()">
						<option value="1">선택하세요</option>
						<option value="2">직접입력</option>
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
				<td>
					<input type="text" name="phone" size="30">
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="address" size="30">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" onclick="javascript:check()">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>