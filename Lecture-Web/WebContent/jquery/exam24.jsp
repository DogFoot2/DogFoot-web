<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		width: 150px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

	$(document).ready(function() {
		$('button').click(function() {
		//	$('img').eq(0).appendTo('body') //appendTo 잘라내기 / body 뒤에 붙이기
			// 같은 코드 = $('img').first()
		//	$('img').last().prependTo('body') // 맨ㅁ ㅏ지막에 있는 이미지 잘라서 body 앞쪽에 붙이기
		}) 	//버튼 클릭하면 사진 옮겨가는 거 활용 가능
		
		//왼쪽 버튼 누르면 왼쪽으로 사진 이동/ 오른쪽 버튼 누르면 오른쪽으로 이동
			//안 눌러도 1초마다 사진 이동하게 하기 exam25
	})
</script>
</head>
<body>	
	<img src="/Lecture-Web/html/images/dog.jpg">
	<img src="/Lecture-Web/html/images/dog1.jpg">
	<img src="/Lecture-Web/html/images/dog2.jpg">
	<img src="/Lecture-Web/html/images/dog3.jpg">
	<img src="/Lecture-Web/html/images/dog4.jpg">
	<br>
	<button>클릭</button>
</body>
</html>