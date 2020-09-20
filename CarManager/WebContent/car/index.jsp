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
	
	<jsp:include page="nav.jsp"></jsp:include>
	
	<div class="section">
		<img src="../images/logo.jpg">
	</div>
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>