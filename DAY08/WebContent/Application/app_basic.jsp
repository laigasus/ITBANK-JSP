<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int count = 0;

	if(application.getAttribute("visit")!=null){
		count=(Integer)application.getAttribute("visit");
	}
	count++;
	
	application.setAttribute("visit", count);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>