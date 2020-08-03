<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<h1 align="center">인사관리 호봉 등록화면</h1>
<form name="post" action="hobong_insert_ok.jsp">
	<table border="1">
		<tr>
			<th width="300px">직급</th>
			<td width="500px">
				<select name="dunggub">
					<option value="1">1급</option>
					<option value="2">2급</option>
					<option value="3">3급</option>
					<option value="4">4급</option>
					<option value="5">5급</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>급여</th>
			<td><input type="text" name="salary" size="30"></td>
		</tr>
		<tr>
				<td colspan="2" align="center">
				<input type="submit" value="등록">
				<input type="button" value="취소" onclick="location='hobong_select.jsp'">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>