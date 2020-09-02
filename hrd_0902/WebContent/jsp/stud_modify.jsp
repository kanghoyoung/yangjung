<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String no = request.getParameter("studno");
	String name = "";
	String dept = "";
	String position = "";
	String address = "";
	String phone = "";
	String hobby = "";
	String[] split_hobby = new String[100];
	try {
		sql = "SELECT * FROM stud0902 WHERE studno = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			name = rs.getString(2);
			dept = rs.getString(3);
			position = rs.getString(4);
			address = rs.getString(5);
			phone = rs.getString(6);
			hobby = rs.getString(7);
			split_hobby = hobby.split(",");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 정보 수정</title>
<script>
function check() {
	if (document.form.hakbun.value == '') {
		alert('학번이 입력되지 않았습니다.');
		document.form.hakbun.focus();
		return;
	} else if (document.form.name.value == '') {
		alert('성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	} else if (document.form.address.value == '') {
		alert('주소가 입력되지 않았습니다.');
		document.form.address.focus();
		return;
	} else if (document.form.phone.value == '') {
		alert('연락처가 입력되지 않았습니다.');
		document.form.phone.focus();
		return;
	} else {
		document.form.submit();
	}
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">학사 정보 수정</h1>
<br>
	<form name="form" method="post" action="stud_modify_ok.jsp">
		<table border="1">
			<tr>
				<th>학번</th>
				<td><input type="text" name="hakbun" value="<%=no %>"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<th>학과</th>
				<td>
					<select name="hakgwa">
						<option value="1" <% if (dept.equals("1")) { %> selected <% } %>>컴퓨터공학과</option>
						<option value="2" <% if (dept.equals("2")) { %> selected <% } %>>기계공학과</option>
						<option value="3" <% if (dept.equals("3")) { %> selected <% } %>>전자과</option>
						<option value="4" <% if (dept.equals("4")) { %> selected <% } %>>영문학과</option>
						<option value="5" <% if (dept.equals("5")) { %> selected <% } %>>일어과</option>
						<option value="6" <% if (dept.equals("6")) { %> selected <% } %>>경영학과</option>
						<option value="7" <% if (dept.equals("7")) { %> selected <% } %>>무역학과</option>
						<option value="8" <% if (dept.equals("8")) { %> selected <% } %>>교욱학과</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>학년</th>
				<td>
					<input type="radio" name="hakyen" value="1" <% if (position.equals("1")) {%> checked <%} %> checked> 1학년
					<input type="radio" name="hakyen" value="2" <% if (position.equals("2")) {%> checked <%} %>> 2학년
					<input type="radio" name="hakyen" value="3" <% if (position.equals("3")) {%> checked <%} %>> 3학년
					<input type="radio" name="hakyen" value="4" <% if (position.equals("4")) {%> checked <%} %>> 4학년
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<input type="checkbox" name="hobby" value="프로그램" 
<% 
					for (String s : split_hobby) {
						if ("프로그램".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					>프로그램&nbsp;
					
					<input type="checkbox" name="hobby" value="독서"
<% 
					for (String s : split_hobby) {
						if ("독서".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>					
					>독서&nbsp;
					
					<input type="checkbox" name="hobby" value="등산"
					
<% 
					for (String s : split_hobby) {
						if ("등산".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>등산&nbsp;
					
					<input type="checkbox" name="hobby" value="여행"
					
<% 
					for (String s : split_hobby) {
						if ("여행".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>여행&nbsp;
					
					<input type="checkbox" name="hobby" value="낚시"
					
<% 
					for (String s : split_hobby) {
						if ("낚시".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>낚시&nbsp;
					
					<input type="checkbox" name="hobby" value="영화보기"
					
<% 
					for (String s : split_hobby) {
						if ("영화보기".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>영화보기&nbsp;
					
					<input type="checkbox" name="hobby" value="잠자기"
					
<% 
					for (String s : split_hobby) {
						if ("잠자기".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>잠자기&nbsp;
					
					<input type="checkbox" name="hobby" value="멍때리기"
					
<% 
					for (String s : split_hobby) {
						if ("멍때리기".equals(s)) {
							%>
							checked
							<%
							break;
						}
					}
%>
					
					>멍때리기&nbsp;
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address" value="<%=address %>"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone" value="<%=phone %>"></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="button" value="수정" onclick="javascript:check()">
					<input type="button" value="취소" onclick="location.href='index.jsp'">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>