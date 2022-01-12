<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H2>1 ~ 10 사이의 정수 출력</H2>
	<%	
		int sum = 0;
		for(int i = 1; i < 10; i++) {
			sum = sum + i;
	%>
				<%= i %><br>
	<%	
		}
		out.println("1~10 사이의 총합 : " + sum + "<br>");
	%>
	
	1 ~ 10 사이의 총합 : <%= sum %><br>
</body>
</html>