<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check() {
	if(document.form.name.value == '') {
		alert('성명이 입력되지 않았습니다.');
		document.form.name.focus();
		return;
	}
	document.form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int id = Integer.parseInt(request.getParameter("id"));
	String name = "";
	String dept = "";
	String position = "";
	String duty = "";
	String phone = "";
	try {
		sql = "SELECT * FROM insaTbl WHERE id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			name = rs.getString("name");
			dept = rs.getString("dept");
			position = rs.getString("position");
			duty = rs.getString("duty");
			phone = rs.getString("phone");
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
%>
<br><br><br>
<h2 align="center">인사관리 시스템을 작성한다</h2>
<form name="form" method="post" action="modify_ok.jsp">
	<table border="1">
		<tr>
			<th>성명</th>
			<td><input type="text" name="name" value="<%=name %>"></td>
		</tr>
		<tr>
			<th>사원번호</th>
			<td><input type="text" name="id" value="<%=id %>"></td>
		</tr>
		<tr>
			<th>소속부서</th>
			<td>
				<select name="dept">
					<option value="인사부" <%if(dept.equals("인사부")){%>selected<%} %>>인사부</option>
					<option value="기획부" <%if(dept.equals("기획부")){%>selected<%} %>>기획부</option>
					<option value="홍보부" <%if(dept.equals("홍보부")){%>selected<%} %>>홍보부</option>
					<option value="영업부" <%if(dept.equals("영업부")){%>selected<%} %>>영업부</option>
					<option value="경리부" <%if(dept.equals("경리부")){%>selected<%} %>>경리부</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>직급</th>
			<td>
				<select name="position">
					<option value="1" <%if(position.equals("1")){%>selected<%} %>>1급</option>
					<option value="2" <%if(position.equals("2")){%>selected<%} %>>2급</option>
					<option value="3" <%if(position.equals("3")){%>selected<%} %>>3급</option>
					<option value="4" <%if(position.equals("4")){%>selected<%} %>>4급</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>직책</th>
			<td><input type="text" name="duty" value="<%=duty %>"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone" value="<%=phone %>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="변 경" onclick="javascript:check()">
				<input type="button" value="취 소" onclick="location='index.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>