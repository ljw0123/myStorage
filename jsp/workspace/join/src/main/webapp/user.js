function sendit(){
    let userid = document.getElementsByName("userid")[0].value;
    let userpw = document.getElementsByName("userpw")[0].value;
    let userpw_re = document.getElementsByName("userpw_re")[0].value;
    let username = document.getElementsByName("username")[0].value;
    let usergender = document.getElementsByName("usergender")[0].value;
    let userphone = document.getElementsByName("userphone")[0].value;
    /*
    let frm = document.joinFrom;
    let userid = frm.userid;
    .
    .
    .
    */

    if(userid === "") {
        alert("아이디를 입력해주세요.");
        return false;
    }
    if(userid.length < 5 || userid.length > 15) {
        alert("아이디는 5자리 이상, 16자리 미만으로 작성해주세요.");
        return false;
    }
    if(userpw === "") {
        alert("비밀번호를 입력해주세요.");
        return false;
    }
    if(userpw.length < 8) {
        alert("비밀번호는 8자리 이상으로 입력하세요.");
        return false;
    }
    if(userpw_re !== userpw) {
        alert("비밀번호와 비밀번호확인이 일치하지 않습니다.");
        return false;
    }
    if(username === "") {
        alert("이름을 입력해주세요.");
        return false;
    }
    if(userphone === "") {
        alert("휴대폰번호를 입력해주세요.");
        return false;
    }

    document.joinForm.submit();
}

// 로그인 validation check
function loginit(){
	let frm = document.frm;
	let userid = frm.userid;
	let userpw = frm.userpw;

	if(userid.value == "") {
        alert("아이디를 입력해주세요.");
        userid.focus();
        return false;
    }
    if(userpw.value == "") {
        alert("비밀번호를 입력해주세요.");
        userpw.focus();
        return false;
    }
}