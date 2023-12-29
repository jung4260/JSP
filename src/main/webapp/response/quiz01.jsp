<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style>
		/*
			css문법이 들어갈 수 있습니다.
			클래스는 .선택자로 지칭합니다.
			id는 # 선택자로 지칭합니다.
		
		 .wrap-content{
			display: flex;
			justify-content: center;
			align-content: center;
			height: 100vh;
		}
		<body class="wrap-content">
		로 지정해도 되고 아니면 body는 어짜피 하나니까 그냥 밑에 처럼 지정해도 된다.
		*/
		html, body {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100%;
			width: 100%;
			flex-direction: column;
		}
		
		#form_content {
			height: 200px;
			box-shadown: 0px 8px 16px rgba(0,0,0,0);
			padding: 30px;
		}
		
		
		
	</style>
	
</head>

<body>

	<%--
	1. form태그를 이용해서 post형식으로 이름, 국어, 영어, 수학점수을 받습니다.
	2. quiz01_result.jsp로 데이터를 넘겨서 평균을 구합니다.
	3. 60점 이상 이하여부에 따라서 합격, 불합격페이지로 리다이렉트
	--%> 

	<!--  
		디자인
		태그에는 id(화면에서 고유)라는 속성과 class(화면에 여러개 있어도 됩니다.)라는 속성이 있습니다.
		
		디자인을 하는 방법은 3가지가 있습니다.
		1.css파일을 만들고 import를 해서 사용하는 방법 (외부 스타일 sheet)
		2.head태그에 선택자를 이용해서 디자인을 하는 방법 (내부 스타일 sheet)
		3.태그자체에 직접디자인을 하는 방법(인라인 sheet)
	
	-->


	
	<form action="quiz01_redirect.jsp"  method="post" class="form-control" id="form_content" >
		<h3 style="text-align: center;">점수 입력</h3> 
	
		이름: <input type="text" name="name" class="form-control"> <br>
		수학: <input type="text" name="math" class="form-control"> <br>
		국어: <input type="text" name="kor" class="form-control"> <br>
		영어: <input type="text" name="eng" class="form-control"> <br>
		
		<input style="display: block; width:100%; color:red;" type="submit" name="제출"> 	
			
	</form>
	
	

</body>
</html>