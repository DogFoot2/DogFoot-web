<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		InputStreamReader isr = new InputStreamReader(request.getInputStream(), "utf-8");
		BufferedReader br = new BufferedReader(isr);
		while(true) {
			String buf = br.readLine();
			if(buf == null) break;
			out.print(buf + "<br>");
		}
	%>
</body>
</html>