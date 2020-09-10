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
<h3 align="center">상품 정보 조회</h3><br>
<table border="1">
	<tr>
		<td>no</td>
		<td>상품코드</td>
		<td>상품명</td>
		<td>가격</td>
		<td>상세정보</td>
		<td>분류</td>
		<td>제조사</td>
		<td>재고수</td>
		<td>상태</td>
	</tr>
	<%
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=null;
		try{
			sql="select * from prodectTbl";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			String sql2=null;
			
			while(rs.next()){
				String id=rs.getString(1);
				String name=rs.getString(2);
				String price=rs.getString(3);
				String description=rs.getString(4);
				String category=rs.getString(5);
				String manufacturer=rs.getString(6);
				String unit=rs.getString(7);
				String condition=rs.getString(8);
				%>
				<tr>
					<td></td>
					<td><%=id %></td>
					<td><%=name %></td>
					<td><%=price %></td>
					<td><%=description %></td>
					<td><%=category %></td>
					<td><%=manufacturer %></td>
					<td><%=unit %></td>
					<td><%=condition %></td>
				
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