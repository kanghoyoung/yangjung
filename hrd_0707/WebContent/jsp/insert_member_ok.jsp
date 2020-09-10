<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql=null;
	try{
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String birth=request.getParameter("birth");
		String email=request.getParameter("email");
		String select_email=request.getParameter("select_email");
		String select_phone=request.getParameter("select_phone");
		String phone_1= request.getParameter("phone_1");
		String phone_2= request.getParameter("phone_2");
		String address=request.getParameter("address");
		String nickname=request.getParameter("nickname");
		
		sql="insert into web_member values(dept_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		pstmt=conn.prepareStatement(sql);
		//pstmt.setString(1,id);
		pstmt.setString(2,name);
		pstmt.setString(3,password);
		pstmt.setString(4,gender);
		pstmt.setString(5,birth);
		pstmt.setString(6,email+select_email);
		pstmt.setString(7,select_phone+phone_1+phone_2);
		pstmt.setString(8,address);
		pstmt.setString(9,nickname);
		
		pstmt.executeUpdate();
		%>
		<script>
		self.window.alert("완료되었습니다");
		location.href="insert_member.jsp";
		</script>
		<%
		
	}catch(Exception e){
		e.printStackTrace();
		
	}finally{
		if(pstmt!=null){
			pstmt.close();
		}
		if(rs!=null){
			rs.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
%>
</body>
</html>