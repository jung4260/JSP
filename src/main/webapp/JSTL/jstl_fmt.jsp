<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%// taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" <-core 대신에 fmt %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>fmt 모듈</h2>
	formateDate, parseDate, formatNumber, parseNumber
	<br><br>
	parse는 형 변환입니다.
	<br><br>
	format은 출력형식 변환입니다.
	
	<br><br><hr><br><br>
	
	<h2>formatDate - 날짜를 문자로</h2>
	<c:set var="a" value="<%= new Date() %>"/>	
	<fmt:formatDate var="result" value="${a }" pattern="yyyy년MM월dd일"/>
	<fmt:formatDate var="result2" value="${a }" pattern="yyyy-MM-dd HH:mm:ss"/>
	${result } <br>
	${result2 } <br>

	<h2>parseDate - 문자를 날짜로</h2>
	<fmt:parseDate var= "result3" value="2023-01-04" pattern="yyyy-MM-dd" />
	${result3}
	<br>
	
	<h2>formatNumber - 숫자를 문자로</h2>
	<fmt:formatNumber value="20000.21" pattern="00,000.00번"/>
	<br>
	<fmt:formatNumber value="1" pattern="00000번"/>
	<br>
	
	<h2>parseNumber - 문자를 숫자로 바꿔주는 방법</h2>
	<fmt:parseNumber value="10000번" pattern="00000번" /> <br>
	<fmt:parseNumber var="x" value="3,300원" pattern="0,000원" />
	${ x}<br>
	${x + 1000} <br>
	
	<hr>
	
	<h2>아래값들을 2020년05월03일 형식으로 변경해서 출력</h2>	
	<c:set var="TIME_A"  value="2020-05-03"/>
	<c:set var="TIME_B" value="2020-05-03 21:30:22"/>
	<c:set var="TIME_C" value= "<%= new Date () %>"/>
	
	<fmt:parseDate var="d1" value=" ${TIME_A}" pattern="yyyy-MM-dd" />
	<fmt:formatDate var="date1" value="${d1 }" pattern="yyyy년MM월dd일"/>
	${date1 }
	<br>
	
	<fmt:parseDate var="d2" value="${TIME_B}" pattern="yyyy-MM-dd HH:mm:ss" />
	<fmt:formatDate var="date2" value="${d2 }" pattern="yyyy년MM월dd일 HH시mm분ss초"/>
	${date2 }
	<br>
	
	<fmt:formatDate var="date3" value="${TIME_C}" pattern="yyyy년MM월dd일" />
	${date3 }
	
</body>
</html>