<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double x = Double.parseDouble(height);
	double y = Double.parseDouble(weight);
	double bmi1 = (y / (x/100 * x/100));
	
	String BMI = String.format("%.2f", bmi1);

%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(bmi1 >= 25){%> 
당신의 BMI <%= BMI%> 수치는 과체중입니다.
<% }else if(bmi1 <= 18){%> 
당신의 BMI <%= BMI%> 수치는 저체중입니다.
<% }else{%>
당신의 BMI <%= BMI%>수치는 정상입니다.
<%} %>

</body>
</html>