<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="./taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># file include</h3>

	<p>���Ϸ� include�ϴ� ��� �ش� ������ ������ ���� .jsp���Ϸ� ��°�� �����ͼ� ����Ѵ�</p>

	<p>�����Ϸ��� ������ �����ϵ��� �ʱ� ������ jsp ������ ������ ��Ű�� �ʾƵ� �ȴ�</p>

	<p>file include�� �������� �뵵�� ������ �����ϵ��� �ʴ´ٰ� ǥ���ϱ� ���� .jspf(jsp
		fragment) Ȯ���ڸ� ����ϱ⵵ �Ѵ�</p>

	<div id="gugudan">
		<%@ include file="./gugudan.jspf" %>
	</div>

	<h3>for</h3>

	<ul>
		<c:forEach begin="0" end="9" var="i">
			<li id="item${i}">list-item${i}</li>
		</c:forEach>
	</ul>

</body>
</html>