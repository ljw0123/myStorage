<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>joinview</title>

</head>
<body>
    <h3>회원가입 폼</h3>
    <form action="join" method="post" id="joinForm">
        아이디 <input type="text" name="userid" id="userid"><br/>
        패스워드 <input type="password" name="userpw" id="userpw"><br/>
        이름 <input type="text" name="username" id="username"><br/>
        핸드폰번호 <input type="text" name="userphone" id="userphone"><br/>
        <br/>
        <input type="button" value="회원가입" id="joinButton">
    </form>
    <!--  JS파일 include -->
    <script type="text/javascript" src="../js/common.js"></script>
</body>
</html>
