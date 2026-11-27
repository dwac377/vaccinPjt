<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		
			<h1>예약 수정 화면</h1>

			<form 
				action="<%= request.getContextPath()%>/modify_confirm.vac" 
				method="post" 
				name="modify_form">

				<input type="hidden" name="fvp_no" value="${selectedVaccinDto.fvp_no}">

				<input class="basic_input" type="text" name="fvp_name" value="${selectedVaccinDto.fvp_name}" placeholder="예약자 성명을 입력하시오">
				<br>
				<select class="basic_select" name="ss_number" id="">
					<option value="">---선택---</option>
					<option value="720520-1018547"
						<c:if test="${selectedVaccinDto.ss_number eq '720520-1018547'}">selected</c:if>
					>720520-1******</option>

					<option value="710210-2084561"
						<c:if test="${selectedVaccinDto.ss_number eq '710210-2084561'}">selected</c:if>
					>710210-2******</option>

					<option value="941230-1075214"
						<c:if test="${selectedVaccinDto.ss_number eq '941230-1075214'}">selected</c:if>
					>941230-1******</option>

					<option value="650215-2050128"
						<c:if test="${selectedVaccinDto.ss_number eq '650215-2050128'}">selected</c:if>
					>650215-2******</option>

					<option value="800710-1025698"
						<c:if test="${selectedVaccinDto.ss_number eq '800710-1025698'}">selected</c:if>
					>800710-1******</option>

				</select>
				<br>
				<input class="basic_input" type="email" name="fvp_mail" value="${selectedVaccinDto.fvp_mail}" placeholder="이메일을 입력하시오">
				<br>
				<input class="basic_input" type="text" name="fvp_phone" value="${selectedVaccinDto.fvp_phone}" placeholder="전화 번호를 입력하시오">
				<br>

				<select class="basic_select" name="fv_location_no" id="">
					<option value="">---선택---</option>
					<option value="1001"
						<c:if test="${selectedVaccinDto.fv_location_no eq '1001'}">selected</c:if>
					>A 접종처</option>
					<option value="1002"
						<c:if test="${selectedVaccinDto.fv_location_no eq '1002'}">selected</c:if>
					>B 접종처</option>
					<option value="1003"
						<c:if test="${selectedVaccinDto.fv_location_no eq '1003'}">selected</c:if>
					>C 접종처</option>
					<option value="1004"
						<c:if test="${selectedVaccinDto.fv_location_no eq '1004'}">selected</c:if>
					>D 접종처</option>
					<option value="1005"
						<c:if test="${selectedVaccinDto.fv_location_no eq '1005'}">selected</c:if>
					>E 접종처</option>
				</select>
				<br>
				<select class="basic_select" name="fv_type" id="">
					<option value="">---선택---</option>
					<option value="A"
						<c:if test="${selectedVaccinDto.fv_type eq 'A'}">selected</c:if>
					>A 타입</option>
					<option value="B"
						<c:if test="${selectedVaccinDto.fv_type eq 'B'}">selected</c:if>
					>B 타입</option>
					<option value="C"
						<c:if test="${selectedVaccinDto.fv_type eq 'C'}">selected</c:if>
					>C 타입</option>
					<option value="D"
						<c:if test="${selectedVaccinDto.fv_type eq 'D'}">selected</c:if>
					>D 타입</option>
					<option value="E"
						<c:if test="${selectedVaccinDto.fv_type eq 'E'}">selected</c:if>
					>E 타입</option>

				</select>
				<br>
				<input class="basic_button" type="button" value="예약 수정" onclick="modifyForm()">
				<input class="basic_button" type="reset" value="초기화">


			</form>
			
		</div>
	
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
	

	

	
</body>
</html>