<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd"); // form에서 넘어온 값
	String name = "";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs =  null;
	String sql = "";
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try {
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		
		sql = "select * from car_member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			String userId = rs.getString(1);
			String userPWD = rs.getString("passwd"); // db에 저장된 값
			String userName = rs.getString("name");
			if(passwd.equals(userPWD)) {
				%>
				<%=userName %>님 환영합니다.
				<%
				session.setAttribute("s_Name", userName);
				session.setAttribute("s_Id", userId);
				response.sendRedirect("index.jsp"); //
			}else{
				%>
				<script>
				alert("패스워드 오류\n패스워드를 다시 입력하세요.");
				history.back();
				</script>
				<%
			}
		}else{
			%>
			<script>
			alert("아이디오류\n아이디를 확인하세요");
			</script>
			<%
			out.println("사용자:"+"잘못된 id나 패스워드입니다.");
		}
		
	} catch (SQLException e) {
		out.println(e.getMessage());
	} finally {
		if(rs != null) {
			rs.close();
		}
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>