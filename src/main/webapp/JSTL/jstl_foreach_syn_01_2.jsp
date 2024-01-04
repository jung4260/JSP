<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="prefix" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% int [] arr = new int [] {1,2,3,4,5};
		for(int i : arr){
			out.println(i);
		}
	%>
	
	<br> <hr> <br>
	
	
	<h3>향상된 for문 item(배열 or 리스트) 정말 많이 쓰임</h3>
	<prefix:set var="arr" value="<%= new int[] {1,2,3,4,5} %>"/>
	
	<prefix:forEach var="i" items="${arr }" varStatus="a">
		i의 값: ${i } <br>
		인덱스: ${a. index } <br>
		카운트: ${a. count } 
		<br> <hr>
	</prefix:forEach>


	<hr>
	
	<%
		ArrayList <String> list = new ArrayList <> ();
		list.add("홍길동");
		list.add("이순신");
		list.add("박찬호");
		list.add("고우석");
		
		request.setAttribute("list", list);
		
	%>
	
	<prefix:forEach var="i" items = "${list }" varStatus="a">
		${a. count} ${i } <br>
	</prefix:forEach>





</body>
</html>