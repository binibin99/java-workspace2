<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute</title>
</head>
<body>

   <h3># Attribute</h3>

   <ul>
      <li>Parameter : Ŭ���̾�Ʈ�� form���� �������� �������� ������ ������</li>
      <li>Attribute : �ϳ��� �������� �ٸ� �������� ������ �� �մ� ������</li>
      <li>�� Attribute�� �������� ��ȿ�� ����(scope)�� �����ϸ� �뵵�� �°� Ȱ���ؾ� �Ѵ�</li>
      <li>�����δ� application, session, request, page�� �ִ�</li>
   </ul>
   
   <h3># Attribute Scope</h3>
   
   <dl>
      <dt>1. application scope</dt>
      <dd>
         WAS�� �����س��� ��Ʈ����Ʈ. ������ ����Ǳ� ������ ��� �����ȴ�.
         ��� �������� ������ �� �ִ�. (���� static �������� ����)
      </dd>
      <dt>2. session scope</dt>
      <dd>
         �ϳ��� ������ ����Ǳ������� �����Ǵ� ��Ʈ����Ʈ.
         �� Ŭ���̾�Ʈ���� ������ ������ ������ �ִ�. (�������� �������ִ� ���� ������)
      </dd>
      <dt>3. request scope</dt>
      <dd>
         �ϳ��� ��û�� ����Ǳ������� �����Ǵ� ��Ʈ����Ʈ.
         forward, include�� ����Ǵ� ���� �����Ǳ� ������
         ���� ó���� �����͸� �����ϴ� �뵵�� ���� ���ȴ�.
      </dd>
      <dt>4. page scope</dt>
      <dd>
         �ش� JSP ������ ���ο����� ����� �� �ִ� ��Ʈ����Ʈ.
         forward, include�� �ٸ� �������� �Ѿ�� ��� �������.      
      </dd>
   </dl>
   
   <h3># �� ���� ��Ʈ����Ʈ ����غ���</h3>
   
   <ul>
      <li>application : <%=application.getAttribute("food") %></li>
      <li>session : <%=session.getAttribute("food") %></li>
      <li>request : <%=request.getAttribute("food") %></li>
      <li>page : <%=pageContext.getAttribute("food") %></li>
   </ul>
   
   <input id="applicationInput" type="text" value="orange" name="food" />
   <button id="applicationBtn">application�� ������ �߰��ϱ�</button> <br>
   <input id="sessionInput" type="text" value="orange" name="food" />
   <button id= sessionBtn>session�� ������ �߰��ϱ�</button> <br>
   <input id="requestInput" type="text" value="orange" name="food" />
   <button id="requestBtn">request�� ������ �߰��ϱ�</button> <br>
   <input id="pageInput" type="text" value="orange" name="food" />
   <button id="pageBtn">page�� ������ �߰��ϱ�</button> <br>
   
   <div>
   		<a href="/chap04/session/index.jsp">���� ���� ��������</a>
   </div>
   
   <script>
      const applicationBtn = document.getElementById("applicationBtn");
      const applicationInput = document.getElementById("applicationInput");
      
      applicationBtn.addEventListener('click', (e) => {
            location.href = '/chap04/attribute/add.jsp?food='
                  + applicationInput.value + '&scope=application';
      });
      
      const sessionBtn = document.getElementById("sessionBtn");
      const sessionInput = document.getElementById("sessionInput");
      
      sessionBtn.addEventListener('click', (e) => {
            location.href = '/chap04/attribute/add.jsp?food='
                  + sessionInput.value + '&scope=session';
      });
      
      const requestBtn = document.getElementById("requestBtn");
      const requestInput = document.getElementById("requestInput");
      
      requestBtn.addEventListener('click', (e) => {
            location.href = '/chap04/attribute/add.jsp?food='
                  + requestInput.value + '&scope=request';
      });
      
      const pageBtn = document.getElementById("pageBtn");
      const pageInput = document.getElementById("pageInput");
      
      pageBtn.addEventListener('click', (e) => {
            location.href = '/chap04/attribute/add.jsp?food='
                  + pageInput.value + '&scope=page';
      });
   </script>
   
   
</body>
</html>