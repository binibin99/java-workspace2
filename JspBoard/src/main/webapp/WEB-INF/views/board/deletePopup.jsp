<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ϱ�</title>
</head>
<body>
	<h3>�����Ϸ��� ���� ��й�ȣ�� �Է��ϴ� ��</h3>
	<h5 id="out"></h5>
	<h5 id="out2"></h5>
	<input id="inputPassword" type="password" name="board_password"/>
	<button id="confirmBtn">Ȯ��</button>
	
	<c:url value="/resources/board/js/sha256.js" var="sha256"/>
	<c:url value="/resources/board/js/deletePopup.js" var="deletePopup"/>
	
	<script src="${sha256}"></script>
	<script src="${deletePopup}"></script>
</body>
</html>