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
		
		$.ajax({
			url: 'person.jsp',
			success: function(data) {
				console.log(data)
				memberList = eval(data)
// 				memberList = JSON.parse(data)				
				console.log(memberList)
			}
		})
	})
</script>
</head>
<body>

</body>
</html>