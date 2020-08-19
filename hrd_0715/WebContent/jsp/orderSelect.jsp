<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹 쇼핑몰 사이트</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String cnt = "";
	int count = 0;
	
	try {
		cnt = "SELECT COUNT(*) FROM productTbl";
		pstmt = conn.prepareStatement(cnt);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<h2 align="center">주문 정보 목록</h2>
<%out.println("총 " + count + "개의 상품이 있습니다."); %>
<table border="1">
	<tr>
		<th>상품코드</th>
		<th>주문자이름</th>
		<th>주문날짜</th>
		<th>배달주소</th>
		<th>전화번호</th>
		<th>결제방법</th>
		<th>카드번호</th>
		<th>주문상품수</th>
		<th>판매가격</th>
		<th>총금액</th>
		<th>구분</th>
	</tr>
	<tr>
		
	</tr>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>