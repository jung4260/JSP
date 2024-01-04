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
	
	<%	
		int sum = 0;
		for (int i=1; i<=10; i++){
			sum = sum + i;
		}
	
	%>
	결과: <%= sum %> <br>
	
	<hr>
	<prefix:set var ="total" value = "0" />
	<prefix:forEach var="i" begin="1" end="10" step="1">
		<prefix:set var= "total" value="${total + i}"/>
	</prefix:forEach>
	결과: ${total }


	<hr/>
	<h3>구구단 2단~9단까지 JSTL로 출력하기</h3>
	<prefix:forEach var="i" begin="2" end="9" step="1">
		구구단${i }단 <br> <hr>
		<prefix:forEach var="j" begin="2" end="9" step="1">
			${i } X ${j }= ${i * j}<br>
		</prefix:forEach>
		<br>
	</prefix:forEach>
	
	

</body>
</html>