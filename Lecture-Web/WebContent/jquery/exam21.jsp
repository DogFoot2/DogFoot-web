<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.c1 {
		font-style: italic
	}
	
	.c2 {
		color: orange
	}
	
	.blue {
		color: blue
	}
	
	.red {
		color: red
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
// 중간중간 동적으로 클래스 집어넣기 => active
	$(document).ready(function() {
		
		$('button').click(function() {
			
			$('body h1').addClass('red') 
			// 추가 누르는 순간 red 클래스가 동적으로 붙음
			$('body *').addClass('blue')
			// red blue 다 갖고 있는 애들은 무조건 red
			// 스타일에서 red가 마지막이기 때문
			$('h1').removeClass('red')
			//지우고나면 다 blue만 남기 때문에 blue로 바뀜
		})
	})
</script>
</head>
<body>
	<!-- h1의 클래스명이 c1과 c2에도 있다는 뜻  -->
	<h1 class="c1 c2">나는 문장1입니다</h1>
	<h1>나는 문장2입니다</h1>
	<p>나는 단락입니다</p>
	<div>
		나는 구역입니다
	</div>
	<button>추가</button>
</body>
</html>