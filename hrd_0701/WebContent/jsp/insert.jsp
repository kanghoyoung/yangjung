<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form name="form" method="post" action="insert_ok.jsp">
		<table border="1">
			<tr>
				<th>교과목 코드</th>
				<td><input type="text" name="code"></td>
			</tr>
			<tr>
				<th>과 목 명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>학 점</th>
				<td><input type="text" name="score"></td>
			</tr>
			<tr>
				<th>담 당 강 사</th>
				<td>
					<select name="lecturer">
						<option value="">담당강사 선택</option>
						<option value="김교수">김교수</option>
						<option value="이교수">이교수</option>
						<option value="박교수">박교수</option>
						<option value="우교수">우교수</option>
						<option value="최교수">최교수</option>
						<option value="강교수">강교수</option>
						<option value="황교수">황교수</option>
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
					<input type="radio" name="week" value="7">일
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
					<input type="button" value="목록" onclick="location.href='select.jsp'">
					<input type="button" value="완료" onclick="javascript:check()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>