<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%     
    /*
    // 1. 자바빈즈클래스 + 콜렉션
    Board.setTitle("성공");
    board.setList("성공");
    
    List<BoarVO> boardList = new AttayList<>();
    boardList.add(board);
    */
    
    // 2. 자바빈스클래스+배열
    /*
    BoardVO board = new BoardVO();
    board.setTitle("성공");
    BoardVO[] boardList = {board};
  	*/
  	
  	//3. Map객체 + 배열
  	/*
  	Map<String, String> board = new HashMap<>();
  	board.out("title", "성공");
  	Map[] boardList = {board];
    */
    
    //4. Map객체 + 콜렉션
    Map<String, String> board = new HashMap<>();
    board.put("title", "성공");
    
    List<Map<String, String>> boardList = new ArrayList<>();
    boardList.add(board);
    
    pageContext.setAttribute("boardList", boardList);


%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	성공/실패? ${ boardList[0].title }<br> <%-- 성공 출력 --%>
</body>
</html>