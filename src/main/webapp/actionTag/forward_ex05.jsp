<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//setAttribute로 담은 값을 받는 방법
	//object 반환 타입 -> casting
	String dat = (String)request.getAttribute("data");


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= dat%>

</body>
</html>