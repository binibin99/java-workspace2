<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>

	<h3># �䱸����</h3>
	
	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϰ� �α��� ��ư�� ���� �α����� �� �� �ִ�</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ�ȴ�
			(���̵� �ߺ��� üũ�ؾ� �ϰ�, ���Ե� ������ application ������ ����Ѵ�)</li>
		<li>�α��ο� ������ ����� ������ �����Ǵ� ���� �α����� ����ؼ� �����Ǿ�� �Ѵ�</li>
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ������ ����ߴ� �޸�鵵 �� �� �ִ�</li>
		<li>������ ����������� ��� ȸ������ �� �޸� ������� ��� ����</li>
		<li>������ ������ ������ ������ ��� ������ quiz ���� �ؿ� ���� ��
			(������ ����ϰ� �ʹٸ� URL�� quiz�� ���� ��)</li>
	</ul>
	
	<input id="applicationInput" type="text" value="id" name="login" />
  	<input id="applicationInput" type="text" value="password" name="login" />
  	<button id="applicationBtn">�α���</button> <br>
  	
   <script>
      const applicationBtn = document.getElementById("applicationBtn");
      const applicationInput = document.getElementById("applicationInput");
      
      applicationBtn.addEventListener('click', (e) => {
            location.href = '/chap04/quiz/index2.jsp?login='
                  + applicationInput.value + '&scope=application';
            
      });
      
      applicationBtn.addEventListener('click', (e) => {
    	  
      });
      
   </script>
  	

</body>
</html>