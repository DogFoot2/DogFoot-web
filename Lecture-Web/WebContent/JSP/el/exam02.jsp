<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp
		?id=aaa&name=bbb&hobby=reading&hobby=movie
		요청 가정시 aaa 추출하는 방법?
 --%>
 
 	<%
 		String id = request.getParameter("id");
 		String[] hobby = request.getParameterValues("hobby");
 		if(hobby == null) {
 			hobby = new String[] {"파라미터 없음"};
 		}
 	%>
 	id : <%= id %><br>
 	id : <%= request.getParameter("id") %><br>
 	id : ${ param.id }<br>
 	
 	name : <%= request.getParameter("name") %><br> 
 	name : ${ param.name }<br>
 	
 	hobby[0] : <%= hobby[0] %><br>
 	hobby[0] : ${ paramvalues.hobby[0] }<br>
 	empty hobby[0] : ${ empty paramValues.hobby[0] }<br>
 	
</body>
</html>