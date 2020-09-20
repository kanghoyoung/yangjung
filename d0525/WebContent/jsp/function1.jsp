<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 함수 -->
	<%!
		int p,q;
	int squre(int i, int j) {
		int value = 1;
		int k = 0;
		while(k<j) {
			value = value * i;
			k = k + 1; // k++;
		}
		return value;
	}
	%>
	
	<%!
		int num1, num2, s;
		int sum(int num1, int num2) {
			int hap = num1 + num2;
			return hap;
		}
	%>
	
<%
	out.println("사용자 함수 사용 예");
	p = squre(2,5);
%>
<br>
2<sup>5</sup> : <%=p %>
<br><hr>
<%
	out.println("합계구하기 예제");
	//s = sum(100,200);
%>
<br>
100+200=<%=sum(100,200) %><br><hr>
</body>
</html>