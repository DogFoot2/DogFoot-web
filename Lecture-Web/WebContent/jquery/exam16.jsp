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
		/* 
	   	 let pTags = document.getElementsByTagName("p");
		 let html = pTags[0].innerHTML
		 let text = pTags[0].innerText
		 */
		 let html = $('p').html()
		 let text = $('p').text()
		 
		 alert('추출된 html : ' + html + '\n추출된 text : ' + text)
		 //html 함수는 p 태그가 여러개 있더라도 하나만 가져 오는데
		 //text 함수는 여러 개 다 가져옴
		 
		 //a태그 속성값 뽑기
		 let aTag = document.getElementsByTagName("a")[0]
	//	 let href = aTag.href
	//	 aTag.getAttribute('href')
		 
		 let href = $('a').attr('href')
	
		 alert('추출된 href : ' + href)
		 
		 $('button').click(function() {
			 /* 자바스크립트식
			 let inputTag = document.getElementById("name")
			 let name = inputTag.value
			 */
			 
			 //제이쿼리식: val 함수 사용
			 let name = $('#name').val()
			 
			 alert('입력된 이름 : ' + name)
		 })
	})
</script>
</head>
<body>
	<p>내 이름은 <b>홍길동</b>이고, 별명은 <i>의적</i>입니다</p>
	<p>내 이름은 <strong>홍길순</strong>이고, 별명은 <em>의적2</em>입니다</p>
	<a href="http://www.naver.com">네이버</a><br>
	이름 : <input type="text" name="name" id="name">
	<button>입력완료</button> <!-- 입력완료 누르면 이름 추출되게  -->
	
</body>
</html>