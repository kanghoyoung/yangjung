<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
%>
<br><br><br>
<h2 align="center">성적조회목록</h2>
<br>
<table border="1">
	<tr>
		<th>학년</th>
		<th>반</th>
		<th>번호</th>
		<th>성명</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>역사</th>
		<th>총점</th>
		<th>평균</th>
	</tr>
<%
	try {
		sql = "SELECT sNo, sName, kor, eng, math, hist, kor+eng+math+hist, trunc((kor+eng+math+hist)/4, 3) FROM scoreTbl ORDER BY sNo";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String sno = rs.getString(1);
			String sname = rs.getString(2);
			int kor = rs.getInt(3);
			int eng = rs.getInt(4);
			int math = rs.getInt(5);
			int hist = rs.getInt(6);
			String sum = rs.getString(7);
			String avg = rs.getString(8);
			
			String hak = sno.substring(0, 1);
			String ban = sno.substring(1, 3);
			String bun = sno.substring(3);
%>
	<tr>
		<td><%=hak %></td>
		<td><%=ban %></td>
		<td><%=bun %></td>
		<td><%=sname %></td>
		<td><%=kor %></td>
		<td><%=eng %></td>
		<td><%=math %></td>
		<td><%=hist %></td>
		<td><%=sum %></td>
		<td><%=avg %></td>
	</tr>
<%
		} // while
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>

<%
	try {
		sql = "SELECT SUM(kor), SUM(eng), SUM(math), SUM(hist), SUM(kor)+SUM(eng)+SUM(math)+SUM(hist),trunc((SUM(kor)+SUM(eng)+SUM(math)+SUM(hist))/4, 3) FROM scoreTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String Ksum = rs.getString(1);
			String Esum = rs.getString(2);
			String Msum = rs.getString(3);
			String Hsum = rs.getString(4);
			String Ssum = rs.getString(5);
			String Asum = rs.getString(6);
%>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<th>총점</th>
		<td><%=Ksum %></td>
		<td><%=Esum %></td>
		<td><%=Msum %></td>
		<td><%=Hsum %></td>
		<td><%=Ssum %></td>
		<td><%=Asum %></td>
	</tr>
<%
		} // while
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(pstmt!=null) {
			pstmt.close();
		}
		if(rs!=null) {
			rs.close();
		}
	}
%>

<%
	try {
		sql = "SELECT TRUNC(AVG(kor), 3), TRUNC(AVG(eng), 3), TRUNC(AVG(math), 3), TRUNC(AVG(hist), 3), TRUNC(AVG(kor)+AVG(eng)+AVG(math)+AVG(hist), 3), TRUNC((AVG(kor)+AVG(eng)+AVG(math)+AVG(hist))/4, 3) FROM scoreTbl";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			String Kavg = rs.getString(1);
			String Eavg = rs.getString(2);
			String Mavg = rs.getString(3);
			String Havg = rs.getString(4);
			String Savg = rs.getString(5);
			String Aavg = rs.getString(6);
%>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<th>총평균</th>
			<td><%=Kavg %></td>
			<td><%=Eavg %></td>
			<td><%=Mavg %></td>
			<td><%=Havg %></td>
			<td><%=Savg %></td>
			<td><%=Aavg %></td>
		</tr>
<%
		} // while
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn!=null) {
				conn.close();
			}
			if(rs!=null) {
				rs.close();
			}
			if(pstmt!=null) {
				pstmt.close();
			}
		}
%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>