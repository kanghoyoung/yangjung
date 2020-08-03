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
	String name = "";
	String dept = "";
	String position = "";
	String duty = "";
	String phone = "";
	String address = "";
	
	try {
		String sql2 = "SELECT * FROM infoTbl WHERE id = ?";
		pstmt = conn.prepareStatement(sql2);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			name = rs.getString(2);
			dept = rs.getString(3);
			position = rs.getString(4);
			duty = rs.getString(5);
			phone = rs.getString(6);
			address = rs.getString(7);
		}
%>
<form name="form" action="modify_ok.jsp">
	<table border="1">
		<tr>
			<th width="300px">사원번호(자동생성)</th>
			<td width="500px"><input type="text" name="id" size="30" value="<%=id %>">(마지막 번호+1)</td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name" size="30" value="<%=name %>"></td>
		</tr>
		<tr>
			<th>소속부서</th>
			<td>
				<select name="dept">
					<option value="1" <%if(dept.equals("1")) {%>selected<%} %>>인사부</option>
					<option value="2" <%if(dept.equals("2")) {%>selected<%} %>>기획부</option>
					<option value="3" <%if(dept.equals("3")) {%>selected<%} %>>홍보부</option>
					<option value="4" <%if(dept.equals("4")) {%>selected<%} %>>영업부</option>
					<option value="5" <%if(dept.equals("5")) {%>selected<%} %>>경리부</option>
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
<%
	} catch (Exception e) {
		e.printStackTrace();
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>