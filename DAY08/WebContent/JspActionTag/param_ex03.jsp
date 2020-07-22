<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
String email=request.getParameter("email");
String grade=request.getParameter("grade");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
# 이름:	<%=name %><br>
# 이메일:	<%=email%><br>
# 등급:	<%=grade %><br>

</body>
</html>