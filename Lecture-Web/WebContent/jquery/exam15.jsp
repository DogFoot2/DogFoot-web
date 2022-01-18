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
		$('h1').click(function(event, ) {
			$(this)[0].innerText += ' * '		
		})
		
	setInterval(function () {
// 			$('h1').click()
			$('h1').trigger('click')
		}, 1000)
	})
</script>
</head>
<body>
	<h1>수행률 : </h1>
</body>
</html>