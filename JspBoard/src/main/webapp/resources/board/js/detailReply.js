const replyContent = document.querySelector('#replyContent');
const replyForm = document.querySelector('#replyForm');
const replyWriter = document.querySelector('#replyWriter');
const replyPassword = document.querySelector('#replyPassword');

replyContent.addEventListener('keydown', (e) => {
	console.log(e);
	
	if (e.keyCode === 13) {
		if(!e.shiftKey) {
			e.preventDefault();
			if (replyWriter.value === '') {
				alert('�۾��̰� ����ֽ��ϴ�');
				return;
			} else if (replyPassword.value.trim() === '' || replyPassword.value.length < 5) {
				alert('��й�ȣ�� 4���� �̻��̾�� �մϴ�.');
				return;
			}
			replyForm.submit();			
		} else {
			replyContent.innerText += '\n';
		}
	}
	
});