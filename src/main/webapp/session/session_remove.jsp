<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 삭제하기
	session.removeAttribute("user_name"); //삭제

	//세션 통쨰로 완전 제거
	session.invalidate();
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session_get.jsp">세션확인하기</a>


</body>
</html>