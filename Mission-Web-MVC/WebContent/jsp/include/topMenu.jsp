<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/board.css">
<table border="1" style="width:100%">
	<tr>
		<td rowspan="2" style="height: 50px; width: 80px;">
			<a href="${ pageContext.request.contextPath }">
			<img src="${ pageContext.request.contextPath }/resources/images/dog2.jpg" 
				style="height: 50px; width: 80px;">
			</a>
		</td>
		<td align="right">
		즐겨찾기
		<c:if test="${ not empty userVO }">
		[${ userVO.id }님으로 로그인 중...]
		</c:if>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>
			<nav align="center">
				<c:if test="${ userVo.type eq 'S' }">
				회원관리  |  
				</c:if>
				<a href="${ pageContext.request.contextPath }/board/list.do">게시판</a>  | 
			<c:choose>
				<c:when test="${ empty userVO }"> 
				<a href="/Mission-Web/jsp/member/signUp.jsp">회원가입</a>  |  
				<a href="${ pageContext.request.contextPath }/login.do">로그인</a>  |  
			</c:when>
			<c:otherwise>
				마이페이지  |  
				<a href="${ pageContext.request.contextPath }/logout.do">로그아웃</a>
			</c:otherwise>
			</c:choose>
			</nav>
		</td>
	</tr>
</table>