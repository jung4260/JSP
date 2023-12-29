<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String math = request.getParameter("math");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	
	int m_grade = Integer.parseInt(math);
	int k_grade = Integer.parseInt(kor);
	int e_grade = Integer.parseInt(eng);
	
	int avg = (m_grade + k_grade + e_grade) / 3;
	
	if(avg >=60){
		response.sendRedirect("quiz01_pass.jsp?name=id");
	} else {
		response.sendRedirect("quiz01_fail.jsp?name=id");		
	}
	

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html>
    
    
    