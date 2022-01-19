<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전체게시글</h2>
	<table border="1">
		<tr>
			<th>제목</th>
			<th>작성자</th>
		</tr>
		<c:forEach items="${ list }" var="board">
		<tr>
			<td>${ board.title }</td>
			<td>${ board.writer }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>