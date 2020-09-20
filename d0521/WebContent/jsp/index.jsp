<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	nav {
		margin: 0;
		float: left;
		width: 100%;
		background-color: skyblue;
		font-family: Verdana, Geneva, sans-serif;
		font-size: 16px;
		font-weight: bold;
		color: #000000;
	}
	
	nav ul {
		list-style: none; /* ul태그 앞에 동그라미 삭제 */
	}
	
	/* 가로 정렬 */
	nav ul li {
		float: left;
		margin: 0 5px;
		list-style: none;
	}
	
	nav a {
		display: block;
		padding: 5px 5px 8px 5px;
		height: 20px;
		text-decoration: none;
		color:#000000;
		border-style: hidden hidden solid hidden;
		border-color: transparent;
	}
	
	/* 사진 크기 */
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

	<jsp:include page="header.jsp"></jsp:include>
	
	<nav>
		<ul>
			<li><a href="info.jsp">회사소개</a></li>
			<li><a href="insert_custom.jsp">고객정보 등록</a></li>
			<li><a href="insert_part.jsp">부품정보 등록</a></li>
			<li><a href="select_custom.jsp">고객정보 목록</a></li>
			<li><a href="select_part.jsp">부품정보 목록</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	
	
	
	<div class="section">
		<img src="../images/logo.jpg">
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>