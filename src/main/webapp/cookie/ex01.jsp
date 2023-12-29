<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	Cookie[] arr2 = request.getCookies();
	String rememberMe = "";
	
	if(arr2 != null) {
		for(Cookie c2 : arr2) {
			if(c2.getName().equals("rememberMe")) {
				rememberMe = c2.getValue();
			}
		}
	}


%>
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키를 통한 로그인</h3>
	
	<!-- 
		1. 아이디기억하기를 체크하고, 로그인에 성공하면, 아이디기억하기 쿠키(아이디)를 하나 생성
		2. 이 쿠키는 사용하는 곳이 바로 여기임!
		3. 아이디 기억하기 쿠키를 찾아서 있다면, input의 값을 아이디로 채워넣어주면 됨
	 -->
	
	
	<form action="ex01_result.jsp" method="post">
		아이디: <input type="text" name="id" value="<%=rememberMe%>"> <br>
		비밀번호: <input type="password" name="pw"> <br>
		아이디 기억하기: <input type="checkbox" name="check"><br>
		<input type="submit" value="로그인">
	
	</form>
	
	

</body>
</html>
  