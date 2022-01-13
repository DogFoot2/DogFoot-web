<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// ﻿tbl_board에서 게시판 번호, 제목, 작성자, 등록일 조회
	BoardDAO dao = new BoardDAO();
	List<BoardVO> list = dao.selectAllBoard();
	
	pageContext.setAttribute("list", list);

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<script>
	function goWriteForm() {
		location.href = "writeForm.jsp"
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
	<h2>게시판 목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th width="7%">번호</th>
			<th>제목</th>
			<th width="16%">글쓴이</th>
			<th width="20%">등록일</th>
		</tr>
		
		<c:forEach items="${ list }" var="board">
			<tr>	<!-- getter 메소드 호출 -->
				<td>${ board.no }</td>
				<td>
					<a href="detail.jsp?no=${ board.no }">
					<c:out value="${ board.title }"/>
					</a>
				</td>
				<td>${ board.writer }</td>
				<td>${ board.regDate }</td>
			</tr>
		</c:forEach>
			
	</table>
	<br>
	<button onclick="goWriteForm()">새글등록</button>
	</div>
	</section>
	<footer>
	<!--  include,forward,xml 에서의 경로는 '/' => Minssion-Web -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>



