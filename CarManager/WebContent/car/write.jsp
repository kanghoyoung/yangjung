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
	color: #ff0099; /* 파란색 */
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

.content {
	height: 580px;
	width: 100%;
}

</style>

<script language="javascript">
function writeCheck() {
	var form = document.writeform;
	if(!form.name.value) { // form에 있는 name 값이 없을 때
		alert("이름을 적어주세요.");
		return;
	}
	if(!form.password.value) {
		alert("비밀번호를 적어주세요");
		return;
	}
	if(!form.title.value) {
		alert("제목을 적어주세요.");
		return;
	}
	if(!form.memo.value) {
		alert("내용을 적어주세요");
		return;
	}
	form.submit();
	
}
</script>
</head>

<body>
<%
	String checkName = "";
	checkName = (String)session.getAttribute("s_Name");
	if(checkName == null) {
		%>
		<script>
		self.window.alert("먼저 로그인 하세요.");
		location.href = "javascript:history.back()";
		</script>
		<%
	}
%>
<jsp:include page = "header.jsp"></jsp:include>

<jsp:include page = "nav.jsp"></jsp:include>

<div class="content">
<table align=center>
<form name=writeform method=post action="write_ok.jsp">
	<tr>
		<td>
			<table width="100%" cellpadding="0" border="0">
			<tr style="background:url('../boardimages/table_mid.gif') repeat-x; text-align: center;">
				<td width="5"><img src="../boardimages/table_left.gif" width="5" height="30"></td>
				<td>글쓰기</td>
				<td width="5"><img src="../boardimages/table_right.gif" width="5" height="30"></td>
				</tr>				
			</table>
			<table>
				<tr>
					<td>&nbsp;</td>
					<td align="center">제목</td>
					<td><input name="title" size="50" maxlength="100"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">이름</td>
					<td><input name="name" size="50" maxlength="50" value="<%=checkName %>"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">비밀번호</td>
					<td><input type="password" name="password" size="50" maxlength="100"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">내용</td>
					<td><textarea name="memo" cols="50" rows="13"></textarea></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr height="1" bgcolor="82B5DF">
					<td colspan="4"></td>
				</tr>
				<tr align="center">
					<td>&nbsp;</td>
					<td colspan="2">
						<input type="button" value="등록" onclick="javascript:writeCheck();">
						<input type="button" value="취소" onclick="javascript:history.back(-1)">
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</form>
</table>
</div>

<jsp:include page = "footer.jsp"></jsp:include>
</body>
</html>