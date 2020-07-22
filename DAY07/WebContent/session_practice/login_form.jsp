<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="login_controller.jsp" method="post">
		<p>
			<input type="text" name="account" placeholder="아이디"> <br>
			<input type="password" name="password" placeholder="비밀번호"> <br>
			<input type="submit" value="로그인">
			<button type="button" onclick="location.href='register_form.jsp'">회원가입</button>
			<%-- onclick속성을 사용하면 자바스크립트 문법을 태그 내에 배치할 수 있습니다.
				location.href="이동시킬 URL" -> == sendRedirect(URL)
			 --%>
		</p>
	</form>

</body>
</html>













