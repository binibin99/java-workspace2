<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form</title>
</head>
<body>

	<h3># input</h3>

	<ul>
		<li>input �±׸� ����� ����ڷκ��� �پ��� �Է��� ���� �� �ִ�</li>
		<li>����ڰ� �Է��� �����ʹ� �ڹٽ�ũ��Ʈ���� Ȱ���� ���� �ְ� ������ �����Ҽ��� �ִ�</li>
		<li>type �Ӽ��� ������ �پ��� ������� �Է� ���� �� �ִ�</li>		
	</ul>
	
	<br/>
	<hr/>
	
	<table border=1;>
		<tr>
			<th>Type</th>
			<th>Shape</th>
			<th>Description</th>
		</tr>
		<tr>
			<td>test</td>
			<td><input type="text" placeholder="input your name here..."></td>
			<td>�Ϲ����� �ؽ�Ʈ �Է�</td>
		</tr>
			<td>number</td>
			<td><input type="number" min="10" max="10" step="2" value="8"></td>
			<td>���ڸ� �Է¹��� �� �ִ� ĭ</td>
		</tr>
		<tr>
			<td>password</td>
			<td><input type="password"></td>
			<td>��� �ʸӷ� �� �� ���� �Է�ĭ</td>
		</tr>
		<tr>
			<td>date</td>
			<td><input type="date"></td>
			<td>��¥ ���ö�(���������� ����� �ٸ�)</td>
		</tr>
		<tr>
			<td>radio</td>
			<td>
			<!-- �� name �Ӽ��� input �±��� ī�װ��� �ǹ��Ѵ� -->
			<!-- �� id �Ӽ��� label �±��� for �Ӽ��� �̿��� ���� ������ �� �� �ִ� -->
				<input type="radio" name="Lunch" id="hotbar">
				<label for="hotbar">�ֹ�</label><br>
				<input type="radio" name="Lunch" id="samkim">
				<label for="samkim">�ﰢ���</label><br>
				<input type="radio" name="Lunch" id="cup-noodle">
				<label for="cup-noodle">�Ŷ��</label><br>
				<input type="radio" name="Lunch" id="rice-burger">
				<label for="rice-burger">�����</label><br>
			</td>
			<td>���� ī�װ��� ���� �ɼ� �� ��1�ϴ� ���ö�</td>
		</tr>
		<tr>
			<td>checkbox</td>
			<td>
				<input type="checkbox" name="genre" id="comedy">
				<label for="comedy">�ڹ̵�</label><br>
				<input type="checkbox" name="genre" id="thriller">
				<label for="thriller">������</label><br>
				<input type="checkbox" name="genre" id="action">
				<label for="action">�׼�</label><br>
				<input type="checkbox" name="genre" id="noir">
				<label for="noir">���͸�</label><br>
			</td>
			<td>���� �ɼ� �� ��1�ϴ� ���ö�</td>
		</tr>
		<tr>
			<td>textarea</td>
			<td>
				<textarea name="" id="" cols="30" row="10"></textarea>
			</td>
			<td>�� ������ �ؽ�Ʈ�� �Է¹޴� �뵵</td>
		</tr>
		<tr>
			<td>select</td>
			<td>
				<select name="" id="">
					<option value="">South Korea</option>
					<option value="">Republic of Korea</option>
					<option value="">���ѹα�</option>
				</select>
			</td>
			<td>
				���ö�
			</td>		
		</tr>
		<tr>
			<td>color</td>
			<td><input type="color"></td>
			<td>������ �� �� ����</td>
		</tr>
	</table>

	<h3># form</h3>
	
	<ul>
		<li>����ڰ� form�±� ������ input�±׵鿡�� ������ ���� ������ ������ �� �ִ�</li>
		<li>form �±� ���ο��� submit�� �߻��ϸ� �� ������ �����Ϳ� �Բ� ������ ��û�� ������</li>
		<li>input �±��� name �Ӽ��� �������� key������ �Ͽ� value�� �Բ� ���۵ȴ�</li>
		<li>�Ǿ�� �����ʹ� �������� request ��ü���� Ȯ���� �� �ִ�</li>
		<li>action �Ӽ� : ��û�� ���� ���� URL</li>
		<li>method �Ӽ� : ��û ����� ���� (GET or POST)</li>
	</ul>
	
	<h3># GET��� ��û</h3>
	
	<ul>
		<li>GET��� ��û�� �����Ͱ� ?key1=value1&key2=value2...���·�
			URL�� �� �ڿ� �ٿ��� ���۵ȴ�</li>
		<li>��й�ȣ ���� ���� GET������� �����ϸ� �ȵȴ�</li>
	</ul>
	
	
	<form action="/chap02/formTest" method="GET">
	<table>
		<tr>
		<th>name</th>
		<td><input type="text" name="user-name"></td>
		</tr> 
		<tr>
		<th>age</th>
		<td><input type="number" name="user-age"></td>
		</tr> 
		<tr>
		<th>password</th>
		<td><input type="password" name="user-password"></td>
		</tr>
		<tr>
		<th>color</th>
		<td><input type="color" name="my-color"></td>
		</tr>
		<tr>
			<td><input type="submit"></td> <!-- ������ �����ϱ� -->
			<td><input type="reset"></td> <!-- �Է��ߴ� ���� ��� ����ϱ� -->
		</tr>
	</table>
	</form>
		
	<h3># POST ��� ��û</h3>
	
	<ul>
		<li>POST ����� �����͸� URL�� ������ ���� ���� ä�� �����͸� �Ǿ� ���� �� �ִ�</li>
		<li>�����ʹ� request�� body��� ���� �Ƿ� ��������</li>
	</ul>
	
	<form action="/chap02/formTest" method="POST">
	<table>
		<tr>
		<th>name</th>
		<td><input type="text" name="user-name"></td>
		</tr> 
		<tr>
		<th>age</th>
		<td><input type="number" name="user-age"></td>
		</tr> 
		<tr>
		<th>password</th>
		<td><input type="password" name="user-password"></td>
		</tr>
		<tr>
		<th>color</th>
		<td><input type="color" name="my-color"></td>
		</tr>
		<tr>
			<td><input type="submit"></td> <!-- ������ �����ϱ� -->
			<td><input type="reset"></td> <!-- �Է��ߴ� ���� ��� ����ϱ� -->
		</tr>
	</table>
	</form>
	
	<h3># ��ũ�� GET ��� ��û ������</h3>
	
	<p>�ּҸ� ���� �����ϴ°͸����ε� GET��� �Ķ���͸� �Ǿ�� �� �ִ�..<
	
	<a href="/chap02/formTest?user-name=kim&user-age=20">��ũ</a>
</body>
</html>