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
		$('div').css({
			'width' : '100px',
			'height' : '100px',
			'background-color' : 'skyblue'
		})
		
		$('div').hide(1000)
		$('div').show(1000)
		
		$('div').toggle(1000)
		$('div').toggle(1000)
		
		$('div').fadeOut(2000)
		$('div').fadeIn(2000)
		
		$('div').fadeToggle(2000)
		$('div').fadeToggle(2000)
		
		$('div').fadaTo(1000, 0.6)
	})
</script>
</head>
<body>
<!-- 	<div style="width: 100px; height: 100px; background-color: red;"></div> -->
	<div></div>
</body>
</html>