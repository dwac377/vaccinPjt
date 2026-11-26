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
		
			<h1>예약 화면</h1>
			
			<c:choose>
			
				<c:when test="${resultForRegist > 0}">
					<br>
					<h3>예약 성공</h3>
	
				</c:when>
			
				<c:otherwise>
					<br>
					<h3>예약 실패</h3>
				
				</c:otherwise>
			
			</c:choose>
			

		
		
			
		</div>
	
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
	

	

	
</body>
</html>