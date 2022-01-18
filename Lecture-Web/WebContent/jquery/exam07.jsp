<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		alert('!!!')
		
		$('input').keydown(function() {
			$(this).css('color', 'orange')
		})
		
		$('input').keyup(function() {
			$(this).css('color', 'black')
		})
		
		$('input').focus(function() {
// 			$(this).css('border', '2px solid skyblue')
// 			$(this).css('background-color', 'pink')
			$(this).css({
				'border' : '2px solid skyblue',
				'background-color' : 'pink'
			})
		})
		
		$('input').blur(function() {
			$(this).css('border', '1px solid black')
			$(this).css('background-color' , 'white')
		})
	})
</script>
</head>
<body>
	이름 : <input type="text" size="30"><br>
	전화번호 : <input type="text" size="30">
</body>
</html>