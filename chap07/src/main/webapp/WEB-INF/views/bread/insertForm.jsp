<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Add New Bread Page!!</title>
</head>
<body>

	<h3># �� �� �߰��ϱ�</h3>
	
	<form action="./add" method="post">
		�̸�: <input type="text" name="bread_name"> <br>
		����: <input type="number" min="0" step="100" value="1000" name="bread_price"> <br>
		<input type="submit" value="�߰��ϱ�">
	</form>
	
</body>
</html>