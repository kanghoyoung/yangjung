<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
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

<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="nav.jsp"></jsp:include>

<br><br><br><br><br><br><br>
<div class="section">
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	String id = "root";
	String pw = "1234";
	ResultSet rs = null;
	int total = 0; // 게시글 카운터
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, id, pw);
		//out.println("데이터베이스 연결 성공");
		String sqlCount = "select count(*) from board";
		pstmt = conn.prepareStatement(sqlCount);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			total = rs.getInt(1);
		}
		
		sql = "select num,name,title,time,hit,indent from board order by ref desc, step asc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		%>
		<table width="100%" cellpadding=0 cellspacing=0 border=0>
		<tr><td colspan=7><%out.println("총 게시물 : " + total + "개"); %></td></tr>
		<tr height=5><td width=5></td></tr>
		<tr style="background:url('../boardimages/table_mid.gif') repeat-x; text-align:center;">
		<td width=5><img src="../boardimages/table_left.gif" width=5 height=30></td>
		<td width=73>번호</td>
		<td width=379>제목</td>
		<td width=73>작성자</td>
		<td width=164>작성일</td>
		<td width=58>조회수</td>
		<td width=7><img src="../boardimages/table_right.gif" width=5 height=30></td>
		</tr>
		
		<%
		if(total==0) {
		%>
		<tr align="center" bgcolor="#ffffff" height=30>
		<td colspan=6>등록된 글이 없습니다.</td></tr>
		<%
		} else {
			while(rs.next()) {
				int idx = rs.getInt(1);
				String name = rs.getString(2);
				String title = rs.getString(3);
				String time = rs.getString(4);
				int hit = rs.getInt(5);
				int indent = rs.getInt(6);
				%>
				<tr height=25 align=center>
				<td>&nbsp;</td>
				<td><%=idx %></td>
				<td align=left>
				<%
				for(int j=0; j<indent; j++) {
				%>
				&nbsp;&nbsp;&nbsp;
				<%
				}
				// 리플 앞에 이미지 붙여주기
				if(indent != 0) {
				%>
				<img src="../boardimages/reply_icon.gif">
				<%
				}
				%>
				<a href="view.jsp?idx=<%=idx %>"><%=title %></a></td>
				<td align=center><%=name %></td>
				<td align=center><%=time %></td>
				<td align=center><%=hit %></td>
				<td>&nbsp;</td>
				</tr>
				<tr height=1 bgcolor="#d2d2d2"><td colspan=6></td></tr>
				<%
			}
		}
		
	} catch (SQLException e) {
		out.println("error message : " + e.getMessage());
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
<tr height=1 bgcolor="82b5df"><td colspan=6 width=752></td></tr>
</table>
<table width="100%" cellpadding=0 cellspacing=0 border=0>
<tr><td colspan=4 height=5></td></tr>
<tr align=center>
<td><input type=button value="글쓰기" onclick="window.location='write.jsp'"></td>
</tr>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>