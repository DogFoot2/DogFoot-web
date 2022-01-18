<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		width: 100px;
		height: 100px;
		background-color: red;
		position: absolute;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script> // 정사각형을 2초에 걸쳐서 직사각형 형태로 변환
	$(document).ready(function() {
		
		$('div').animate({
			'width': '+=100px'
		}, 2000)
			//2초에 걸쳐서 다시 원래상태, 늘어진 쪽에 위치 
		$('div').animate({
			'width': '100px',
			'left': '100px'
		}, 2000)
		
			//그다음 아래쪽으로 늘어나기
		$('div').animate({
			'top': '100px',
			'height': '200px'
		}, 1000)
		
			//다음 1로 이동
		$('div').animate({
			'left': '0px',
			'top': '+=100px',
			'height': '100px',
		//	'background-color': 'purple' 이걸 먹히게 하려면 제이쿼리ui필요
		// 제이쿼리 ui 문법
			'backgroundColor': 'purple'
		}, 2000, function () {
			$(this).css('background-color', 'blue')
		})
	})
</script>
</head>
<body>
	<div></div>
</body>
</html>