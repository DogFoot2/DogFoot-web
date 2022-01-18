<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	// 클릭 누를 때마다 숫자 바뀌게 하기
	$(document).ready(function() {
		$('button').click(function() {
// 			console.log($('#spanObj')[0])

			//제이쿼리식
			let spanTag = $('#spanObj')[0]
			spanTag.innerHTML = parseInt(spanTag.innerHTML) + 1

/*			let spanTag = document.getElementById("spanObj")
			spanTag.innerHTML = parseInt(spanTag.innerHTML) + 1
*/			//parseInt를 통해서 정수로 바꿔준 후 + 1 다시 innerHTML에 넣어줌
		})
	})
</script>
</head>
<body>
	<span id="spanObj">0</span>번 클릭<button>클릭</button>
</body>
</html>