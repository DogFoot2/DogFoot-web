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
	//형제 자매 access
	$(document).ready(function() {
// 		$('h2').siblings().addClass('blue')
//  	$('h2').siblings('h3').addClass('blue') //h3만 포함
//  	$('h2').next().addClass('blue') // h2 뒤쪽 형제(h3)
// 		$('h2').prev().addClass('blue') // h2 앞쪽 형제(h1)
//  	$('h1').nextUntil('p').addClass('blue') //h1시작 next로 움직이면서 p태그이전 => h2, h3
//  	$('h1').prevUntil('p').addClass('blue')
//  	$('h1').prevAll('p').addClass('blue') // h1 앞쪽으로 가면서 전부 다
 		$('h3').siblings().eq(1).addClass('blue') // eq() 번지에 addClass
	})
</script>
</head>
<body>
	<div>div1
		<p>p-1</p>
		<span>span</span>
		<h1>h1</h1>
		<h2>h2</h2>
		<h3>h3<p>p-2-1</p></h3>
		<p>p-3</p>
	</div>
	<div>div2
		<h2>h2</h2>
		<h3>h3</h3>
		<p>p2-1</p>
	</div>
</body>
</html>