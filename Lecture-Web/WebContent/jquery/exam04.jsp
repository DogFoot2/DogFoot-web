<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script>
	$(document).ready(function() {
		alert('!!!')
		
// 		$('a[target]').hide()
// 		$('a[href="http://www.naver.com"]').hide()
		
// 		$('input[type=text]').hide()
// 		$('input:text').hide()
// 		$('input:button').hide()
// 		$('button').hide()
// 		$(':text').hide()
// 		$(':button').hide()
		
		$(':button').click(function() {
			$('hr').hide()
			$(this).hide("drop", {direction: 'down'})
		})
	})
</script>
</head>
<body>
	<h2>a Tag 전</h2>
	<a href="http://www.naver.com">네이버</a>
	<a href="http://www.daum.net" target="_blank">다음</a>
	<h2>a Tag 후</h2>
	<hr>
		<input type="text">
		<input type="button" value="버튼1">
		<button>버튼2</button>
	<hr>
</body>
</html>