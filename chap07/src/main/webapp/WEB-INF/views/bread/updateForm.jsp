<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Update Bread Page!!</title>
</head>
<body>

	<h3># �� �����ϱ�</h3>
	
	<form action="./update" method="post">
		������ �� �̸�: <input type="text" name="bread_name"> <br>
		
		���ο� �� �̸�: <input type="text" name="new_bread_name"> <br>
		���ο� �� ����: <input type="number" min="0" step="100" value="1000" name="new_bread_price"> <br>
		<input type="submit" value="�����ϱ�">
	</form>
	
</body>
</html>