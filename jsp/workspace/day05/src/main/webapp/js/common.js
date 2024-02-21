/**
 * 
 */
$(document).ready(function(){
    $("#joinButton").click(function(){
        let userid = $("#userid");
        let userpw = $("#userpw");
        let username = $("#username");
        let userphone = $("#userphone");
        
        //아이디 빈값 체크 -> alert "아이디를 입력하세요!"
        if(userid.val() === ""){
            alert("아이디를 입력하세요");
            userid.focus();
            return false;
        }
        //비밀번호 빈값 체크 -> alert "비밀번호를 입력하세요!"
        //비밀번호 8자리 이상 체크 -> alert "비밀번호를 8자리 이상 입력하세요!"
        if(userpw.val() === ""){
            alert("비밀번호를 입력하세요");
            userpw.focus();
            return false;
        } else if(userpw.val().length < 8) {
            alert("비밀번호를 8자리 이상 입력하세요!");
            userpw.focus();
            return false;
        }
        //이름 빈값 체크 -> 이름을 입력하세요
        if(username.val() === ""){
            alert("이름을 입력하세요");
            username.focus();
            return false;
        }
        //휴대폰번호 빈값 체크 -> 휴대폰 번호를 입력하세요
        if(userphone.val() === ""){
            alert("휴대폰 번호를 입력하세요");
            userphone.focus();
            return false;
        }
        $("#joinForm").submit();
    });
});