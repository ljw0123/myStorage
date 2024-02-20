<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>페이지 이동</h3>
	<form action="object_ok.jsp" name="joinForm" id="joinForm">
		<fieldset>
			<legend>개인정보</legend>
			<input type="text" name="username" id="username">
			<input type="date" name="userbirth" id="userbirth">
			<input type="button" value="확인" onclick="sendit();">
		</fieldset>
	</form>
	
	<script>
		function sendit(){
			//validation check
			let joinForm = document.joinForm;
			let nameTag = joinForm.username;
			let birthTag = joinForm.userbirth;
			
			
			//이름 항복에 값이 있는지
			if(nameTag.value == ""){
				alert("이름을 입력하세요");
				nameTag.focus();
				return false;
			}
			//생일 항목에 값이 있는지
			if(birthTag.value == ""){
				alert("생일을 입력하세요");
				birthTag.focus();
				return false;
			}
			//object_ok.jsp로 submit
			joinForm.submit();
			
			
			/* var username = document.getElementById("username").value.trim();
			var userbirth = document.getElementById("userbirth").value.trim();
			if(username === "") {
				alert("이름을 입력하세요.");
				return;
			}
			if(userbirth === "") {
				alert("생일을 입력하세요.");
				return;
			}
			
			document.getElementById("joinForm").submit(); */
		}
	</script>
</body>
</html>