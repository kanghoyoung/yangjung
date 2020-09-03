<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnection.jsp"%>
<%
	ResultSet rs=null;
	PreparedStatement pstmt=null;
	String sql="";
	try{
		
		String hakbun=request.getParameter("hakbun");
		sql="select * from examtbl where sno=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,hakbun);
		rs=pstmt.executeQuery();
		if(rs.next()){
			sql="delete from examtbl where sno=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,hakbun);
			pstmt.executeUpdate();
			%>
<script>
				self.window.alert("성적을 삭제했습니다");
				location.href="delete.jsp";
				</script>
<%
		}else{
			%>
<script>
				self.window.alert("없는학번입니다");
				location.href="delete.jsp";
				</script>
<%
		}
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
