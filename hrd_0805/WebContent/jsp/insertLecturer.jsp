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
<h1 align="center">강사 추가</h1>
<form name="lecturer_form" method="post" action="insertLecturer_ok.jsp" >
	<table border="1">
		<tr>
			<th>강사 ID</th>
			<td><input type="text" name="lecturerId">자동증가(Sequence 발생)</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>