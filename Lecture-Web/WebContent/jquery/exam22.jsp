<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body * {
		display: block;
		border: 1px solid red;
		padding: 10px;
		margin: 10px;
	}
	
	.blue {
		border-color: blue
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		//span들을 access하기 위한 방법
		//자식에서 부모로
// 		$('span').parent().css('border-color', 'blue')
// 		$('span').parents().addClass('blue')
// 		$('span').parents('div').addClass('blue')
// 		$('span').parentsUntil('div').addClass('blue') // div 전까지,div 포함 안 됨
		
		//부모에서 자식으로
// 		$('#ancester').children().addClass('blue')
			// ㄴ 바로 아래 자식에게 blue
// 		$('#ancester').children('#div02').addClass('blue')
// 		$('#ancester').children('ul').addClass('blue') 	안 먹힘
		$('#ancester').find('ul').addClass('blue') 이렇게 find를 쓰면 먹힘
		
	//exam23: 형제자매 access
	})
</script>
</head>
<body>
	<div id="ancester">div
		<div id="div01">div1
			<ul>ul
				<li>li
					<span>span</span>
				</li>
			</ul>
		</div>
	</div>
	<div id="div02">div2
		<p>p
			<span>span</span>
		</p>
	</div>
</body>
</html>