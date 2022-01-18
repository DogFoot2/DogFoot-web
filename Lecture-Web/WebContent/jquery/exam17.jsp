<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	//text변환 클릭하면 첫번째 문장 바뀌게 해주기
	$(document).ready(function() {
		
		$('#btn01').click(function() {
			$('#p01').text('<mark>문장이 변환되었습니다</mark>')
		})
		
		$('#btn02').click(function() {
			$('#p02').html('<mark>문장이 변환되었습니다</mark>')
		})
		
		//네이버를 다음으로 가게 만들기
		$('#btn03').click(function() {
			$('a').attr('href', 'http://www.daum.net')
		}) //웹브라우저에서 바뀐 것
		
		$('#btn04').click(function() {
// 			$('p').html('문장변환')
				//p 태그의 개수만큼 호출
			$('p').html(function(index, element) {
				return index + ' : <strong>문장변환</strong>'
			})
		})
	})
</script>
</head>
<body>
	<a href="http://www.naver.com" target="_blank">사이트이동</a>
	<p id="p01">첫번째 문장입니다</p>
	<p id="p02">두번째 문장입니다</p>
	<button id="btn01">TEXT변환</button>	
	<button id="btn02">HTML변환</button>	
	<button id="btn03">주소변환</button>	
	<button id="btn04">문장변환</button>	
	
	
</body>
</html>