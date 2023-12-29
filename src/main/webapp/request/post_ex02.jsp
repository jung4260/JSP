<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8"); //한글 같은 경우 getParameter로 받기 전에 UTF-8로 받아야된다.

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= id %>님의 비밀번호는 <%= pw %> 입니다.



</body>
</html>