<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//이전 화면에서 넘어온 값을 얻을때는 getParameter ("이름")
	//input의 name="xxx"인 값을 얻음

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String [] inter = request.getParameterValues("inter");
	String inter1 = request.getParameter("inter");
	
%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>여기는 ex02페이지</h3>
	ID: <%= id%> <br>
	Password: <%= pw%> <br>
	<% for(String a : inter)  {%>
    <%= a %>
	<% } %>
	<br>
	<%= inter1%>
	
</body>
</html>