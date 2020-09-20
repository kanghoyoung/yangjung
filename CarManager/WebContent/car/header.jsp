<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

	#logo {
		float: left;
		vertical-align: middle;
		/* margin: 10px 0 0 20px; */ /* top right bottom left */
		margin-top: 10px;
		margin-right: 0;
		margin-bottom: 0;
		margin-left: 20px;
		color: darkblue;
		font-size: 48px;
	}
	
	.right {
		float: right;
	}
	
</style>

</head>
<body>

	<header>
	<%
		String checkName = null;
		checkName = (String)session.getAttribute("s_Name");
		// 로그인 안된상태
		if(checkName==null) {
			
	%>
		<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>

	<span class="right">
		<form method="post" action="login.jsp">
			<fieldset>
				<label for="ID">회원ID</label>
				<input type="text" id="id" name="id" size=10 maxlength=10 required="required"> <!-- required 반드시 입력해야 하는 영역  -->
				<label for="passwd">비밀번호</label>
				<input type="password" id="passwd" name="passwd" size=10 maxlength=10 required="required">
				<button type="submit">로그인</button>
				<a href="join.jsp">회원가입</a>
			</fieldset>
		</form>
		
	</span>
	<%}else{ %>
	<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a>
	<span class="right" style="padding: 30px 10px;">
	<%=checkName %>님 환영합니다.
	<a href="logout.jsp">logout</a>
	<a href="join.jsp">회원가입</a>
	 </span>
	 <%} %>
	 
	</header>
	
</body>
</html>