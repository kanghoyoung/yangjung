<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check(){
	if(document.insert_form.id.value==""){
		alert("아이디를 입력하세요.");
		document.insert_form.id.focus();
		return;
	}else if(document.insert_form.name.value==""){
		alert("이름을 입력하세요.");
		document.insert_form.name.focus();
		return;
	}else if(document.insert_form.password.value==""){
		alert("비밀번호를 입력하세요.");
		return;
	}
	document.insert_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql=null;
	int count=0;
	try{
		
			String sqlCount="select dept_seq.nextval from dual";
			pstmt=conn.prepareStatement(sqlCount);
			rs=pstmt.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
			}
			System.out.println("count"+count);
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
<br><br><br>
<h3 align="center">회원 정보 등록 화면</h3>
<form name="insert_form" method="post" action="insert_member_ok.jsp">
	<table border="1">
		<tr>
			<td align="center" width="100px">아이디</td>
			<td width="500px"><input type="text" name="id" size="20"  value="<%=count %>"></td>
		</tr>
		<tr>
			<td align="center" width="100px">이름</td>
			<td width="500px"><input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td align="center" width="100px">비밀번호</td>
			<td width="500px"><input type="password" name="password" size="20"></td>
		</tr>
		<tr>
			<td align="center" width="100px">성별</td>
			<td width="500px">
				<input type="radio" name="gender" value="1" checked>남
				<input type="radio" name="gender" value="2">여
			</td>
		</tr>
		<tr>
			<td align="center" width="100px">생년월일</td>
			<td width="500px"><input type="text" name="birth" size="20"></td>
		</tr>
		<tr>
			<td align="center" width="100px">이메일</td>
			<td>
				<input type="text" name="email" size="20">@
				<select name="select_email">
					<option value="1">naver.com</option>
					<option value="2">hanmail.net</option>
					<option value="3">gmail.com</option>
					<option value="4">kor.com</option>
				</select>
			</td>
		</tr>
		<tr>
			<td align="center" width="100px">핸드폰</td>
			<td>
				<select name="select_phone">
					<option value="1">010</option>
					<option value="2">011</option>
					<option value="3">012</option>
				</select>
				-
				<input type="text" name="phone_1" size="10">-
				<input type="text" name="phone_2" size="10">
			</td>
		</tr>
		<tr>
			<td align="center" width="100px">주소</td>
			<td width="500px">
				<input type="text" name="address" size="50">
			</td>
		</tr>
		<tr>
			<td align="center" width="100px">닉네임</td>
			<td>
				<input type="text" name="nickname" size="20">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="회원등록" onclick="javascript:check()">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>