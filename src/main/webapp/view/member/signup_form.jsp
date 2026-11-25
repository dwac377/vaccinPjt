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
				action="<%= request.getContextPath()%>/signup_confirm.mem" 
				method="post" 
				name="signup_form">

				<input class="basic_input" type="text" name="admin_id" placeholder="새 관리자 아이디">
				<br>
				<input class="basic_input" type="password" name="admin_pw" placeholder="새 관리자 비밀번호">
				<br>
				<input class="basic_input" type="password" name="admin_pw_again" placeholder="새 관리자 비밀번호 확인">
				<br>
				<input class="basic_input" type="email" name="admin_mail" placeholder="새 관리자 이메일">
				<br>
				<input class="basic_input" type="text" name="admin_phone" placeholder="새 관리자 전화번호">
				<br>
				
				<input class="basic_button" type="button" value="회원 가입" onclick="signupForm()">
				<input class="basic_button" type="reset" value="초기화">
				

			</form>
			
		</div>
	
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
	

	

	
</body>
</html>