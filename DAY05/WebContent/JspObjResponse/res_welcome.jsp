<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
//sendRedirect()의 성질때문에 NULL로 보이게 될 것이다=쿠키를 사용해야한다

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=id %>회원님 반갑습니다!!!
<a href="res_login_form.jsp">로그아웃</a>
</body>
</html>