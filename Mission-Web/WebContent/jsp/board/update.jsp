<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");

	//수정할 제목, 작성자, 내용 추출 + 번호
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	int no = Integer.parseInt(request.getParameter("no"));
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	board.setNo(no);
	
	BoardDAO dao = new BoardDAO();
	dao.updateBoard(board);
	
%>
<script>
	alert('${ param.no }번 게시물이 수정되었습니다')
	location.href = 'detail.jsp?no=${ param.no }'
</script>