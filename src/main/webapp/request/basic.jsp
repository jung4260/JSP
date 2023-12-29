<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//request는 자동으로 생성되는 내장객체, 그래서 request 변수에 comma(.) 찍어서 사용합니다.
	
	StringBuffer url = request.getRequestURL(); //전체주소
	String uri = request.getRequestURI();

	String path = request.getContextPath(); //was가 프로젝트를 구분하는 최상위 경로
	
	String addr = request.getRemoteAddr(); //요청한 사람의 아이피 주소
	
	String q = request.getQueryString(); //url주소에 담긴 데이터를 전체 문자열로 얻을 수 있음. 
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>  리퀘스트 객체 확인하기  </h3>
	
	URL: <%= url%><br>
	URI: <%= uri%><br>
	path: <%= path%><br>
	접속한 IP 주소: <%= addr%><br>
	쿼리스트링: <%= q%><br>
	
</body>
</html>