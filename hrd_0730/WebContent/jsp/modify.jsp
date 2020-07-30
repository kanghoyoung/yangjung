<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id");
	
%>
<form name="form" action="modify_ok.jsp">
	<table border="1">
		<tr>
			<th width="300px">사원번호(자동생성)</th>
			<td width="500px"><input type="text" name="id" size="30">(마지막 번호+1)</td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name" size="30"></td>
		</tr>
		<tr>
			<th>소속부서</th>
			<td>
				<select name="dept">
					<option value="1">인사부</option>
					<option value="2">기획부</option>
					<option value="3">홍보부</option>
					<option value="4">영업부</option>
					<option value="5">경리부</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>직급</th>
			<td>
				<select name="position">
					<option value="1">1급</option>
					<option value="2">2급</option>
					<option value="3">3급</option>
					<option value="4">4급</option>
					<option value="5">5급</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>직책</th>
			<td><input type="text" name="duty" size="30"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone" size="30"></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="address" size="30"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="등록">
				<input type="button" value="취소">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>