<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update Bread Page!!</title>
</head>
<body>

	<h3># 빵 수정하기</h3>
	
	<form action="./update" method="post">
		수정할 빵 이름: <input type="text" name="bread_name"> <br>
		
		새로운 빵 이름: <input type="text" name="new_bread_name"> <br>
		새로운 빵 가격: <input type="number" min="0" step="100" value="1000" name="new_bread_price"> <br>
		<input type="submit" value="수정하기">
	</form>
	
</body>
</html>