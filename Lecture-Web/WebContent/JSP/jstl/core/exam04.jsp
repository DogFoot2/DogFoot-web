<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${ param.type eq 'S' }">
			관리자님 환영합니다
		</c:when>
		<c:when test="${ param.type eq 'U' }">
			사용자님 환영합니다
		</c:when>
		<c:otherwise>
			type파라미터가 전송되지 않았습니다
		</c:otherwise>
		
	</c:choose>
	
</body>
</html>