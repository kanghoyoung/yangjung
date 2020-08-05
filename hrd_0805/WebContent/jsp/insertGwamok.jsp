<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1 align="center">교과목 추가</h1>
<form name="form" method="post" action="insertGwamok_ok.jsp">
	<table border="1">
		<tr>
			<th>교과목 코드</th>
			<td><input type="text" name="code"></td>
		</tr>
		<tr>
			<th>과 목 명</th>
			<td><input type="text" name="gwamok"></td>
		</tr>
		<tr>
			<th>학 점</th>
			<td><input type="text" name="score"></td>
		</tr>
		<tr>
			<th>담 당 강 사</th>
			<td>
				<select name="lecturer">
					<option value="1">담당강사 선택</option>
					<option value="2">김교수</option>
					<option value="3">이교수</option>
					<option value="4">박교수</option>
					<option value="5">우교수</option>
					<option value="6">최교수</option>
					<option value="7">강교수</option>
					<option value="8">황교수</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>요 일</th>
			<td>
				<input type="radio" name="week" value="1" checked>월
				<input type="radio" name="week" value="2">화
				<input type="radio" name="week" value="3">수
				<input type="radio" name="week" value="4">목
				<input type="radio" name="week" value="5">금
				<input type="radio" name="week" value="6">토
			</td>
		</tr>
		<tr>
			<th>시 작</th>
			<td><input type="text" name="start"></td>
		</tr>
		<tr>
			<th>종 료</th>
			<td><input type="text" name="end"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="목록" onclick="location='insertGwamok.jsp'">
				<input type="button" value="완료" onclick="javascript:check()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>