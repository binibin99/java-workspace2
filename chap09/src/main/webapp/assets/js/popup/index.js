const btn1 = document.getElementById('btn1');

btn1.addEventListener('click', (e) => {
	// window.open(url, target) : 새 창을 여는 자바스크립트 함수
	open('./popup.jsp', '_blank', 'width=300,height=300,top=100,left=100');
});