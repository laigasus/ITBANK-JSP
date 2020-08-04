<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf8");
%>
<jsp:useBean id="user" class="kr.co.jsp.user.model.UserVO" />
<jsp:setProperty name="user" property="*" />

<%
	request.setAttribute("user", user);
%>

<jsp:forward page="el_obj03.jsp" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
