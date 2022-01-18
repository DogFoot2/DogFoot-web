<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		width: 100px;
		height: 100px;
		float: left;

	}
	
	button {
		height: 100px;
		float: left;
		border-color: lightgray;
		background-color: lightgray;
		padding: 10px;
	}
	
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#next').click(function() {
			$('img').last().prependTo('#gallery')
		})
		
		$('#prev').click(function() {
			$('img').first().appendTo('#gallery')
		})
		
		setInterval(function() {
			$('#next').trigger('click')
		}, 2000)
	})
</script>
</head>
<body>
	<button id="prev">prev</button>
	<span id="gallery">
 	<img src="/Lecture-Web/html/images/dog.jpg">
	<img src="/Lecture-Web/html/images/dog1.jpg">
 	<img src="/Lecture-Web/html/images/dog2.jpg">
	<img src="/Lecture-Web/html/images/dog3.jpg">
	<img src="/Lecture-Web/html/images/dog4.jpg">
	</span>
	<button id="next">next</button>
</body>
</html>