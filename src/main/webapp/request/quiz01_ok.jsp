<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	Date date = new Date ();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String birth = request.getParameter("birth");
	//birth = request.getParameter("date");
	String age = request.getParameter("age");
	
	String [] hobby = request.getParameterValues("a1");
	String [] major = request.getParameterValues("b1");
	
	String region = request.getParameter("region");
	
	String intro = request.getParameter("intro");
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	ID: <%= id%> <br>
	PW: <%= pw%> <br>
	생년월일: <%= birth%> <br>
	나이: <%= age%> <br>
	취미:	<%for(String s : hobby) {%>
		<%= s%>
		<% } %>
		<br>
	전공: <%for(String s : major) {%>
		<%= s%>
		<% } %>
		<br>
	지역: <%= region%> <br>
	소개: <%= intro %>
	
</body>
</html>