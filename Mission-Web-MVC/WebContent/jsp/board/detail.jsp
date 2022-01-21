<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세 페이지</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script>
	function doAction(type) {
		
		switch(type) {
		case 'U' :
			location.href = "updateForm.jsp?no=${ param.no }"
			break;			
		case 'D' :
			break;
		case 'L' :
			location.href = "list.jsp"
			break;
		}
		
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
			<div align="center">
		<hr>
		<h2>게시판 상세</h2>
		<hr>
		<br>
		<table border="1">
			<tr>
				<th width="25%">번호</th>
				<td>${ board.no }</td> <%-- EL로 접근한 것. 변수값 출력 목적 --%>
			</tr>
			<tr>
				<th width="25%">제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th width="25%">작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th width="25%">조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br>
		<button onclick="doAction('U')">수정</button>
		<button onclick="doAction('D')">삭제</button>
		<button onclick="doAction('L')">목록</button>
	</div>
	</section>
	<footer>
	<!--  include,forward,xml 에서의 경로는 '/' => Mission-Web -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>