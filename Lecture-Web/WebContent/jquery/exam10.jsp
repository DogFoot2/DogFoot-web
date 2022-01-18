<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menu {
		height: 50px;
		background-color: gray;
	}
	
	#submenu {
		height: 100px;
		background-color: skyblue;
		padding: 20px;
		display: none;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#menu').hover(function() {
			$('#submenu').slideDown('slow')
			$('#submenu').slideToggle('slow')
		}, function() {
			$('#submenu').slideUp('slow')
			$('#submenu').slideToggle('slow')
		})
	})
</script>
</head>
<body>
	<div id="menu">마우스를 접근시켜 보세요</div>
	<div id="submenu">메뉴화면입니다</div>
</body>
</html>