<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<% 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id");
	String name = "";
	String credit = "";
	String lecturer = "";
	String week = "";
	String start = "";
	String end = "";
	try {
		sql = "SELECT * FROM course_tbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			name = rs.getString(2);
			credit = rs.getString(3);
			lecturer = rs.getString(4);
			week = rs.getString(5);
			start = rs.getString(6);
			end = rs.getString(7);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 추가</title>
<script>
function check() {
	if (document.form.code.value == '') {
		alert('교과목 코드를 입력하세요.');
		document.form.code.focus();
		return;
	} else if (document.form.name.value == '') {
		alert('과목명을 입력하세요.');
		document.form.name.focus();
		return;
	} else if (document.form.score.value == '') {
		alert('학점을 입력하세요.');
		document.form.score.focus();
		return;
	} else if (document.form.lecturer.value == '') {
		alert('담당강사를 입력하세요.');
		document.form.lecturer.focus();
		return;
	} else if (document.form.start.value == '') {
		alert('시작을 입력하세요.');
		document.form.start.focus();
		return;
	} else if (document.form.end.value == '') {
		alert('종료를 입력하세요.');
		document.form.end.focus();
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
<h1 align="center">교과목 추가</h1>
<br>
	<form name="form" method="post" action="modify_ok.jsp">
		<table border="1">
			<tr>
				<th>교과목 코드</th>
				<td><input type="text" name="code" value="<%=id %>"></td>
			</tr>
			<tr>
				<th>과 목 명</th>
				<td><input type="text" name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<th>학 점</th>
				<td><input type="text" name="score" value="<%=credit %>"></td>
			</tr>
			<tr>
				<th>담 당 강 사</th>
				<td>
					<select name="lecturer">
						<option value="" <% if (lecturer.equals("")) {%> selected <%} %>>담당강사 선택</option>
						<option value="김교수" <% if (lecturer.equals("1") || lecturer.equals("김교수")) {%> selected <%} %>>김교수</option>
						<option value="이교수" <% if (lecturer.equals("2") || lecturer.equals("이교수")) {%> selected <%} %>>이교수</option>
						<option value="박교수" <% if (lecturer.equals("3") || lecturer.equals("박교수")) {%> selected <%} %>>박교수</option>
						<option value="우교수" <% if (lecturer.equals("4") || lecturer.equals("우교수")) {%> selected <%} %>>우교수</option>
						<option value="최교수" <% if (lecturer.equals("5") || lecturer.equals("최교수")) {%> selected <%} %>>최교수</option>
						<option value="강교수" <% if (lecturer.equals("6") || lecturer.equals("강교수")) {%> selected <%} %>>강교수</option>
						<option value="황교수" <% if (lecturer.equals("7") || lecturer.equals("황교수")) {%> selected <%} %>>황교수</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>요 일</th>
				<td>
					<input type="radio" name="week" value="1" <% if(week.equals("1")) {%> checked <%} %> checked>월
					<input type="radio" name="week" value="2" <% if(week.equals("2")) {%> checked <%} %>>화
					<input type="radio" name="week" value="3" <% if(week.equals("3")) {%> checked <%} %>>수
					<input type="radio" name="week" value="4" <% if(week.equals("4")) {%> checked <%} %>>목
					<input type="radio" name="week" value="5" <% if(week.equals("5")) {%> checked <%} %>>금
					<input type="radio" name="week" value="6" <% if(week.equals("6")) {%> checked <%} %>>토
					<input type="radio" name="week" value="7" <% if(week.equals("7")) {%> checked <%} %>>일
				</td>
			</tr>
			<tr>
				<th>시 작</th>
				<td><input type="text" name="start" value="<%=start %>"></td>
			</tr>
			<tr>
				<th>종 료</th>
				<td><input type="text" name="end" value="<%=end %>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="목록" onclick="location.href='select.jsp'">
					<input type="button" value="수정" onclick="javascript:check()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>