<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 이미 로그인된 상태라면 메모 페이지로 리다이렉트
	if (session.getAttribute("info") != null) {
		response.sendRedirect("/chap04/quiz2/memo/main");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 하는 곳</title>
</head>
<body>

	ID: <input name="id" type="text" form="form1"> <br>
	PASSWORD: <input name="pwd" type="password" form="form1"/> <br>
	<button type="submit" form="form1">로그인</button>
	
	<!-- 
		id속성과 form속성을 활용해
		form 태그 밖에 있는 요소도들도 이 폼의 소속으로 설정할 수 있다 
	-->
	<form id="form1" action="/chap04/quiz2/login" method="POST"></form>

</body>
</html>