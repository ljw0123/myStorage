<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<!-- "name"의 key값으로 "value"에 담긴 값이 전달 -->
	<jsp:forward page="param_result.jsp">
		<jsp:param value="user" name="user_id"/>
		<jsp:param value="김자바" name="username"/>
	</jsp:forward>
	
</body>
</html>