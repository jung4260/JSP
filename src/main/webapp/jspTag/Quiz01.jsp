<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    	/*
    	1. 정수를 저장하는 HashSet을 생성합니다.
    	2. 1~45까지 랜덤하게 생성되는 로또번호를 set에 저장
    	3. 화면에 출력
    	4. header, footer include 해주세요
    	*/
    	
    	
    	
    	Set <Integer> set = new HashSet <> ();
    	
 
    %>
    
    <%@ include file="include_header.jsp" %>

	<section>
		오늘의 로또 번호!! <br>
		<% while(set.size() <= 5){
			set.add((int) (Math.random() * 45) + 1);
		   }
		   
		   for(int s : set){
		%>
		이번 번호는 <%= s%>번 입니다.
		<br>
		<% }%>			   
		
		
	</section>

	<%@ include file="include_footer.jsp" %>

