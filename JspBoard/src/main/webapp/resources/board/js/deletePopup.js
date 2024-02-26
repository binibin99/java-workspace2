const out = document.getElementById('out');
const out2 = document.getElementById('out2');
const inputPassword = document.getElementById('inputPassword');
const hiddenPassword = opener.document.getElementById('hiddenPassword');
const delForm = opener.document.getElementById('delForm');
const confirmBtn = document.getElementById('confirmBtn');

out.innerText = '�����Ϸ��� ���� ��ȣ: ' + delForm.elements.board_id.value;
out2.innerText = '�����Ϸ��� ���� ��� �ؽ���: ' + delForm.elements.check_password.value;

const getHashedPassword = password => sha256(password).toUpperCase();

confirmBtn.addEventListener('click', (e) => {

	const hashedPassword = getHashedPassword(inputPassword.value);

	if (hashedPassword === delForm.elements.check_password.value) {

		hiddenPassword.value = hashedPassword;
		delForm.submit();
		window.close();
	} else {
		alert('��й�ȣ�� Ʋ�Ƚ��ϴ�!');
	}
});