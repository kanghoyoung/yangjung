<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부품정보 등록</title>
<script>
function check() {
	if(document.form.partCode.value == '') {
		alert('부품번호를 입력하세요.');
		document.form.partCode.focus();
		return;
	} else if(document.form.partName.value == '') {
		alert('부품명을 입력하세요.');
		document.form.partName.focus();
		return;
	} else if(document.form.model.value == '') {
		alert('모델명을 입력하세요.');
		document.form.model.focus();
		return;
	} else if(document.form.standard.value == '') {
		alert('규격을 입력하세요.');
		document.form.standard.focus();
		return;
	} else if(document.form.unit.value == '') {
		alert('단위를 입력하세요.');
		document.form.unit.focus();
		return;
	} else if(document.form.purchase.value == '') {
		alert('매입가를 입력하세요.');
		document.form.purchase.focus();
		return;
	} else if(document.form.sales.value == '') {
		alert('매출가를 입력하세요.');
		document.form.sales.focus();
		return;
	} else if(document.form.memo.value == '') {
		alert('메모를 입력하세요.');
		document.form.memo.focus();
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
<h1 align="center">부품 정보 등록 화면</h1>
<br>
	<form name="form" method="post" action="insert_part_ok.jsp">
		<table border="1">
			<tr>
				<td align="center">부품정보</td>
				<td colspan="6"><input type="text" name="partCode" size="60"></td>
			</tr>
			<tr>
				<td align="center">부품명</td>
				<td colspan="6"><input type="text" name="partName" size="60"></td>
			</tr>
			<tr>
				<td align="center">모델명</td>
				<td colspan="6"><input type="text" name="model" size="60"></td>
			</tr>
			<tr>
				<td align="center">규격</td>
				<td colspan="6"><input type="text" name="standard" size="60"></td>
			</tr>
			<tr>
				<td align="center">단위</td>
				<td colspan="6"><input type="text" name="unit" size="60"></td>
			</tr>
			<tr>
				<td align="center">매입가</td>
				<td><input type="text" name="purchase"></td>
				<td align="center">매출가</td>
				<td><input type="text" name="sales"></td>
			</tr>
			<tr>
				<td align="center">메모</td>
				<td colspan="6"><textarea name="memo" rows="6" cols="50"></textarea></td>
			</tr>
			<tr>
				<td colspan="6" align="center">
					<input type="button" value="부품등록" onclick="javascript:check()">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>