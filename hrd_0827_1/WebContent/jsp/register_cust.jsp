<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
	<div class="section">
		<b>홈쇼핑 회원 등록</b>
	</div>
	<br>
	<form name="form" method="post" action="register_cust_ok.jsp">
		<table border="1">
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" name="custno"></td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>