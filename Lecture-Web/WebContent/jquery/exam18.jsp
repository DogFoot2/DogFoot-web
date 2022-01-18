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
		$('#btn01').click(function() {
			
			//<h1>세번째문장</h1>
// 			let h1Tag = document.createElement('h1')
// 			let text = document.createTextNode('세번째 문장')
// 			h1Tag.appendChild(text)
// 			console.log(h1Tag, text)
// 			document.querySelector('div').appendChild(h1Tag)
			$('div').append('<h1>세번째 문장</h1>')
		})
		
			$('#btn02').click(function() {
				// append: 자식의 맨 마지막으로
// 				$('ol').append('<li>노랑</li>') //무조건 맨 왼쪽의 
				$('ol').prepend('<li>노랑</li>') //무조건 맨 왼쪽의 
			})
	})
	
	$(document).ready(function() {
		//너무 길면 document를 또 적어도 실행됨
		$('#btn03').click(function() {
// 			$('body').prepend('<h4>추가된 문장</h4>')
// 			$('body').prepend('<h3>또 추가된 문장</h3>')
// 			$('body').prepend('<h6>또 또 추가된 문장</h6>')
//				여러개 추가하게 만들 수 있음
			$('body').prepend('<h4>추가된 문장</h4><h3>또 추가된 문장</h3><h6>또 또 추가된 문장</h6> ')
		})
	})
</script>
</head>
<body>
	<div>
		<h1>첫번째 문장</h1>
		<h1>두번째 문장</h1>
	</div>
	<h2>색상표</h2>
	<ol> <!-- 순서 태그 -->
		<li>빨강</li>
		<li>파랑</li>
		<li>초록</li>
	</ol>
	<button id="btn01">문장추가</button>
	<button id="btn02">색상추가</button>
	<button id="btn03">본문추가</button>
</body>
</html>