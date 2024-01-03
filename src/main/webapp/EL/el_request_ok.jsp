<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- param. & requestScope.는 생략이 가능하다 -->
	${name }<br>
	${requestScope.member } <br>
	${requestScope.member.id } <br>
	${requestScope.member.name } <br>
	${member.email } <br>
	
	
	<!-- 세션도 requestScope. 생략이 가능하다 가능하면 sessionScope로 구분지어 놓으면 좋다.-->
	${sessionScope.now } <br>
	
	
	

</body>
</html>