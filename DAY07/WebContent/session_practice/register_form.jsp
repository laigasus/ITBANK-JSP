<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>회원 가입 양식</h1>

	<form action="register_controller.jsp" method="post">
		<p>
			# 아이디: <input type="text" name="account" placeholder="아이디"> <br>
			# 비밀번호: <input type="password" name="password" placeholder="비밀번호">
			<br> # 이름: <input type="text" name="name" placeholder="이름">
			<br> # 별명: <input type="text" name="nickname" placeholder="별명">
			<br>
			<button type="submit">회원가입</button>
		</p>
	</form>
</body>
</html>