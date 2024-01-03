<%@page import="com.example.bean.Quiz_Grade"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 


	Quiz_Grade grade = (Quiz_Grade) request.getAttribute("grade");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<%= grade.getId()%><br><hr>
		<%= grade.getName()%>님의 성적표 <br>
		주소: <%= grade.getAddress()%> <br>
		국어성적: <%= grade.getKor()%><br>
		수학성적: <%= grade.getMath()%><br>
		평균점수: <%= (Integer.parseInt(grade.getKor()) + Integer.parseInt(grade.getMath())) / 2 %>
		
		
		
</body>
</html>