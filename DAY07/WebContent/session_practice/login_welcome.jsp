<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.UserRepository"%>
<%@page import="user.User"%>
<% 
User user=(User)session.getAttribute("login");

String id = (String)session.getAttribute("account");
String nick = (String)session.getAttribute("nickname");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(user!= null){%>
	<h3><%=nick %>(<%=id%>) 님 환영합니다.</h3><br>
	<a href="login_form.jsp">로그인 화면으로 돌아가기</a><br>
	<a href="../JspObjRequest/req_album.jsp">앨범 선택 페이지</a>
	<a href="session_logout.jsp">로그아웃하기</a>
	<a href="session_delete.jsp">회원 탈퇴하기</a>
<%}else{
	response.sendRedirect("login_form.jsp");
} %>
	
	

	
	
	
	
	
	
</body>
</html>
</html>