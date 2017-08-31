/**
 * 여러줄 주석
 */
// 한줄 주석
/*function hunter(){
	alert('반갑네 여행자여.');
}
function priest(){
	alert('안녕하세요!')
}
function rogue(){
	alert('반가워.')
}
*/

function greeting(cl) {
//	consol.log("greeting 함수 시작");

	if(cl=='h') {
		document.getElementById("result").innerHTML = "반갑네 여행자여";
	}
	else if(cl=='p') {
		document.getElementById("result").innerHTML = "안녕하세요!";
	}
	else if(cl=='r') {
		document.getElementById("result").innerHTML = "반가워.";
	}
	
//	consol.log("greeting 함수 끝");
}