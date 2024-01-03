<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	
	System.out.println("넘어온 값 소비:" + name);

	//내장객체 request에 강제로 값을 저장한다.
	request.setAttribute("data", name + "& 이순신님은 20살");
	
	
	
	
	//자바코르도 포워드를 사용하는 방법
	//RequestDispatcher dp = request.getRequestDispatcher("forward_ex05.jsp");
	//dp.forward(request, response);
	
	request.getRequestDispatcher("forward_ex05.jsp").forward(request, response);
	
	
%>