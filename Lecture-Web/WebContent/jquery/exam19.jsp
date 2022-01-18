<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#btn01').click(function() {
// 			$('img').before('<strong>before</strong>')
			$('img').after('<em>after</em>', '<b>맨뒤</b>')
		})
	})
</script>
</head>
<body>
	<hr>
	<img src="/Lecture-Web/html/images/dog.jpg">
	<hr>
	<button id="btn01">추가</button>
</body>
</html>