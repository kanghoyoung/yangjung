<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>1부터 100까지의 합</h1><br><hr>
<%
/*
	int sum = 0; // 합계

	for(int i=1; i<=100; i++) {
		sum = sum + i;
	}
*/

	int num = Integer.parseInt(request.getParameter("num2"));
	/*
	for(int i=0; i<num; i++) {
		for(int j=0; j<=i; j++) {
			out.print("*");
		}
		out.println("<br>");
	}
	*/
	
	/* while
	int i = 0;
	while(i<num) {
		int j = 0;
		while(j<=i) {
			out.print("*");
			j++;
		}
		out.println("<br>");
		i++;
	}
	*/
	
	// do while
	int i = 0;
	do {
		
		int j = 0;
		
		do {
			
			out.print("*");
			j++;
			
		} while (j<=i);
		out.println("<br>");
		i++;
	}  while (i<num);
		
	%>
	
	<hr>
	
	<%
	/*
	for(int i=0; i<num; i++) {
		for(int j=num; j>i; j--) {
			out.print("*");
		}
		out.println("<br>");
	}
	*/
%>
<hr>
 
<!--  1부터 100까지의 합 : <h1></h1> -->
 
</body>
</html>