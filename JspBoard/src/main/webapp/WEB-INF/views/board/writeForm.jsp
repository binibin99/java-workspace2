<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>글쓰기</h1>
	
	<form action="./write" id="writeForm" method="POST">
		글 제목: <input type="text" name="board_title"/> <br>
		글쓴이 : <input type="text" name="board_writer"/>
		글 비밀번호 : <input type="password" name="board_password"/> <br>
		<textarea name="board_content" rows="10" cols="30"></textarea>
	</form>
	
	<button type="submit" form="writeForm">글쓰기</button>
	<button>글목록</button>
</body>
</html>