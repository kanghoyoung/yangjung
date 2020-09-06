<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	try {
		sql = "SELECT * FROM partTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부품정보조회</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<br><br><br>
<h1 align="center">부품 정보 조회</h1>
	<table border="1">
		<tr>
			<td align="center">no</td>
			<td align="center">부품정보</td>
			<td align="center">부풍명</td>
			<td align="center">모델명</td>
			<td align="center">규격</td>
			<td align="center">단위</td>
			<td align="center">매입가격</td>
			<td align="center">매출가격</td>
			<td align="center">메모</td>
		</tr>
<%
		while (rs.next()) {
			String partCode = rs.getString(1); // 부품코드
			String partName = rs.getString(2); // 부풍명
			String model = rs.getString(3); // 모델
			String standard = rs.getString(4); // 규격
			String unit = rs.getString(5); // 단위
			String purchase = rs.getString(6); // 매입가격
			String sales = rs.getString(7); // 매출가격
			String memo = rs.getString(8); // 메모
			cnt++;
%>
		<tr>
			<td><%=cnt %></td>
			<td><%=partCode %></td>
			<td><%=partName %></td>
			<td><%=model %></td>
			<td><%=standard %></td>
			<td><%=unit %></td>
			<td><%=purchase %></td>
			<td><%=sales %></td>
			<td><%=memo %></td>
		</tr>
<%
		} // while
%>
	</table>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (rs != null) {
			rs.close();
		}
	}
%>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</section>
</body>
</html>