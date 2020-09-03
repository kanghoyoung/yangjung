<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnection.jsp"%>
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
		<br><br><br><br>
		<h1 align="center">성적조회목록</h1>
		<br>
		<table border="1">
			<tr align="center">
				<td>학년</td>
				<td>반</td>
				<td>번호</td>
				<td>성명</td>
				<td>국어</td>
				<td>영어</td>
				<td>수학</td>
				<td>역사</td>
				<td>총점</td>
				<td>평균</td>
			</tr>

			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				try {
					String sql = "select sno, sname, kor, eng, math, hist, kor+eng+math+hist, trunc((kor+eng+math+hist)/4,3) from examtbl order by sno";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()) {

						String sno = rs.getString(1);
						String name = rs.getString(2);
						String kor = rs.getString(3);
						String eng = rs.getString(4);
						String math = rs.getString(5);
						String hist = rs.getString(6);
						String sum = rs.getString(7);
						String avg = rs.getString(8);
			%>
			<tr align="center">
				<%
					String hak = sno.substring(0, 1);
				%>
				<%
					String ban = sno.substring(1, 3);
				%>
				<%
					String no = sno.substring(sno.length() - 2, sno.length());
				%>
				<td class=center><%=hak%></td>
				<td class=center><%=ban%></td>
				<td class=center><%=no%></td>
				<td class=center><%=name%></td>
				<td class=right><%=kor%></td>
				<td class=right><%=eng%></td>
				<td class=right><%=math%></td>
				<td class=right><%=hist%></td>
				<td class=right><%=sum%></td>
				<td class=right><%=avg%></td>
			</tr>

			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				} finally {

					if (rs != null) {
						rs.close();
					}
					if (pstmt != null) {
						pstmt.close();
					}
				}
			%>

			<%
				ResultSet rs2 = null;
				PreparedStatement pstmt2 = null;
				try {
					String sql = "select sum(kor), sum(eng), sum(math), sum(hist), sum(kor)+sum(eng)+sum(math)+sum(hist),trunc((sum(kor)+sum(eng)+sum(math)+sum(hist))/4,3) from examtbl";
					pstmt2 = conn.prepareStatement(sql);
					rs2 = pstmt2.executeQuery();
					while (rs2.next()) {
						String Ksum = rs2.getString(1);
						String Esum = rs2.getString(2);
						String Msum = rs2.getString(3);
						String Hsum = rs2.getString(4);
						String Ssum = rs2.getString(5);
						String Asum = rs2.getString(6);
			%>

			<tr>
				<td></td>
				<td></td>
				<td></td>
				<th>총점</th>
				<td class=right><%=Ksum%></td>
				<td class=right><%=Esum%></td>
				<td class=right><%=Msum%></td>
				<td class=right><%=Hsum%></td>
				<td class=right><%=Ssum%></td>
				<td class=right><%=Asum%></td>
			</tr>
			<%
				}

				} catch (Exception e) {
					e.printStackTrace();
				} finally {

					if (rs2 != null) {
						rs2.close();
					}
					if (pstmt2 != null) {
						pstmt2.close();
					}
				}
			%>

			<%
				ResultSet rs3 = null;
				PreparedStatement pstmt3 = null;
				try {
					String sql = "select trunc(avg(kor), 3), trunc(avg(eng), 3), trunc(avg(math), 3), trunc(avg(hist), 3), trunc(avg(kor)+avg(eng)+avg(math)+avg(hist), 3), trunc((avg(kor)+avg(eng)+avg(math)+avg(hist))/4, 3) from examtbl";
					pstmt3 = conn.prepareStatement(sql);
					rs3 = pstmt3.executeQuery();
					while (rs3.next()) {
						String Kavg = rs3.getString(1);
						String Eavg = rs3.getString(2);
						String Mavg = rs3.getString(3);
						String Havg = rs3.getString(4);
						String Savg = rs3.getString(5);
						String Aavg = rs3.getString(6);
			%>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<th>총평균</th>
				<td class=right><%=Kavg%></td>
				<td class=right><%=Eavg%></td>
				<td class=right><%=Mavg%></td>
				<td class=right><%=Havg%></td>
				<td class=right><%=Savg%></td>
				<td class=right><%=Aavg%></td>
			</tr>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (rs3 != null) {
						rs3.close();
					}
					if (pstmt3 != null) {
						pstmt3.close();
					}
					if (conn != null) {
						conn.close();
					}
				}
			%>

		</table>

	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>