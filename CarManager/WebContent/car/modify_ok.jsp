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
String sql="";
String password="";

int idx=Integer.parseInt(request.getParameter("idx"));

String title=request.getParameter("title");
String memo=request.getParameter("memo");
String passwd=request.getParameter("password");

String jdbc_driver="com.mysql.cj.jdbc.Driver";
String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
try{
	Class.forName(jdbc_driver);
	conn=DriverManager.getConnection(jdbc_url,"root","1234");
	Statement stmt=conn.createStatement();
	sql="select password from board where num="+idx;
	rs=stmt.executeQuery(sql);
	if(rs.next()){
		password=rs.getString(1);
	}
	if(password.equals(passwd)){
		sql="update board set title='"+title+"',memo='"+memo+"' where num="+idx;
		stmt.executeUpdate(sql);
		%>
		<script language=javascript>
		self.window.alert("글이 수정되었습니다.");
		location.href="view.jsp?idx=<%=idx%>";
		</script>
		<%
		rs.close();
		stmt.close();
		conn.close();
	}else{
		%>
		<script language=javascript>
		self.window.alert("비밀번호가 틀렸습니다.");
		location.href="javascript:history.back()";
		</script>
		<%
	}
}catch(SQLException e){
	out.println(e.toString());
}
%>

</body>
</html>