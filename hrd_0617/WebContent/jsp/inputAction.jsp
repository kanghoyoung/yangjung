<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnection.jsp"%>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	String sql="";
	String hakbun=request.getParameter("hakbun");
	String name=request.getParameter("name");
	int kor=Integer.parseInt(request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int math=Integer.parseInt(request.getParameter("math"));
	int hist=Integer.parseInt(request.getParameter("hist"));
	
	try{
		sql="INSERT INTO examtbl values(?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,hakbun);
		pstmt.setString(2,name);
		pstmt.setInt(3,kor);
		pstmt.setInt(4,eng);
		pstmt.setInt(5,math);
		pstmt.setInt(6,hist);
		pstmt.executeUpdate();
		%>
<script>
		self.window.alert("성적을 저장했습니다");
		location.href="input.jsp";
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
	}
%>