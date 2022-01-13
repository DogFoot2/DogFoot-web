<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
	﻿
게시글 수정을 위한 작업 순서
1. 요청파라미터에서 조회할 게시물 번호 추출
2. 추출된 게시물 번호로 해당 게시물 db(tbl_board) 조회
3. form에 조회된 게시물을 출력
﻿
*/

	int boardNo = Integer.parseInt(request.getParameter("no"));

	BoardDAO dao = new BoardDAO();
	BoardVO board = dao.selectBoardByNo(boardNo);
	
	// 출력하려면 공유 영역에 등록해 주기
	pageContext.setAttribute("board", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정 페이지</title>
<link rel="stylesheet" href="/Mission-Web/css/layout.css">
<link rel="stylesheet" href="/Mission-Web/css/board.css">
<script>
 function doWrite() {
	
	 let f = document.inputForm
	 
	 if(f.title.value == '') {
		 alert('제목을 입력하세요')
		 f.title.focus()
		 return false
	 }

	 if(f.writer.value == '') {
		 alert('글쓴이를 입력하세요')
		 f.writer.focus()
		 return false
	 }
	 
	 if(f.content.value == '') {
		 alert('내용을 입력하세요')
		 f.content.focus()
		 return false
	 }
	 
	 return true
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
		<h2>게시글 수정</h2>
		<hr>
		<br>
		<form action="update.jsp" method="post" 
			  name="inputForm" onsubmit="return doWrite()">
			 <input type="hidden" name="no" value="${ param.no }" />
			<table border="1">
				<tr>
					<th>번호</th>
					<td>${ board.no }</td>
				</tr>
				<tr>
					<th width="23%">제목</th>
					<td>
					<input type="text" name="title" value="<c:out value='${ board.title }' />">
					</td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="writer" value="${ board.writer }"></td>
				</tr>
				<tr>
				<th>내용</th>
				<td>
					<textarea name="content" rows="7" cols="60">${ board.content }</textarea>
				</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="수정">
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>