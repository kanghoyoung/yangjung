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
<%
request.setCharacterEncoding("utf-8");
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String password="";
String sql="";

String idx1=request.getParameter("idx");
System.out.println("idx1:"+idx1);
int idx=Integer.parseInt(request.getParameter("idx"));
String passwd=request.getParameter("password");

String mysqlID="root";
String mysqlPW="1234";

String jdbc_driver="com.mysql.cj.jdbc.Driver";
String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
try{
	Class.forName(jdbc_driver);
	conn=DriverManager.getConnection(jdbc_url,mysqlID,mysqlPW);
	//Connection클래스의 인스턴스로부터 sql문 작성을 위한 statement준비
	Statement stmt=conn.createStatement();
	sql="SELECT PASSWORD FROM board WHERE NUM="+idx;
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		password=rs.getString("password");
		if(passwd.equals(password)){
			sql="DELETE FROM board WHERE NUM="+idx;
			stmt.executeUpdate(sql);
			%>
			<script language=javascript>
			self.window.alert("해당 글을 삭제하였습니다.");
			location.href="javascript:history.back()";
			location.href="list.jsp";
			</script>
			<%
			rs.close();
			stmt.close();
			conn.close();
		}else{
			%>
			<script language=javascript>
			self.window.alert("비밀번호를 틀렸습니다.");
			location.href="javascript:history.back()";
			</script>
			<%
		}
	}else{
		%>
		<script language=javascript>
		self.window.alert("없는 게시물입니다.");
		loaction.href="javascript:history.back()";
		</script>
		<%
	}
}catch(SQLException e){
	out.println(e.toString());
}
%>
</body>
</html>