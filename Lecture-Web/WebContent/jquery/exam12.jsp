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
		display: none;
		position: absolute;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('div').animate({
			width: 'toggle',
			height: 'toggle',
			left: '100px',
			top: '50px',
			opacity: '0.4' //투명도
		}, 2000)
	})
		
// 		애니메이션 효과를 줄 수 있는 함수
// 	$('div').animate({
// 		width: '200px',
// 		height: '+=200px' //heigth가 가지고 있는 숫자에 200 더하라는 뜻
// 	}, 2000)	2초동안으로 duration
// 	})
</script>
</head>
<body>
	<div></div>
</body>
</html>