<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="oracle.net.nt.ConnectDescription"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	작업 순서
	1. writeForm.jsp에서 넘겨준 제목(title), 글쓴이(writer), 내용(content) 추출
	2. tbl_board 테이블에 추출된 정보로 새로운 게시글 삽입(insert)
--%>
<%
	// 요청객체데이터 인코딩
	request.setCharacterEncoding("utf-8");
	// 요청객체에서 입력한 데이터 추출
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	// 데이터베이스 tbl_board 테이블에 새글등록
	BoardDAO dao = new BoardDAO();
	dao.insertBoard(board);
	
%>
<script>
	alert('새글 등록이 완료되었습니다')
	location.href = 'list.jsp'
</script>