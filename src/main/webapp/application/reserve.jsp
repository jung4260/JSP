<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//인증이 안된 사람이라면, 다시 인증페이지로
	if(session.getAttribute("ok") == null){
		response.sendRedirect("auth.jsp");
	}

	//예약된 좌석 불러오기
	ArrayList<String> list = new ArrayList<>();
	if(application.getAttribute("list") != null){
		list = (ArrayList<String>)application.getAttribute("list");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--  
	checkbox, radio버튼 선택을 못하도록 하는 옵션 disabled
	checkbox, radio버튼 미리 선택하는 하는 옵션 checked
	select박스의 미리 값을 선택하는 옵션 selected
	input 태그를 읽기 전용 readonly
	input 태그의 값을 반드시 지정하는 속성 required
	
	-->
	


	<div style="text-align: center;">
		<h3>영화 좌석 예약</h3>
		<h4>예약할 좌석을 체크한후 예약버튼을 누르세요</h4>
		<hr>
		
		<b>좌석배치도</b> <br>
		<form action = "reserve_ok.jsp" method="post">
			&nbsp;&nbsp;&nbsp;
			<% for(char c= 'A'; c <= 'Z'; c++ ){ %>
				<small><%= c%></small>
				&nbsp;
			<% } %>
			<br>
			
			<% for(int i=1; i<=6; i++){ %>
				<%= i%>
			
				<%for (char c = 'A'; c <= 'Z'; c++){ %>
				<input type="checkbox" name="seat" value ="<%=i %>-<%= c%>" <%= list.contains(i + "-" + c) ? "disabled" : "" %>>
				<% } %>
				<br>
				
				<% if(i==3) {%>
					<br>
				<% } %>
				
			<% } %>
			<br>
			<input type="submit" value="예약하기">
			<input type="reset" value="다시 선택하기">
			
		
		</form>
		
	
	</div>



</body>
</html>