<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># Quiz</title>
</head>
<body>
	
	<ul>
	<li>�� �������� ������ �� ����â�� �ϳ� �߰� ������ּ���</li>
	<li>����â���� ������ �̹��� �ϳ��� üũ�ڽ� ��ư�� �־�� ��</li>
	<li>üũ �ڽ��� üũ�ϰ� â�� ������ 30�ʵ��� �� �������� �����ϴ��� ����â�� ���� �ʰ�</li>
	</ul>
	
	 <c:url value="/quiz/popup/promotion.jsp" var="pmURL"/>
	 
	 <!-- JSP ������������ EL�� ��Ű���� ���� ���� �� �� �ִ� -->
	 <c:if test="${cookie.nmpm.value != '1'}">
	 <script>
	 	//open�� �� ���� �� ��â�� �ν��Ͻ��� ��ȯ�Ѵ�
	 	const a = open('${pmURL}', '_blank', 'width=500, height=500')
	 	// a.close();
	 </script>
	 </c:if>
</body>
</html>