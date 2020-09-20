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
	
	table, td{
		border:1px solid;
	}
	table{
		width:80%;
		height:100px;
		margin:auto;
		text-align:center;
	}
	td{
		margin:auto;
		text-align:center;
	}
#t1{
margin:20px 0 5px 10px;
color:darkblue;
font-size:30px;
text-align:center;
}

#b{
margin:auto;
text-align:left;
}

	
</style>

<script type="text/javascript">
	
	// 필수 입력
	function checkWrite() {
		if (document.joinAction.id.value=="") {
			alert("id를 입력하세요.");
			document.joinAction.id.focus(); // 아이디입력이 없으면 id커서로 이동
		} else if (document.joinAction.name.value=="") {
			alert("이름 를 입력하세요.");
			document.joinAction.name.focus();
		} else if (document.joinAction.password.value=="") {
			alert("비밀번호 를 입력하세요.");
			document.joinAction.password.focus();
		} else if (document.joinAction.ckeck.value=="") {
			alert("비밀번호 확인 를 입력하세요.");
			document.joinAction.ckeck.focus();
		} 
	}
	
	// 중복체크
	function id_chk() {
		window.open("id_chk.jsp?id="+document.joinAction.id.value,target="_self");
	}
	
	
</script>

</head>
<body>
	
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<jsp:include page="nav.jsp"></jsp:include>
	
	<div class="section"><br><br><br><br><br><br>
<h1 id="t1">고객관리</h1>
<form name=joinAction method="post" action="joinEvent.jsp">
<table border=1>
	<tr>
		<td width="120" align="center">아이디</td>
		
		<td id=b>
			<input type="text" name="id" size=30
			style="background-color:yellow";>
			<input type="button" value="중복체크" onclick="id_chk()">
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">이름</td>
		
		<td id=b>
			<input type="text" name="name" size=30
			style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">비밀번호</td>
		
		<td id=b>
			<input name="password" type="password" size=30>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">비밀번호 확인</td>
		
		<td id=b>
			<input name="ckeck" type="password" size=30>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">성별</td>
		<td id=b>
			<input type="radio" name="gender" value="1" checked>남자
			<input type="radio" name="gender" value="2">여자
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">이메일</td>
		<td id=b>
			<input name="email" size=30 style="background-color:yellow";>@
			<select name="emailselect">
				<option value="1">naver.com</option>
				<option value="2">daum.net</option>
				<option value="3">gmail.com</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">핸드폰</td>
		<td id=b>
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
		<td width="120" align="center">전화번호</td>
		<td id=b>
			<input name="home1" size="10">-
			<input name="home2" size="10">-
			<input name="home3" size="10">
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">주소</td>
		<td id=b>
			<input name="address" size="100" style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">차량번호</td>
		<td id=b>
			<input name="carNumber" size="50" style="background-color:yellow";>
		</td>
	</tr>
	
	<tr>
		<td width="120" align="center">차량종류</td>
		<td id=b>
			<input name="carType" size="50">
		</td>
	</tr>

	<tr>
		<td colspan="2" align="center">
			<input type="button" value="회원가입" onclick="javascript:checkWrite()">
			<input type="reset" value="다시작성">
		</td>
	</tr>
</table>
</form></div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>