<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
학사 정보 등록 화면
<form name="form" method="post" action="insertSchool_ok.jsp">
	<table border="1">
		<tr>
			<th>학번</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>학과</th>
			<td>
				<select>
					<option value="1">컴퓨터 공학과</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>학년</th>
			<td>
				<select>
					<option>1학년</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text" name="phone"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="등록" onclick="javascript:check()">
				<input type="button" value="취소">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>