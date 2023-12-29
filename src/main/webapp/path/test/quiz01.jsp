<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그로 jspTag폴더의 quiz01로 상대경로, 절대경로 -->
	<!-- img태그로 HTML폴더안에 있는  -->
	<!-- a태그로 TestServlet로 상대경로, 절대경로 -->
	
	<h3>jspTag폴더</h3>
	<a href = "../../jspTag/Quiz01.jsp">상대경로</a> <br>
	<a href = "/JSPBasic02/jspTag/Quiz01.jsp">절대경로</a> <br>

	<h3>image폴더</h3>
	<img src = "../../HTML/image/canucks1.png">상대경로</a><br>
	<img alt = "사진" src= "/JSPBasic02/HTML/image/canucks1.png">절대경로</a><br>
	
	<h3>TestServlet폴더</h3>
	<a href = "../../apple">상대경로</a> <br>
	<a href = "/JSPBasic02/apple">절대경로</a> <br>
	
	
	
</body>
</html>