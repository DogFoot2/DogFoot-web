<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> nameList = new ArrayList<>();
	nameList.add("홍길동");
	nameList.add("강길동");
	nameList.add("윤길동");
	
	pageContext.setAttribute("names,", nameList);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫번째 이름 : <%= nameList.get(0) %><br>
	두번째 이름 : <%= nameList.get(1) %><br>
	세번째 이름 : <%= nameList.get(2) %><br>
	<hr>
	첫번째 이름 : ${ names[0] }<br>
	두번째 이름 : ${ names[1] }<br>
	세번째 이름 : ${ names[2] }<br>
</body>
</html>