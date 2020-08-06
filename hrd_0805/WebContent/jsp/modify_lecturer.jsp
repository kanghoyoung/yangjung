<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 등록</title>
<script>
function lecturer_check() {
	if(document.lecturer_form.lecturerName.value == '') {
		alert('강사명이 입력되지 않았습니다.');
		document.lecturer_form.lecturerName.focus();
		return;
	} else if (document.lecturer_form.major.value == '') {
		alert('전공이 입력되지 않았습니다.');
		document.lecturer_form.major.focus();
		return;
	} else if (document.lecturer_form.detailMajor.value == '') {
		alert('세부전공이 입력되지 않았습니다.');
		document.lecturer_form.detailMajor.focus();
		return;
	}
	document.lecturer_form.submit();
}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	request.setCharacterEncoding("utf-8");
	int idx = Integer.parseInt(request.getParameter("idx"));
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String name = "";
	String major = "";
	String field = "";
	try {
		String update = "SELECT * FROM teachertbl WHERE idx = ?";
		pstmt = conn.prepareStatement(update);
		pstmt.setInt(1, idx);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			name = rs.getString(2);
			major = rs.getString(3);
			field = rs.getString(4);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(conn!=null){
			conn.close();
		}
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
	}
%>
<h1 align="center">강사 추가</h1>
<form name="lecturer_form" method="post" action="modify_lecturer_ok.jsp" >
	<table border="1">
		<tr>
			<th>강사 ID</th>
			<td><input type="text" name="lecturerId" value="<%=idx %>">자동증가(Sequence 발생)</td>
		</tr>
		<tr>
			<th>강 사 명</th>
			<td><input type="text" name="lecturerName" value="<%=name %>"></td>
		</tr>
		<tr>
			<th>전 공</th>
			<td><input type="text" name="major" value="<%=major %>"></td>
		</tr>
		<tr>
			<th>세부 전공</th>
			<td><input type="text" name="detailMajor" value="<%=field %>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="목록" onclick="location='selectLecturer.jsp'">
				<input type="button" value="수정" onclick="javascript:lecturer_check()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>