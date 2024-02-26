<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 양식</title>
</head>
<body>

	<form action="/chap04/quiz2/register" method="POST">
		ID <input name="id" type="text"> <br>
		PASSWORD <input name="pwd" type="password"> <br>
		<input type="submit" value="가입하기">
	</form>

</body>
</html>