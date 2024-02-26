const modiBtn = document.querySelector('#modiBtn');
const delBtn = document.querySelector('#delBtn');
const delBtn2 = document.querySelector('#delBtn2');
const delForm = document.querySelector('#delForm');
const hiddenPassword = document.querySelector('#hiddenPassword');
const inputPassword = document.querySelector('#inputPassword');

const getHashedPassword = password => sha256(password).toUpperCase();
const checkHash = () => boardPassword === getHashedPassword(inputPassword.value);

modiBtn.addEventListener('click', (e) => {
	if (checkHash()) {
		location.href = './modify?board_id=' + board_id;
	} else {
		alert('��й�ȣ�� Ʋ�Ƚ��ϴ�');
	}
});

delBtn.addEventListener('click', (e) => {
	if (checkHash()) {
		hiddenPassword.value = getHashedPassword(inputPassword.value);
		delForm.submit();
	} else {
		alert('��й�ȣ�� Ʋ�Ƚ��ϴ�');
	}
});

delBtn2.addEventListener('click', (e) => {
	const popup = open('./delete/open', '_blank', 'width=500,height=350');
});