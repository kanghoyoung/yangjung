<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 소개</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
<b>
반갑습니다.<br>
카센터 붕붕이나라입니다.<br>
</b>
<hr>
<img src="../images/logo.jpg" width="300px" height="150px" align="left">
안녕하십니까?<br>
카센터 붕붕이나라는 부산시 부산진구 양정동에<br>
위치하고 있습니다.<br>
저희 붕붕이나라는 고객의 다양한 요구에 부합되는<br>
최고의 서비스와 경쟁력 있는 가격으로 고객 만족을<br>
실현하기 위해 모든 임직원이 다함께 노력할 것을<br>
약속 드립니다.<br>
항상 한발 앞서가는 고객만족의 경영을 실천하며,<br>
고객과의 약속을 가장 중요시 하겠습니다.<br>
고객 여러분의 끊임없는 격려와 관심으로 성원해 주시길 부탁드립니다.<br>
<br>
<div class="font">
<%
for(int i=0; i<30; i++) {
%>
&nbsp;
<%
}
%>
감사합니다.
</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>