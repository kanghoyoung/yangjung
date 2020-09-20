<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8"); // 한글깨짐처리
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd");
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	try {
		String sql = "select id,passwd from membertable where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
	
		if(rs.next()) {
			String rId = rs.getString("id");
			String rPass = rs.getString("passwd");
			if(pstmt != null) {
				pstmt.close();
			}
		if(id.equals(rId) && pass.equals(rPass)) {
			sql = "delete from membertable where id= ? and passwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,rId);
			pstmt.setString(2,rPass);
			pstmt.executeUpdate();
			out.println("삭제 완료");
			} else {
				out.println("비밀번호가 일치하지 않습니다.");
			}
		} else {
			out.println("일치하는 아이디가 없습니다");
		}
	} catch (SQLException e) {
		out.println("삭제오류"+e.getMessage());
	} finally {
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
%>
</body>
</html>