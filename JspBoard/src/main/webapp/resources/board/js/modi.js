const modiConfirmBtn = document.querySelector('#modiConfirmBtn');
const modiForm = document.querySelector('#modiForm');

const validateForm = () => {
	if (modiForm.elements.board_title.value == '') {
		alert('������ ������ϴ�!');
		return false;
	} else if (modiForm.elements.board_content.value.trim() == '') {
		alert('������ ������ϴ�!');
		return false;
	}
	return true;
};

// �� ������ submit�� �߻��ϴ� ��� ����Ǵ� �̺�Ʈ
modiForm.addEventListener('submit', (e) => {
	if (!validateForm()) {
		e.preventDefault(); // �⺻ ������ ���´� (submit �ߴ�)
	}
});

// ��ư�� ������ �� �̺�Ʈ
modiConfirmBtn.addEventListener('click', (e) => {
	
	console.dir(modiForm);
	
	// form.elements: form�� �ҼӵǾ� �ִ� ��ҵ�, name�� ���� �� ��Ҹ� ������ �� �ִ�
	console.log(modiForm.elements);
	console.log(modiForm.elements.board_title);
	
	validateForm() ? modiForm.submit() : 0; // form ��Ҹ� Js���� ���� submit �� �� �ִ�

});