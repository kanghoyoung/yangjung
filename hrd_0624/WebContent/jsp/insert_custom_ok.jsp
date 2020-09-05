<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String gender = request.getParameter("gender");
	String mail = request.getParameter("mail");
	String select_mail = request.getParameter("select_mail");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String address = request.getParameter("address");
	String carNumber = request.getParameter("carNumber");
	String carType = request.getParameter("carType");
	try {
		sql = "INSERT INTO custom_member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, gender);
		pstmt.setString(5, mail + "@" + select_mail);
		pstmt.setString(6, phone1 + "-" + phone2 + "-" + phone3);
		pstmt.setString(7, tel1 + "-" + tel2 + "-" + tel3);
		pstmt.setString(8, address);
		pstmt.setString(9, carNumber);
		pstmt.setString(10, carType);
		pstmt.executeUpdate();
%>
<script>
alert('등록되었습니다.');
location.href="index.jsp";
</script>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (conn != null) {
			conn.close();
		}
	}
%>