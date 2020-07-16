<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String gender = request.getParameter("gender");
String[] hobby = request.getParameterValues("hobby");
String region = request.getParameter("region");
String introduce = request.getParameter("introduce");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		ID:
		<%=id %></div>
	<div>
		PW:
		<%=pw %></div>
	<div>
		성별:
		<%=gender %></div>
	<div>
		취미:
		<%=Arrays.toString(hobby)%></div>
	<div>
		지역:
		<%=region %></div>
	<div>
		소개:
		<%=introduce %></div>
</body>
</html>