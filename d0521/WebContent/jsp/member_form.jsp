<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	
	nav {
		margin 0;
		float: left;
		width: 100%;
		background-color: aqua;
		font-family: Verdana, Geneva, sans-serif;
		font-size: 14px;
		font-weight: bold; /* 진한 글씨체 */
		color:#ff0099; /* 파란색 */ 
	}
	
	nav ul {
		list-style: none; /* 기호 제거(까만색 동그라미) */
	}
	
	nav ul li {
		float: left;
		margin: 0 5px; /* 글자 사이 공간 */
		list-style: none;
	}
	
	/* 네이게이션(nav) a태그 전체 */
	nav a {
		display: block;
		padding: 5px 5px 8px 5px;
		height: 20px;
		text-decoration: none; /* 밑줄 제거 */
		color: #000000; /* black */
		border-style: hidden hidden solid hidden;
		border-color: transparent;
	}
	
	.section {
		height: 580px;
		width: 100%;
	}
	
	div>img {
		border: none;
		height: 77%;
		width: 100%;
	}
	
</style>

</head>
<body>
	
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<nav>
		<ul>
			<li><a href="info.jsp">회사소개</a></li>
			<li><a href="#">고객정보 등록</a></li>
			<li><a href="#">부품정보 등록</a></li>
			<li><a href="#">고객정보 목록</a></li>
			<li><a href="#">부품정보 목록</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	<div class="section"><br><br>
<h1 align="center">고객관리</h1>
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
</form></div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>