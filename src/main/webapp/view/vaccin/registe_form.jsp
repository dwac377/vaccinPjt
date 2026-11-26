<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../include/title.jsp"></jsp:include>
<link rel="stylesheet" href="./res/css/vaccin/vaccin.css" type="text/css">
<jsp:include page="../include/js/vaccin.jsp"></jsp:include>

</head>
<body>
	
	<jsp:include page="../include/header.jsp"></jsp:include>
	
	<jsp:include page="../include/nav.jsp"></jsp:include>
	
		<section>
	
		<div class="section_wrap">
		
			<h1>예약 화면</h1>

			<form 
				action="<%= request.getContextPath()%>/injection_registe_confurm.vac" 
				method="post" 
				name="registe_form">

				<input class="basic_input" type="text" name="fvp_name" placeholder="예약자 성명을 입력하시오">
				<br>
				<select class="basic_select" name="ss_number" id="">
					<option value="">---선택---</option>
					<option value="720520-1018547">720520-1******</option>
					<option value="710210-2084561">710210-2******</option>
					<option value="941230-1075214">941230-1******</option>
					<option value="650215-2050128">650215-2******</option>
					<option value="800710-1025698">800710-1******</option>

				</select>
				<br>
				<input class="basic_input" type="email" name="fvp_mail" placeholder="이메일을 입력하시오">
				<br>
				<input class="basic_input" type="text" name="fvp_phone" placeholder="전화 번호를 입력하시오">
				<br>

				<select class="basic_select" name="fv_location_no" id="">
					<option value="">---선택---</option>
					<option value="1001">A 접종처</option>
					<option value="1002">B 접종처</option>
					<option value="1003">C 접종처</option>
					<option value="1004">D 접종처</option>
					<option value="1005">E 접종처</option>
				</select>
				<br>
				<select class="basic_select" name="fv_type" id="">
					<option value="">---선택---</option>
					<option value="A">A 타입</option>
					<option value="B">B 타입</option>
					<option value="C">C 타입</option>
					<option value="D">D 타입</option>
					<option value="E">E 타입</option>

				</select>
				<br>
				<input class="basic_button" type="button" value="예약하기" onclick="registeForm()">
				<input class="basic_button" type="reset" value="초기화">


			</form>
			
		</div>
	
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
	

	

	
</body>
</html>