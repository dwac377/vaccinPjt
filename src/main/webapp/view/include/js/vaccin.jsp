<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">

   const registeForm = () => {

        let form = document.registe_form

        if (form.fvp_name.value === '') {
            alert('성명 입력');
            form.fvp_name.focus();

        } else if (form.ss_number.value === '') {
            alert('주민번호 입력');
            form.ss_number.focus();

        } else if (form.fvp_mail.value === '') {
            alert('이메일 입력');
            form.fvp_mail.focus();

        } else if (form.fvp_phone.value === '') {
            alert('전화 번호 입력');
            form.fvp_phone.focus();

        } else if (form.fv_location_no.value === '') {
            alert('접종처 입력');
            form.fv_location_no.focus();

        } else if (form.fv_type.value === '') {
            alert('백신 타입 입력');
            form.fv_type.focus();
        } else {
            form.submit();
        }
   }

   const modifyForm = () => {

        let form = document.modify_form

        if (form.fvp_name.value === '') {
            alert('성명 입력');
            form.fvp_name.focus();

        } else if (form.ss_number.value === '') {
            alert('주민번호 입력');
            form.ss_number.focus();

        } else if (form.fvp_mail.value === '') {
            alert('이메일 입력');
            form.fvp_mail.focus();

        } else if (form.fvp_phone.value === '') {
            alert('전화 번호 입력');
            form.fvp_phone.focus();

        } else if (form.fv_location_no.value === '') {
            alert('접종처 입력');
            form.fv_location_no.focus();

        } else if (form.fv_type.value === '') {
            alert('백신 타입 입력');
            form.fv_type.focus();
        } else {
            form.submit();
        }

   }
 

</script>