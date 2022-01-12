<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<style>
	hr, table {
		width: 80%
	}
</style>
<script>
function doSignUp() {
	
	 let f = document.inputForm
	 
	 if(f.id.value == '') {
		 alert('아이디를 입력하세요')
		 f.id.focus()
		 return false
	 }

	 if(f.password.value == '') {
		 alert('비밀번호를 입력하세요')
		 f.password.focus()
		 return false
	 }
	 
	 if(f.name.value == '') {
		 alert('이름을 입력하세요')
		 f.name.focus()
		 return false
	 }

	 if(f.email.value == '') {
		 alert('이메일을 입력하세요')
		 f.email.focus()
		 return false
	 }

	 if(f.tel.value == '') {
		 alert('전화번호를 입력하세요')
		 f.tel.focus()
		 return false
	 }

	 if(f.addr.value == '') {
		 alert('주소를 입력하세요')
		 f.addr.focus()
		 return false
	 }
	 

	 
	 return true
}
</script>
</head>
<body>
	<div align="center">
		<hr>
		<h2>회원가입</h2>
		<hr>
		<br>
		<form action="signUp.jsp" method="post" 
			  name="inputForm" onsubmit="return doSignUp()">
			<table border="1">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="tel"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr"></td>
				</tr>
				</table>
				<input type="submit" value="회원가입 완료">
				</form>
	</div>
</body>
</html>