<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
function check() {
	if(document.form.code.value == '') {
		alert('상품코드를 입력하세요.');
		document.form.code.focus();
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
	int id = Integer.parseInt(request.getParameter("id"));
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String category = "";
	String wname = "";
	String pname = "";
	String sname = "";
	int price = 0;
	int downprice = 0;
	String inputdate = "";
	int stock = 0;
	String description = "";
	String sub_date = "";
	
	try {
		String update = "SELECT * FROM productTbl WHERE id = ?";
		pstmt = conn.prepareStatement(update);
		pstmt.setInt(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			category = rs.getString(2);
			wname = rs.getString(3);
			pname = rs.getString(4);
			sname = rs.getString(5);
			price = rs.getInt(6);
			downprice = rs.getInt(7);
			inputdate = rs.getString(8);
			stock = rs.getInt(9);
			description = rs.getString(10);
			sub_date = inputdate.substring(0, 10);
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
<h2 align="center">상품추가</h2>
<form name="form" method="post" action="insert_ok.jsp">
<table border="1">
	<tr>
		<td>상품코드</td>
		<td><input type="text" name="code" value="<%=id %>"></td>
		<td>상품분류</td>
		<td>
			<select name="category">
				<option value="00" <%if(category.equals("00")){%>selected<%} %>>상품 분류</option>
				<option value="11" <%if(category.equals("11")){%>selected<%} %>>가구</option>
				<option value="22" <%if(category.equals("22")){%>selected<%} %>>전기/전자</option>
				<option value="33" <%if(category.equals("33")){%>selected<%} %>>부엌용품</option>
				<option value="44" <%if(category.equals("44")){%>selected<%} %>>의류</option>
				<option value="55" <%if(category.equals("55")){%>selected<%} %>>보석및 액세서리</option>
				<option value="66" <%if(category.equals("66")){%>selected<%} %>>헬스기구</option>
				<option value="77" <%if(category.equals("77")){%>selected<%} %>>컴퓨터 관련</option>
				<option value="88" <%if(category.equals("88")){%>selected<%} %>>기타</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>작성자이름</td>
		<td><input type="text" name="wname" value="<%=wname %>"></td>
		<td>상품 이름</td>
		<td><input type="text" name="pname" value="<%=pname %>"></td>
	</tr>
	<tr>
		<td>제조사 이름</td>
		<td colspan="4"><input type="text" name="sname" value="<%=sname %>"></td>
	</tr>
	<tr>
		<td>시중 가격</td>
		<td><input type="text" name="price" value="<%=price %>"></td>
		<td>판매 가격</td>
		<td><input type="text" name="downprice" value="<%=downprice %>"></td>
	</tr>
	<tr>
		<td>날짜</td>
		<td><input type="text" name="date" value="<%=sub_date %>"></td>
		<td>재고량</td>
		<td><input type="text" name="stock" value="<%=stock %>"></td>
	</tr>
	<tr>
		<td>메모</td>
		<td colspan="4">
			<textarea cols="50" rows="8" name="memo"><%=description %></textarea>
		</td>
	</tr>
	<tr>
		<td align="center" colspan="4">
			<input type="button" value="목록" onclick="location.href='select.jsp'">
			<input type="button" value="저장" onclick="javascript:check()">
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>