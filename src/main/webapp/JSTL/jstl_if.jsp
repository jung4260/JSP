<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수 선언 -->
	<x:set var="a" value="홍길동" />
	${a }
	
	<!-- 출력 -->
	<x:out value="Hello World ${a }" />
	
	<!-- 제어문 if -->
	<x:if test="${param.name eq '이순신'}">
		<b>이순신입니다.</b>
	</x:if>
	<x:if test="${param.name eq '자바'}">
		<b>자바입니다.</b>
	</x:if>

	
	
	<x:if test="${param.name eq '홍길자' and param.age >= 20 }">
		<b>${param.name}는 성인입니다.</b>
	</x:if>





</body>
</html>