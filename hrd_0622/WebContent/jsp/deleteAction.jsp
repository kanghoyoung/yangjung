<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>

<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	String sql=null;
	try{
		
		String name=request.getParameter("name");
		int id=Integer.parseInt(request.getParameter("id"));
		Statement stmt=conn.createStatement();
		sql="delete from personnel where id="+id;
		stmt.executeUpdate(sql);
		%>
<script>
		self.window.alert("삭제했습니다");
		location.href="delete.jsp";
		</script>
<%
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(conn!=null){
			conn.close();
		}
	}
%>
