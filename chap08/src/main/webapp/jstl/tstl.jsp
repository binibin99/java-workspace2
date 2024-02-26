<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># JSTL (JSP Standard Tag Library)</title>
</head>
<body>

	<ul>
		<li>JSP���� �ڹ� �ڵ带 ����� �� �ڵ尡 �ʹ� ������������ ������ Ŀ���� �±� ���̺귯��</li>
		<li>�� �ʿ��� ���� ���̴� �ڹ� �������� html �±׿� ������ �������� ����� �� �ִ� ����� �����Ѵ�</li>
		<li>�ڹ��� ��� ����� ����� �� �ִ� ���� �ƴ����� �� �������� ����⿡�� ����� ��ɵ��� �±� ��������
			�����Ǿ� �ִ�</li>
		<li>Maven Repository���� �ٿ�ε� �� �� �ִ�</li>
		<li>taglib �������� �߰��� �� ����ؾ� �Ѵ�</li>
	</ul>

	<h3># JSTL core</h3>

	<dl>
		<dt>c:set</dt>
		<dd>�� ������ setAtrribute�� ���ϰ� �����Ͽ� ����� �� �ִ� �±�</dd>
		<dt>c:if</dt>
		<dd>if���� �����ϰ� �� �� �ִ� �±�. else if�� else�� ����</dd>
		<dt>c:choose, c:when, c:otherwise</dt>
		<dd>if, else if, elseó�� ����� �� �ִ� �±�</dd>
		<dt>c:forEach</dt>
		<dd>for���� �����ϰ� ����� �� �ִ� �±�. ���ڸ� ���� �ݺ��� ���� �ְ�, ������� ������ �ݺ��� ���� �ִ�.</dd>
		<dt>cLforTokens</dt>
		<dd>������ ���ڿ��� split�� ����� �ݺ��� �����ϴ� ����</dd>
		<dt>c:url</dt>
		<dd>��θ� ����� �� �˾Ƽ� contextPath�� �߰����ִ� ����</dd>
	</dl>
	
	<%=request.getContextPath() %>/abc/123
	<c:url value="/abc/123"/>

	<hr>

	<%
	// �� ������ ��Ʈ����Ʈ �߰��ϱ�
	application.setAttribute("fruit", "���");
	session.setAttribute("fruit", "��");
	request.setAttribute("fruit", "�ٳ���");
	pageContext.setAttribute("fruit", "����");
	%>

	<c:set var="snack" value="��������" scope="application" />
	<c:set var="snack" value="��������" scope="session" />
	<c:set var="snack" value="����ƽ" scope="request" />
	<c:set var="snack" value="�ٳ���ű" scope="page" />
	<c:set var="snack" value="ġ�佺" />
	<!-- ������ �������� page�� ��Ʈ����Ʈ ��� -->

	<c:set var="coffee" value="ī���" scope="application" />

	<h5># JSP ���������� ��Ʈ����Ʈ�� ���� ���� �� �� �ִ� ����� �����Ѵ�(EL)</h5>

	<div>�׳� ���� : ${fruit} (�⺻������ ���� ����� ������ ���� ���)</div>
	<div>applicationScope : ${applicationScope.fruit}</div>
	<div>sessionScope : ${sessionScope.fruit}</div>
	<div>
		requestScope :
		<%=request.getAttribute("fruit")%></div>
	<div>pageScope : ${pageScope.fruit}</div>
	<div>app: ${applicationScope.snack}</div>
	<div>session: ${sessionScope.snack}</div>
	<div>req: ${requestScope.snack}</div>
	<div>page: ${pageScope.sncak}</div>
	<div>Ŀ��: ${coffee}</div>

	<h5># ��Ʈ����Ʈ�� ������ ���� Ȱ���� ���� if�� ����ϱ�</h5>

	<c:if test="${coffee == 'ī���'}">
		<div>if���� ����Ǿ����ϴ�.</div>
	</c:if>

	<c:set var="num" value="555"></c:set>
	<c:choose>
		<c:when test="${num > 10}">
			<div>if</div>
		</c:when>
		<c:when test="${num > 0}">
			<div>else if</div>
		</c:when>
		<c:when test="${num > -10}">
			<div>else if</div>
		</c:when>
		<c:otherwise>
			<div>else</div>
		</c:otherwise>
	</c:choose>

	<h5># ���ϴ� Ƚ����ŭ �ݺ��ϱ�</h5>

	<ul>
		<c:forEach begin="0" end="9" var="i">
			<li id=:list-item${i}">${i}��°����Ʈ�������Դϴ�.</li>
		</c:forEach>
	</ul>

	<table border="1">
		<c:forEach begin="0" end="19" var="i" step="2">
			<tr>
				<td>${i}</td>
				<td>${i + 1}</td>
			</tr>
		</c:forEach>
	</table>

	<h5># �迭, ����Ʈ ���� ���������� �����鼭 �ݺ��ϱ� (Iterable)</h5>

	<%
	String name = "��ö��";
	String[] coffees = { "Americano", "Cafe Latte", "Americano", "Cafe Mocha", "ī��� �����ƶ�" };
	ArrayList<String> foods = new ArrayList<>();

	pageContext.setAttribute("name", name);
	pageContext.setAttribute("coffees", coffees);
	pageContext.setAttribute("foods", foods);

	foods.add("����");
	foods.add("�ܹ���");
	foods.add("����");
	foods.add("��ġ����");
	foods.add("�Ұ��");
	foods.add("�Ҽ���");
	foods.add("����");

	java.util.Collections.sort(foods);
	%>

	<c:forEach items="${coffees}" var="co">
		<div>${co}</div>
	</c:forEach>

	<c:forEach items="${foods}" var="food">
		<div>${food}</div>
	</c:forEach>

	<h3># �ݺ��ϸ鼭 varStatus Ȯ���ϱ�</h3>

	<ul>
		<li>varStatus.index : ���� �ε����� Ȯ���� �� �ִ� (�� ��° �ΰ�, 0���� ����)</li>
		<li>varStatus.count : ���� ī��Ʈ�� Ȯ���� �� �ִ� (�� �� �ΰ�, 1���� ����)</li>
		<li>varStatus.first : ù ��° ����� �� true</li>
		<li>varStatus.last : ������ ����� �� true</li>
		<li>varStatus.begin : ���� ���� ������ ���</li>
		<li>varStatus.end : ������ ���� ������ ���</li>
		<li>varStatus.step: �������� ������ ���</li>
		<li>varStatus.current : ���� ��</li>
	</ul>

	<c:forEach items="${foods}" var="food" varStatus="v">
		<c:choose>
			<c:when test="${v.first}">
				<div class="first">${v.index}��°����: ${food} (${v.count}��)</div>
			</c:when>
			<c:when test="${v.last}">
				<div class="last">${v.index}��°����: ${food} (${v.count}��)</div>
			</c:when>
		<c:otherwise>
			<div class="mid">${v.index}��°����: ${food} (${v.count}��)</div>
		</c:otherwise>
		</c:choose>
	</c:forEach>
	
	<h5>c:forTokens</h5>
	
	<h5># �� ���ڿ� �߶� �ݺ��� ������ (c:forTokens)</h5>
	
	<c:set var="animals" value="pig#cat#dog/lion/tiger/zibra:elephant"/>
	
	<c:forTokens items="${animals}" delims="/#" var="animal">
	<div>${animal}</div>
	</c:forTokens>
	
	
	<h5># url ����ϰ� �����</h5>
	<ul>
		<li><%=request.getContextPath() %>/abc/123</li>
		<li><c:url value="abc/123"/></li>
		<li>��ο� �Ķ���� �߰��ϱ�: /abc/123?taste=banana&type=hot</li>
		<li>
			<c:url value="/abc/123/add" var="myURL2">
				<c:param name="employee_id" value="101"/>
				<c:param name="department_id" value="80"/>
			</c:url>
		</li>
	</ul>
	
	<!-- c:url�� var�� �����ϸ� �ش� ��ΰ� �信 ��µ��� �ʰ� ��Ʈ����Ʈ�� ��ϵȴ� -->
	<c:url value="abc/123/aaa" var="myURL1"/>
	
	<a href="${myURL1}">��ũ1</a>
	<a href="${myURL2}">��ũ2</a>
	
</body>
</html>