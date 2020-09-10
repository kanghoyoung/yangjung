<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
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
<h3 align="center">회원 정보 조회</h3>
<br>
<table border="1">
	<tr>
		<td>id</td>
		<td>성명</td>
		<td>패스워드</td>
		<td>성별</td>
		<td>생년월일</td>
		<td>이메일</td>
		<td>휴대폰</td>
		<td>주소</td>
		<td>닉네임</td>
	</tr>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql=null;
	try{
		sql="select * from web_member";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			String id=rs.getString("id");
			String name=rs.getString("name");
			String password=rs.getString("password");
			String gender=rs.getString(4);
			String birth=rs.getString(5);
			String mail=rs.getString(6);
			String phone=rs.getString(7);
			String address=rs.getString(8);
			String nick=rs.getString("nickname");
			%>
			<tr>
				<td><%=id %></td>
				<td><%=name %></td>
				<td><%=password %></td>
				<td>
					<%
					if(gender.equals("1") || gender.equals("남성")){
						out.println("남성");
					}else if(gender.equals("2") || gender.equals("여성")){
						out.println("여성");
					}
					%>
				</td>
				<td><%=birth %></td>
				<td><%=mail %></td>
				<td><%=phone %></td>
				<td><%=address %></td>
				<td><%=nick %></td>
			</tr>
			<%
		}
		
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
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>