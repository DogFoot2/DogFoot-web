<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<style>
	div img {
		width: 100px;

	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
  $(document).ready(function(){
    $('.slider').bxSlider();
  });
</script>
</head>
<body>
  	<div class="slider">
    	<div><img src="/Lecture-Web/html/images/dog.jpg"></div>
    	<div><img src="/Lecture-Web/html/images/dog1.jpg"></div>
   		<div><img src="/Lecture-Web/html/images/dog2.jpg"></div>
   		<div><img src="/Lecture-Web/html/images/dog3.jpg"></div>
    	<div><img src="/Lecture-Web/html/images/dog4.jpg"></div>
  </div>
</body>
</html>