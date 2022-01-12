<%@page import="kr.co.mlec.util.JDBCClose"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.co.mlec.util.ConnectionFactory" %>
<%
	// tbl_member에 회원가입 정보 삽입
	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select id, name, password, email_id, email_domain, tel1, tel2, tel3, basic_addr, detail_addr, to_char(reg_date, 'yyyy-mm-dd') from tbl_member ");
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	hr, table {
		width: 80%
	}
</style>
<script>
	function goSignUpForm() {
		location.href = "signUpForm.jsp"
	}
</script>
</head>
<body>
	<div align="center">
	<hr>
	<h2>전체 조회</h2>
	<hr>
	<table border="1">
		<tr>
			<th width="10%">아이디</th>
			<th width="10%">이름</th>
			<th width="10%">비밀번호</th>
			<th width="19%">이메일주소</th>
			<th width="19%">전화번호</th>
			<th>주소</th>
			<th width="10%">가입날짜</th>
		</tr>
		
		<%
		while(rs.next()) {
			String id = rs.getString("id");
			String name = rs.getString("name");
			String pwd = rs.getString("password");
			String email1 = rs.getString("email_id");
			String email2 = rs.getString("email_domain");
			String tel1 = rs.getString("tel1");
			String tel2 = rs.getString("tel2");
			String tel3 = rs.getString("tel3");
			String addr1 = rs.getString("basic_addr");
			String addr2 = rs.getString("detail_addr");
			String regDate = rs.getString(11);
			
			String email = email1 + "@" + email2;
			String tel = tel1 + "-" + tel2 + "-" + tel3;
			String addr = addr1 + addr2;
		%>
			<tr>
				<td align="center"><%= id %></td>
				<td align="center"><%= name %></td>
				<td align="center"><%= pwd %></td>
				<td align="center"><%= email %></td>
				<td align="center"><%= tel %></td>
				<td align="center"><%= addr %></td>
				<td align="center"><%= regDate %></td>
			</tr>
		<%
		}
		%>
	</table>
	<br>
	<button onclick="goSignUpForm()">회원가입</button>
	</div>

</body>
</html>
<%
	JDBCClose.close(pstmt, conn);
%>