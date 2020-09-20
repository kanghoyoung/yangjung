<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
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
	<%
		String checkName = null;
		checkName = (String)session.getAttribute("s_Name");
		// 로그인 안된상태
		if(checkName==null) {	
			%>
			<script>
			alert("먼저 로그인 하세요.");
			history.back();
			</script>
			<%}else {
			
	%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<jsp:include page="nav.jsp"></jsp:include>
	
	<div class="section"><br><br>
		<form name="list">
			<table border="1">
			<caption><h1>회원정보 리스트</h1></caption>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>패스워드</th>
					<th>성별</th>
					<th>이메일</th>
					<th>휴대폰번호</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>차량번호</th>
					<th>차량종류</th>
				</tr>
				
				<%
					Connection conn = null;
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {
						String jdbc_driver = "com.mysql.cj.jdbc.Driver";
						String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
						Class.forName(jdbc_driver);
						conn = DriverManager.getConnection(jdbc_url, "root", "1234"); // db접속
						//System.out.print("데이터베이스연결성공");
						
						String sql = "select * from car_member";
						
						pstmt = conn.prepareStatement(sql);
						
						rs = pstmt.executeQuery();
						
		
						
							
					} catch (Exception e) {
						System.out.println(e);
						e.printStackTrace();
					}
					
					while(rs.next()) { %>
					<tr>
						<td><%= rs.getString("id")%></td>
						<td><%= rs.getString(2)%></td>
						<td><%= rs.getString(3)%></td>
						<td><%= rs.getString(4)%></td>
						<td><%= rs.getString(5)%></td>
						<td><%= rs.getString(6)%></td>
						<td><%= rs.getString(7)%></td>
						<td><%= rs.getString(8)%></td>
						<td><%= rs.getString(9)%></td>
						<td><%= rs.getString(10)%></td>
					</tr>
					<%
					}
				%>
				
			</table>
		</form>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include> <%} %>

</body>
</html>