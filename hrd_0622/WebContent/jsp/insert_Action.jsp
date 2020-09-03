<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	String sql="";
	String name=request.getParameter("name");
	int id=Integer.parseInt(request.getParameter("id"));
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	try{
		
		sql="INSERT INTO personnel values(personnel_seq.nextval,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, dept);
		pstmt.setString(3, position);
		pstmt.setString(4, duty);
		pstmt.setString(5, phone);
		pstmt.executeUpdate();
		%>
<script>
		self.window.alert("저장했습니다");
		location.href="insert.jsp";
		</script>
<%
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
%>
