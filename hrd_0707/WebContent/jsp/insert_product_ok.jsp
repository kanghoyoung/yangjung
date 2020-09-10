<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="db.jsp" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	String sql=null;
	
	try{
		String productId=request.getParameter("productId");
		String produtName=request.getParameter("produtName");
		String unitprice=request.getParameter("unitprice");
		String description=request.getParameter("description");
		String manufacturer=request.getParameter("manufacturer");
		String category=request.getParameter("category");
		String unitsInstock=request.getParameter("unitsInstock");
		String condition=request.getParameter("condition");
		sql="insert into prodectTbl values(?,?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,productId);
		pstmt.setString(2,produtName);
		pstmt.setString(3,unitprice);
		pstmt.setString(4,description);
		pstmt.setString(5,manufacturer);
		pstmt.setString(6,category);
		pstmt.setString(7,unitsInstock);
		pstmt.setString(8,condition);
		pstmt.executeUpdate();
		%>
		<script>
		self.window.alert("등록되었습니다");
		location.href="insert_product.jsp";
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