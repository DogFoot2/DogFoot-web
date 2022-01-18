<%@page import="kr.co.mlec.member.dao.LoginDAO"%>
<%@page import="kr.co.mlec.member.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 객체초기화 
	LoginVO loginVO = new LoginVO();
	loginVO.setId(id);
	loginVO.setPassword(password);
	
	// DB에서 사용자 조회
	LoginDAO dao = new LoginDAO();
	/*
		반환값이 null이면      로그인 실패
		       null이 아니면  로그인 성공
	*/
	LoginVO userVO = dao.login(loginVO);
	
	String msg = "";
	String url = "";
	if(userVO == null) {
		msg = "아이디 또는 패스워드가 잘못입력하셨습니다";
		url = "loginForm.jsp";
	} else {
		
		switch(userVO.getType()) {
		case "S" :
			msg = "관리자님 환영합니다";
			break;
		case "U" :
			msg = userVO.getId() + "님 환영합니다"; 
			break;
		}
		
		url = "/Mission-Web";
		
		//세션 등록
		session.setAttribute("userVO", userVO);
	}
	
	pageContext.setAttribute("msg", msg);
	pageContext.setAttribute("url", url);
%>
<script>
	alert('${ msg }')
	location.href = '${ url }' 
</script>