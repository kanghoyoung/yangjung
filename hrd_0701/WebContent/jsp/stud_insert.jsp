<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사 정보 등록 화면</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">학사 정보 등록 화면</h1>
	<form name="form" method="post" action="stud_insert_ok.jsp">
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
					<select name="dept">
						<option value="1">컴퓨터공학과</option>
						<option value="2">기계공학과</option>
						<option value="3">전자과</option>
						<option value="4">영문학과</option>
						<option value="5">일어과</option>
						<option value="6">경영학과</option>
						<option value="7">무역학과</option>
						<option value="8">교육학과</option>
					</select>
				</td>
			</tr>
		</table>
	</form>
<br>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>