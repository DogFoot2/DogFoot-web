<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		body부분
	</section>
	<footer>
	<!--  include,forward,xml 에서의 경로는 '/' => Minssion-Web -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>