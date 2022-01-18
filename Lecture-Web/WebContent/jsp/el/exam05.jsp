<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> b = new HashMap<>();
	b.put("no","10");
	b.put("title", "제목입니다");
	
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	<hr>
	el no : ${ board.no }<br>
	el title : ${ board.title }<br>
	
	el aaa : ${ board.aaa }<br>
</body>
</html>