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
<%--<a href="<%= request.getContextPath() %>/board/list.do">게시판</a> --%>
	<a href="${ pageContext.request.contextPath }/board/list.do">게시판</a><br>
	<a href="${ pageContext.request.contextPath }/board/writeForm.do">새글등록</a><br>
	<c:if test="${ empty userVO }">
	<a href="${ pageContext.request.contextPath }/login.do">로그인</a><br>
	</c:if>
	<c:if test="${ not empty userVO }">
	<a href="${ pageContext.request.contextPath }/logout.do">로그아웃</a><br>
	</c:if>
</body>
</html>