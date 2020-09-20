<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="t1">고객관리</div>
<form name=joinAction method="post" action="joinEvent.jsp">
<table border=1>
	<tr>
		<td align="center">아이디</td>
		
		<td>
			<input type="text" name="id" size=30
			style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td align="center">이름</td>
		
		<td>
			<input type="text" name="name" size=30
			style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td align="center">비밀번호</td>
		
		<td>
			<input name="password" type="password" size=30>
		</td>
	</tr>
	
	<tr>
		<td align="center">비밀번호 확인</td>
		
		<td>
			<input name="ckeck" type="password" size=30>
		</td>
	</tr>
	
	<tr>
		<td align="center">성별</td>
		<td>
			<input type="radio" name="gender" value="1" checked>남자
			<input type="radio" name="gender" value="2">여자
		</td>
	</tr>
	
	<tr>
		<td align="center">이메일</td>
		<td>
			<input name="email" size=30 style="background-color:yellow";>@
			<select name="emailselect">
				<option value="1">naver.com</option>
				<option value="2">daum.net</option>
				<option value="3">gmail.com</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td align="center">핸드폰</td>
		<td>
		<select name="phone">
			<option value="1">010</option>
			<option value="2">011</option>
			<option value="3">090</option>
		</select>
		-
		<input name="phone1" size="10">-<input name="phone2" size="10">
	</td>
	</tr>
	
	<tr>
		<td align="center">전화번호</td>
		<td>
			<input name="home1" size="10">-
			<input name="home2" size="10">-
			<input name="home3" size="10">
		</td>
	</tr>
	
	<tr>
		<td align="center">주소</td>
		<td>
			<input name="address" size="100" style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td align="center">차량번호</td>
		<td>
			<input name="carNumber" size="50" style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td align="center">차량종류</td>
		<td>
			<input name="carType" size="50">
		</td>
	</tr>

	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="회원가입">
			<input type="reset" value="다시작성">
		</td>
	</tr>
</table>
</form>

</body>
</html>