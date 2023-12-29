<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 

	// 처리하는 영역
	// 아이디가 aaa123이고, 비밀번호 1234라면 로그인 성공 가정
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String check = request.getParameter("check");
	
	
	 if(id.equals("aaa123") && pw.equals("1234")) { // 로그인 성공
		 
		 
		 
		// 로그인 성공 시에 아이디를 저장하는 쿠키
		Cookie c = new Cookie("user_id", id); // user_id는 사용할 쿠키의 명칭
		c.setMaxAge(1800); // 30분
		response.addCookie(c);
		
		if(check != null) { // 아이디 기억하기 쿠키 생성
			Cookie c2 = new Cookie("rememberMe", id);
			c2.setMaxAge(30); // 30초
			response.addCookie(c2);
		}
		
		
		
		response.sendRedirect("ex01_ok.jsp");
	} else {
		response.sendRedirect("ex01.jsp"); // 다시 로그인페이지로
	}

 	
 	
 	
 	
 	
 	
 %>

 
 
 