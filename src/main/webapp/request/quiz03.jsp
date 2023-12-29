<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>Quiz 03번</h3>
	<p>아래처럼 a링크를 생성하고, a 태그 클릭시 req_quiz03_ok에 학생번호를 출력하세요</p>
	
	<%for (int i=1; i<=30; i++) { %>
	
	<a href ="quiz03_ok.jsp?num=<%= i%>"> <%= i%>번 학생 </a>
	<br>
	<% }%>
	


</body>
</html>