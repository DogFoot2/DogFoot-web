<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 h1 {
 	display: none
 }
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
// 		alert('!!!')
		
		/*
		3초에 걸려서 Hello World 문장이 화면에 보인 뒤, complete 메시지를 경고창에 띄우기
		*/
//		$('h1').show(3000);
//		alert('complete')complete가 먼저 나옴

// 		$('h1').show(3000, function() {
// 			alert('complete')
// 		})				이렇게 해 줘야 3초 보이고 complete이 뜸
		
		/*
		3초에 걸려서 "Hello World" 문장 출력 후, 글자색 파란색으로 변경 후
		슬라이드 효과로 올라갔다 내려갔다 수행 후 배경색 노란색으로 변경
		*/
		//css는 바로 수행하기 때문에 차례대로 써 주기
		$('h1').show(3000, function() {
			$(this).css('color', 'blue') 
			$(this).slideUp(1000).slideDown(1000, function() {
				$(this).css('background-color', 'yellow')
			})
		})
	})
</script>
</head>
<body>
	<h1>Hello World</h1>
</body>
</html>