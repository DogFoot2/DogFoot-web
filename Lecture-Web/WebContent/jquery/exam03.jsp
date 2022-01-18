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
//		$('ul li').hide()
// 		$('ul li:first').hide()
// 		$('ul li:last').hide()
		$('ul li:first-child').hide()
		$('ul li:last-child').hide()
		
	})
</script>
</head>
<body>
	<h1>동물종류</h1>
	<ul>
		<li>후추</li>
		<li>초코</li>
		<li>밍구</li>
	</ul>
	<h1>음식종류</h1>
	<ul>
		<li>김치찌개</li>
		<li>된장찌개</li>
		<li>부대찌개</li>
		<li>청국장찌개</li>
	</ul>
</body>
</html>