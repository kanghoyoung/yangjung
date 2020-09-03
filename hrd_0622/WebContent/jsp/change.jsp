<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
	function change() {
		var form = document.change;
		if (!form.name.value) {
			alert("이름을 입력하세요");
			form.name.focus();
			return;
		}
		if (!form.id.value) {
			alert("사원번호를 입력하세요");
			form.id.focus();
			return;
		}
		if (!form.dept.value) {
			alert("사원번호를 입력하세요");
			form.dept.focus();
			return;
		}
		if (!form.position.value) {
			alert("직책을 입력하세요");
			form.position.focus();
			return;
		}
		if (!form.duty.value) {
			alert("직책을 입력하세요");
			form.duty.focus();
			return;
		}
		if (!form.phone.value) {
			alert("연락처를 입력하세요");
			form.phone.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<%
			request.setCharacterEncoding("utf-8");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "";
			String name = "";
			String id = "";
			String dept = "";
			String position = "";
			String duty = "";
			String phone = "";
			try {
				Statement stmt = conn.createStatement();
				sql = "select name,id,dept,position,duty,phone from personnel";
				rs = stmt.executeQuery(sql);
				if (rs.next()) {
					name = rs.getString("name");
					id = rs.getString("id");
					dept = rs.getString("dept");
					position = rs.getString("position");
					duty = rs.getString("duty");
					phone = rs.getString("phone");
				}
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
		<br><br><br><br>
		<h3 align="center">인사관리 사원정보변경 화면</h3>
		<br>
		<form name="change" method="post" action="change_ok.jsp">
			<table border="1">

				<tr>
					<td>성명</td>
					<td id="b"><input type="text" name="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<td>사원번호</td>
					<td id="b"><input type="text" name="id" value="<%=id%>">사원번호를
						통해 정보를 수정</td>
				</tr>
				<tr>
					<td>소속부서</td>
					<td id="b"><select name="dept">
							<option value="인사부">인사부</option>
							<option value="기획부">기획부</option>
							<option value="홍보부">홍보부</option>
							<option value="영업부">영업부</option>
							<option value="경리부">경리부</option>
					</select></td>
				</tr>
				<tr>
					<td>직급</td>
					<td id="b"><select name="position">
							<option value="1">1급</option>
							<option value="2">2급</option>
							<option value="3">3급</option>
							<option value="4">4급</option>
					</select></td>
				</tr>
				<tr>
					<td>직책</td>
					<td id="b"><input type="text" name="duty" value="<%=duty%>"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td id="b"><input type="text" name="phone" value="<%=phone%>"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" value="변경"
						onclick="javascript:change();"> <input type="button"
						value="취소" onclick="javascript:history.back()"></td>
				</tr>

			</table>
		</form>

	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>