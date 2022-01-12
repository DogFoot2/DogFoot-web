<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 cnt변수를 공유영역(page)에 설정<br>
	<c:set var="cnt" value="1" />
	공유영역에 설정된 cnt 변수값 출력<br>
	${ cnt }<br>
	cnt변수값을 1 증가<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" /><br>
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
	request영역의 cnt변수 삭제<br>
	<c:remove var="cnt" scope="request" />
	<c:remove var="cnt" />
	cnt: ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>
<%-- 
	공유영역 4가지
	---------------------------------------------------------
		JSP					EL					JSTL
	---------------------------------------------------------
		pageContext			pageScope			page
		request				requestScope		request
		session				sessionScope		session
		application			applicationScope	application
	---------------------------------------------------------

--%>