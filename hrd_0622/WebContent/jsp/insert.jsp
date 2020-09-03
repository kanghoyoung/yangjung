<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/index.css">
<script>
	function check() {
		if (document.form.name.value == "") {
			alert("이름을 입력하세요");
			document.form.name.focus();
			return;
		} else if (document.form.id.value == "") {
			alert("사원번호를입력하세요.");
			document.form.id.focus();
			return;
		} else if (document.form.duty.value == "") {
			alert("직책을입력하세요.");
			document.form.doty.focus();
			return;
		} else if (document.form.phone.value == "") {
			alert("연락처를입력하세요");
			document.form.phone.focus();
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
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql=null;
	int count=0;
	try{
		
			String sqlCount="select personnel_seq.nextval from dual";
			pstmt=conn.prepareStatement(sqlCount);
			rs=pstmt.executeQuery();
			if(rs.next()){
				count=rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
		<br><br><br><br>
		<h3 align="center">인사관리 사원 등록 화면</h3>
		<br>
		<form name="form" method="post" action="insert_Action.jsp">
			<table border="1">
				<tr>
					<td>성명</td>
					<td id="b"><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>사원번호</td>
					<td id="b"><input type="text" name="id"></td>
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
					<td id="b"><input type="text" name="duty"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td id="b"><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td align="center" colspan=2><input type="button" value="등록"
						onclick="javascript:check()"> <input type="button"
						value="취소" onclick="location='index.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>