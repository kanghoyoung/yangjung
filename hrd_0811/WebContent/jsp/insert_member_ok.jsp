<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	int db_id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String passwd = request.getParameter("password");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String input_email = request.getParameter("input_email");
	String email_select = request.getParameter("email_select");
	String phone_select = request.getParameter("phone_select");
	String phone_1 = request.getParameter("phone_1");
	String phone_2 = request.getParameter("phone_2");
	String address = request.getParameter("address");
	String nickname = request.getParameter("nickname");
	
	String sql2 = "";
	try {
		sql2 = "SELECT * FROM member0811";
		pstmt = conn.prepareStatement(sql2);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			int db_id2 = rs.getInt(1);
			
			if(db_id2==db_id) {
%>
<script>
alert('이미 등록된 아이디입니다.');
location.href="insert_member.jsp";
</script>
<%
			} else {
				sql = "INSERT INTO member0811 VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, db_id);
				pstmt.setString(2, passwd);
				pstmt.setString(3, name);
				pstmt.setString(4, gender);
				pstmt.setString(5, birth);
				pstmt.setString(6, input_email + "@" + email_select);
				pstmt.setString(7, phone_select + "-" + phone_1 + "-" + phone_2);
				pstmt.setString(8, address);
				pstmt.setString(9, nickname);
				pstmt.executeUpdate();
		}
	}
%>
<script>
self.window.alert('등록되었습니다.');
location.href="insert_member.jsp";
</script>
<%
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