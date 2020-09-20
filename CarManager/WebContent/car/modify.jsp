<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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

<script type="text/javascript">
function modifyCheck() {
	var form = document.modifyform;
	if(!form.password.value) {
		alert("비밀번호를 적어주세요.");
		form.password.focus();
		return;
	}
	if(!form.title.value) {
		alert("제목을 적어주세요.");
		form.title.focus();
		return;
	}
	if(!form.memo.value) {
		alert("내용을 적어주세요.");
		form.memo.focus();
		return;
	}
	
	form.submit();
}
</script>

</head>
<body>

<%
String checkName="";
checkName=(String)session.getAttribute("s_Name");
if(checkName==null) {
%>
<script type="text/javascript">
alert("먼저 로그인을 하세요.");
history.back();
</script>
<% }else{ %> <!-- 로그인 됐을 때 -->

<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="nav.jsp"></jsp:include>

<div class="section">
	<%
		request.setCharacterEncoding("utf-8");
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=null;
		String name=null;
		String password=null;
		String title=null;
		String memo=null;
		
		int idx=Integer.parseInt(request.getParameter("idx"));
		System.out.println("idx :"+idx);
		
		String jdbc_driver="com.mysql.cj.jdbc.Driver";
		String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		try {
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(jdbc_url,"root","1234");
			Statement stmt=conn.createStatement();
			sql="select name,password,title,memo from board where num="+idx;
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				name = rs.getString(1);
				password = rs.getString(2);
				title = rs.getString(3);
				memo = rs.getString(4);
			}
			rs.close();
			stmt.close();
			conn.close();
		}catch(SQLException e) {
			out.println(e.toString());
		}
		%>
				
				<table align=center>
				<form name=modifyform method=post action="modify_ok.jsp?idx=<%=idx %>">
					<tr>
					<td>
						<table width=100% cellpadding=0 cellspacing=0 border=0>
						<tr style="background:url('../boardimages/table_mid.gif')repeat-x;text-align:center;">
						<td width=5><img src="../boardimages/table_left.gif" width=5 height=30></td>
						<td>수정</td>
						<td width=5><img src="../boardimages/table_right.gif" width=5 height=30></td>
					</tr>
				</table>
				<table>
					<tr>
					<td>&nbsp;</td>
					<td align=center>제목</td>
					<td><input type=text name=title size=50 maxlength=50 value="<%=title %>"></td>
					<td>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
					<tr>
					<td>&nbsp;</td>
					<td align=center>이름</td>
					<td><input type=text name=name size=50 maxlength=50 value="<%=name %>"></td>
					<td>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
					<tr>
					<td>&nbsp;</td>
					<td align=center>비밀번호</td>
					<td><input type=password name=password size=50 maxlength=50></td>
					<td>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
					<tr>
					<td>&nbsp;</td>
					<td align=center>내용</td>
					<td><textarea name=memo cols=50 rows=13><%=memo %></textarea></td>
					<td>&nbsp;</td>
					</tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
					<tr height=1 bgcolor="#dddddd"><td colspan=4></td></tr>
					<tr align=center>
					<td>&nbsp;</td>
					<td colspan=2><input type=button value="수정" onclick="javascript:modifyCheck();">
					<input type=button value="취소" onclick="javascript:history.back(-1)">
					<td>&nbsp;</td>
					</tr>
					</table>
					</td>
					</tr>
					</form>
					</table>
					</div>
					
<jsp:include page="footer.jsp"></jsp:include><%} %>

</body>
</html>