<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check() {
	if(document.form.code.value=='') {
		alert('교과목 코드가 입력되지 않았습니다.');
		document.form.code.focus();
		return;
	} else if (document.form.gwamok.value=='') {
		alert('교과목명이 입력되지 않았습니다.');
		document.form.gwamok.focus();
		return;
	} else if (document.form.score.value=='') {
		alert('학점이 입력되지 않았습니다.');
		document.form.score.focus();
		return;
	} else if (document.form.lecturer.value=='1') {
		alert('담당강사가 입력되지 않았습니다.');
		return;
	} else if (document.form.start.value=='') {
		alert('시작시간이 입력되지 않았습니다.');
		document.form.start.focus();
		return;
	} else if (document.form.end.value=='') {
		alert('종료시간이 입력되지 않았습니다.');
		document.form.end.focus();
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
	String code = request.getParameter("code");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String subject_name = "";
	String credit = "";
	String lecturer = "";
	String week = "";
	String start = "";
	String end = "";
	try {
		String update = "SELECT * FROM subTbl WHERE id = ?";
		pstmt = conn.prepareStatement(update);
		pstmt.setString(1, code);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			subject_name = rs.getString(2);
			credit = rs.getString(3);
			lecturer = rs.getString(4);
			week = rs.getString(5);
			start = rs.getString(6);
			end = rs.getString(7);
		}
%>
<h1 align="center">교과목 추가</h1>
<form name="form" method="post" action="modify_gwamok_ok.jsp">
	<table border="1">
		<tr>
			<th>교과목 코드</th>
			<td><input type="text" name="code" value="<%=code %>"></td>
		</tr>
		<tr>
			<th>과 목 명</th>
			<td><input type="text" name="gwamok" value="<%=subject_name %>"></td>
		</tr>
		<tr>
			<th>학 점</th>
			<td><input type="text" name="score" value="<%=credit %>"></td>
		</tr>
		<tr>
			<th>담 당 강 사</th>
			<td>
				<select name="lecturer">
					<option value="1" <%if(lecturer.equals("0")){%>selected<%} %>>담당강사 선택</option>
					<option value="2" <%if(lecturer.equals("1")){%>selected<%} %>>김교수</option>
					<option value="3" <%if(lecturer.equals("2")){%>selected<%} %>>이교수</option>
					<option value="4" <%if(lecturer.equals("3")){%>selected<%} %>>박교수</option>
					<option value="5" <%if(lecturer.equals("4")){%>selected<%} %>>우교수</option>
					<option value="6" <%if(lecturer.equals("5")){%>selected<%} %>>최교수</option>
					<option value="7" <%if(lecturer.equals("6")){%>selected<%} %>>강교수</option>
					<option value="8" <%if(lecturer.equals("7")){%>selected<%} %>>황교수</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>요 일</th>
			<td>
				<input type="radio" name="week" value="1" <%if(week.equals("1")){%>checked<%} %> checked>월
				<input type="radio" name="week" value="2" <%if(week.equals("2")){%>checked<%} %>>화
				<input type="radio" name="week" value="3" <%if(week.equals("3")){%>checked<%} %>>수
				<input type="radio" name="week" value="4" <%if(week.equals("4")){%>checked<%} %>>목
				<input type="radio" name="week" value="5" <%if(week.equals("5")){%>checked<%} %>>금
				<input type="radio" name="week" value="6" <%if(week.equals("6")){%>checked<%} %>>토
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
				<input type="button" value="목록" onclick="location='selectGwamok.jsp'">
				<input type="button" value="수정" onclick="javascript:check()">
			</td>
		</tr>
	</table>
</form>
<%
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
</section>
<jsp:include page="footer.jsp"></jsp:include>
</html>