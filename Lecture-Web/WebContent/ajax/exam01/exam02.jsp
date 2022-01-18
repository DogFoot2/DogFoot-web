<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('button').click(function() {
			
			let name = $('#name').val()
			let age = $('#age').val()
			
// 			$.get('param.jsp', {name: name, age: age}, function() {
// 				$('#debug').val(data) //get 대신 post 써도 됨
// 			})

// 			$.get('param.jsp', "name=hong&age=25", function() {
// 				$('#debug').val(data) //get 대신 post 써도 됨
// 			})
			
			
			// param.jsp?name=hong&age=25 전달
			$.ajax({
				type: "post",
				//ajax에서는 get, post 이외에 put delete 방식으로 총 네 개가 있음
				//메소드와 url을 결합하여 어떤 방식을 사용할 건지  => Rest 방식
				url : "param.jsp",
			//	data: 'name=hong&age=25',
			//	data: 'name=' + name + '&age=' + age, 코드가 오류날 가능성이 높음
				data: {
					name: name,
					age: age
				},
				success : function(data) {
					$('#debug').val(data.trim())
				}, error : function(error) {
					alert('오류상태코드 : ' + error.status)
				}
			})
			
		})
		
	})
</script>
</head>
<body>
	<textarea rows="10" cols="80" id="debug"></textarea><br>
	이름 : <input type="text" name="name" id="name"><br>
	나이 : <input type="text" name="age" id="age"><br>
	<button>호출</button>
</body>
</html>