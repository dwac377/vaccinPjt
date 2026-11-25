<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../include/title.jsp"></jsp:include>
<link rel="stylesheet" href="./res/css/member/member.css" type="text/css">
<jsp:include page="../include/js/member.jsp"></jsp:include>

</head>
<body>
	
	<jsp:include page="../include/header.jsp"></jsp:include>
	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	
		<section>
	
		<div class="section_wrap">
		
			<h1>로그인 화면</h1>

			<form 
				action="<%= request.getContextPath()%>/signin_confirm.mem" 
				method="post" 
				name="signin_form">

				<input class="basic_input" type="text" name="admin_id" placeholder="관리자 아이디">
				<br>
				<input class="basic_input" type="password" name="admin_pw" placeholder="관리자 비밀번호">
				<br>
				<input class="basic_button" type="button" value="로그인" onclick="signinForm()">
				<input class="basic_button" type="reset" value="초기화">
				

			</form>
			
		</div>
	
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
	

	

	
</body>
</html>