<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>조회 잘됨</h3>
	
	글 제목 : <input type="text" value="${detail.board_title}" readonly/> <br>
	글쓴이 : <input type="text" value="${detail.board_writer}" readonly/> <br>
	조회수 : ${detail.view_count} 작성일 : ${detail.write_date} <br>
	<textarea rows="10" cols="30" readonly>${detail.board_content}</textarea> <br>
	
	<input id="inputPassword" type="password" name="board_passsword">
	<button id="modiBtn">수정하기</button>
	<button id="delBtn">삭제하기</button>
	<button id="delBtn2">삭제하기(팝업창)</button>
	
	<form id="delForm" action="./delete" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id}">
		<input type="hidden" name="check_password" value="${detail.board_password}">
		<input id="hiddenPassword" type="hidden" name="board_password">
	</form>
	
	<hr>
	
	<c:forEach items="${replies}" var="reply">
		<div>
		[${reply.reply_writer}]
		${reply.reply_content}
		<span>${reply.reply_date}</span>
		</div>
	</c:forEach>
	
	<hr>
	
	<div id="replyWriteDiv">
		<textarea id="replyContent" name="reply_content" rows="5" cols="80" form="replyForm"></textarea> <br>
		댓글쓴이 <input id="replyWriter" type="text" name="reply_writer" form="replyForm"/>
		비밀번호<input id="replyPassword" type="password" name="reply_password" form="replyForm"/>
		<button id="replyWriteBtn" form="replyForm">댓글쓰기</button>
	</div>
	
	<form id="replyForm" action="./reply/add" method="POST">
		<input type="hidden" name="board_id" value="${detail.board_id}">
	</form>
	
	<c:url value="/resources/board/js/detail.js" var="detailJS"/>
	<c:url value="/resources/board/js/detailReply.js" var="detailReplyJS"/>
	<c:url value="/resources/board/js/sha256.js" var="sha256"/>
	
	<script>
		const boardPassword = '${detail.board_password}';
		const board_id = ${detail.board_id};
	</script>
	<script src="${sha256}"></script>
	<script src="${detailJS}"></script>
	<script src="${detailReplyJS}"></script>
</body>
</html>