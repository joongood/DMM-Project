<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="">
	<table>
		<tr>
			<td>
			<h1 align="center">JOIN</h1>
			</td>
		</tr>		
		<tr>
			<td>아이디</td>
			<td><input id="id" minlength="4" required></td>
		</tr>
		<tr>
			<td>비밀번호 입력</td>
			<td><input id="pass" minlength="4" type="password" required></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input id="repass" type="password" required></td>
		</tr>		
		<tr>
			<td>이름</td>
			<td><input id="name" required></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input id="email" type="email" required></td>
		</tr>
		<tr>
			<td colspan="2">
			<button align="center">회원가입</button>
			</td>			
		</tr>
		<span id="pass_check"><br></span>
	</table>
	</form>
</body>
</html>
<script>
$(document).ready(function(){
    // 비밀번호 입력란 값이 변경될 때마다 실행
    $("#pass, #repass").keyup(function(event){    
        // 비밀번호 입력란과 비밀번호 확인 입력란의 값 가져오기
        var password = $("#pass").val();
        var confirmPassword = $("#repass").val();

        // 비밀번호와 비밀번호 확인이 일치하는지 확인
        if(password == confirmPassword) {
            // 일치할 경우 메시지를 파란색으로 표시
            $("#pass_check").html("<font color='blue'>비밀번호가 일치합니다.</font>");
        } else {
            // 불일치할 경우 메시지를 빨간색으로 표시
            $("#pass_check").html("<font color='red'>비밀번호가 일치하지 않습니다.</font>");           
        }
        
        if(password != confirmPassword) {
            // 폼 제출 방지
            event.preventDefault();
        }
    });
});
</script>