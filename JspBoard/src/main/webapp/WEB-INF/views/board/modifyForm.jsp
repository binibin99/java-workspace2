<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 수정하기</title>
</head>
<body>
	
	<h3>글 수정하기</h3>
	
	글 제목 : <input type="text" value="${oldData.board_title}" form="modiForm" name="board_title"/> <br>
	글쓴이 : ${oldData.board_writer} <br>
	조회수 : ${oldData.view_count} 작성일 : ${oldData.write_date} <br>
	<textarea rows="10" cols="30" form="modiForm" name="board_content">${oldData.board_content}</textarea> <br>
	
	<button id="modiConfirmBtn">수정</button>
	<button id="listBtn">목록</button>
	
	<!-- POST방식은 ?id=10 방식으로 파라미터를 보낼 수 없어서 hidden타입 input을 사용해야 한다 -->
	<input type="hidden" name="board_id" value="${oldData.board_id}" form="modiForm">
	
	<form action="./modify" id="modiForm" method="POST"></form>
	
	<c:url value="/resources/board/js/modi.js" var="modiJS" />
	<script src="${modiJS}"></script>	
	
</body>
</html>