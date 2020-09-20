<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 보기</title>
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

<jsp:include page ="header.jsp"></jsp:include>

<jsp:include page ="nav.jsp"></jsp:include>

<div id="section">
	<%
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=null;
		int idx=Integer.parseInt(request.getParameter("idx"));
		String jdbc_driver="com.mysql.cj.jdbc.Driver";
		String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		try {
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(jdbc_url,"root","1234");
			Statement stmt=conn.createStatement();
			sql="select name,title,memo,time,hit from board where num="+idx;
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				String name = rs.getString(1);
				String title = rs.getString(2);
				String memo = rs.getString(3);
				String time = rs.getString(4);
				int hit = rs.getInt(5);
				hit++;
				%>
				
				<table align=center>
					<tr>
					<td>
						<table width=100% cellpadding=0 cellspacing=0 border=0>
						<tr style="background:url('../boardimages/table_mid.gif')repeat-x;text-align:center;">
						<td width=5><img src="../boardimages/table_left.gif" width=5 height=30></td>
						<td>내용</td>
						<td width=5><img src="../boardimages/table_right.gif" width=5 height=30></td>
					</tr>
				</table>
				<table width=413>
					<tr>
					<td width=0>&nbsp;</td>
					<td align=center width=76>글번호</td>
					<td width=319><%=idx %></td>
					<td width=0>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr>
					<td width=0>&nbsp;</td>
					<td align=center width=76>조회수</td>
					<td width=319><%=hit %></td>
					<td width=0>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr>
					<td width=0>&nbsp;</td>
					<td align=center width=76>이름</td>
					<td width=319><%=name %></td>
					<td width=0>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr>
					<td width=0>&nbsp;</td>
					<td align=center width=76>작성일</td>
					<td width=319><%=time %></td>
					<td width=0>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr>
					<td width=0>&nbsp;</td>
					<td align=center width=76>제목</td>
					<td width=319><%=title %></td>
					<td width=0>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr>
					<td width=0></td>
					<td width=399 colspan=2 height=200><%=memo %></td></tr>
					<%
					sql="update board set hit="+hit+" where num="+idx;
					stmt.executeUpdate(sql);
					rs.close();
					stmt.close();
					conn.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
					%>
					
					<tr height=1 bgcolor="#dddddd"><td colspan=4 width=407></td></tr>
					<tr height=1 bgcolor="#82b5df"><td colspan=4 width=407></td></tr>
					<tr align=center>
					<td width=0>&nbsp;</td>
					<td colspan=2 width=399>
					<input type=button value="글쓰기" onclick="window.location='write.jsp'">
					<input type=button value="답글" onclick="window.location='reply.jsp?idx=<%=idx %>'">
					<input type=button value="목록" onclick="window.location='list.jsp'">
					<input type=button value="수정" onclick="window.location='modify.jsp?idx=<%=idx %>'">
					<input type=button value="삭제" onclick="window.location='delete.jsp?idx=<%=idx %>'">
					<td width=0>&nbsp;</td>
					</tr>
					</table>
					</td>
					</tr>
					
				</table>
			
	
</div>

<jsp:include page ="footer.jsp"></jsp:include>

</body>
</html>