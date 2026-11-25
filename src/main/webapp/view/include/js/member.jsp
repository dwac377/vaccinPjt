<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">

    const signupForm = () => {
        console.log("회원가입 메서드 호출 성공")

        let form = document.signup_form
        if (form.admin_id.value === '') {
            alert('아이디를 입력하시오');
            form.admin_id.focus();
        } else if (form.admin_pw.value === '') {
            alert('비밀번호를 입력해주십시오');
            form.admin_pw.focus();
        } else if (form.admin_pw.value !== form.admin_pw_again.value) {
            alert('비밀번호 확인이 다릅니다');
            form.admin_pw.value = '';
            form.admin_pw_again.value ='';
            form.admin_pw.focus();

        } else if (form.admin_pw_again.value === ''){
            alert('비밀번호 확인을 입력하시오');
            form.admin_pw_again.focus();
        } else if (form.admin_mail.value === ''){
            alert('이메일를 입력하시오');
            form.admin_mail.focus();
        } else if (form.admin_phone.value === ''){
            alert('전화번호를 입력하시오');
            form.admin_phone.focus();
        }
    }


</script>