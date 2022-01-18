<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 페이지</title>
<style>
	hr, table {
		width: 80%
	}
</style>
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
	<div align="center">
		<hr>
		<h2>새 글 등록</h2>
		<hr>
		<br>
		<form action="write.jsp" method="post" 
			  name="inputForm" onsubmit="return doWrite()">
			  <input type="hidden" name="writer" value="${ userVO.id }">
			<table border="1">
				<tr>
					<th width="23%">제목</th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td>
						${ userVO.id }
					</td>
				</tr>
				<tr>
				<th>내용</th>
				<td>
					<textarea name="content" rows="7" cols="60"></textarea>
				</td>
			</tr>
			</table>
			<br>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>