<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String seq = "";
	int max = 0;
	try {
		seq = "SELECT custom_seq.nextval FROM DUAL";
		pstmt = conn.prepareStatement(seq);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			max = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 등록</title>
<script>
function check() {
	if(document.form.name.value == '') {
		alert('이름을 입력하세요.');
		document.form.name.focus();
		return;
	} else if(document.form.pwd.value == '') {
		alert('비밀번호를 입력하세요.');
		document.form.pwd.focus();
		return;
	} else if(document.form.pwd_ok.value == '') {
		alert('비밀번호 확인을 입력하세요.');
		document.form.pwd_ok.focus();
		return;
	} else if(document.form.mail.value == '') {
		alert('이메일을 입력하세요.');
		document.form.mail.focus();
		return;
	} else if(document.form.phone2.value == '') {
		alert('핸드폰 번호를 입력하세요.')
		document.form.phone2.focus();
		return;
	} else if(document.form.phone3.value == '') {
		alert('핸드폰 번호를 입력하세요.')
		document.form.phone3.focus();
		return;
	} else if(document.form.tel1.value == '') {
		alert('전화번호를 입력하세요.')
		document.form.tel1.focus();
		return;
	} else if(document.form.tel2.value == '') {
		alert('전화번호를 입력하세요.')
		document.form.tel2.focus();
		return;
	} else if(document.form.tel3.value == '') {
		alert('전화번호를 입력하세요.')
		document.form.tel3.focus();
		return;
	} else if(document.form.address.value == '') {
		alert('주소를 입력하세요.')
		document.form.address.focus();
		return;
	} else if(document.form.carNumber.value == '') {
		alert('차량번호를 입력하세요.')
		document.form.carNumber.focus();
		return;
	} else if(document.form.carType.value == '') {
		alert('차량종류를 입력하세요.')
		document.form.carType.focus();
		return;
	} else {
		document.form.submit();
	}
}

function pw_check() {
	if(document.form.pwd.value != document.form.pwd_ok.value) {
		alert('비밀번호가 일치하지 않습니다.');
		document.form.pwd_ok.value = '';
	}
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">고객 정보 등록 화면</h1>
<br>
<form name="form" method="post" action="insert_custom_ok.jsp">
	<table border="1">
		<tr>
			<td align="center">아이디</td>
			<td><input type="text" name="id" value="<%=max %>">자동증가</td>
		</tr>
		<tr>
			<td align="center">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
			<td align="center">비밀번호확인</td>
			<td><input type="password" name="pwd_ok" onchange="javascript:pw_check()"></td>
		</tr>
		<tr>
			<td align="center">성별</td>
			<td>
				<input type="radio" name="gender" value="남" checked>남
				<input type="radio" name="gender" value="여">여
			</td>
		</tr>
		<tr>
			<td align="center">이메일</td>
			<td>
				<input type="text" name="mail">
				@
				<select name="select_mail">
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="center">핸드폰</td>
			<td>
				<select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="070">070</option>
					<option value="080">080</option>
				</select>
				-
				<input type="text" name="phone2">
				-
				<input type="text" name="phone3">
			</td>
		</tr>
		<tr>
			<td align="center">전화번호</td>
			<td>
				<input type="text" name="tel1">-
				<input type="text" name="tel2">-
				<input type="text" name="tel3">
			</td>
		</tr>
		<tr>
			<td align="center">주소</td>
			<td><input type="text" name="address" size="50"></td>
		</tr>
		<tr>
			<td align="center">차량번호</td>
			<td><input type="text" name="carNumber"></td>
		</tr>
		<tr>
			<td align="center">차량종류</td>
			<td><input type="text" name="carType"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="고객등록" onclick="javascript:check()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>