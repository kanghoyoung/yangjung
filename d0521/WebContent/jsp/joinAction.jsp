<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String inputEmail = request.getParameter("email");
	String email = request.getParameter("emailselect");
	String phone = request.getParameter("phone");
	String inputPhone1 = request.getParameter("phone1");
	String inputPhone2 = request.getParameter("phone2");
	String home1 = request.getParameter("home1");	
	String home2 = request.getParameter("home2");	
	String home3 = request.getParameter("home3");	
		
	String address = request.getParameter("address");	
		
	String carNumber = request.getParameter("carNumber");	
		
	String carType = request.getParameter("carType");



	// 아이디
	out.println("아이디 : " + id + "<br>");
	
	// 이름
	out.println("이름 : " + name + "<br>");
	
	// 성별
	out.println("성별 : " + gender + "<br>");
	
	// 이메일
	if(email.equals("1")) {
		out.println("이메일 : " + inputEmail + "@naver.com" + "<br>");	
	}else if(email.equals("2")) {	
		out.println("이메일 : " + inputEmail + "@daum.net" + "<br>");	
	}else if(email.equals("3")) {	
		out.println("이메일 : " + inputEmail + "@gmail.com" + "<br>");	
	}
	
	// 핸드폰
	if(phone.equals("1")) {
		out.println("핸드폰 : 010-" + inputPhone1 + "-" + inputPhone2 + "<br>");	
	}else if(phone.equals("2")) {	
		out.println("핸드폰 : 011-" + inputPhone1 + "-" + inputPhone2 + "<br>");	
	}else if(phone.equals("3")) {	
		out.println("핸드폰 : 090-" + inputPhone1 + "-" + inputPhone2 + "<br>");	
	}
	
	// 전화번호
	out.println("전화번호 : " + home1 + "-" + home2 + "-" + home3 + "<br>");
	
	// 주소
	out.println("주소 : " + address + "<br>");
	
	// 차량번호
	out.println("차량번호 : " + carNumber + "<br>");
	
	// 차량종류
	out.println("차량종류 : " + carType + "<br>");
%>

</body>
</html>