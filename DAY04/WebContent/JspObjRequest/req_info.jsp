<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.getRequestURL();
	String reqUrl = request.getRequestURI();
	String reqUri = request.getRequestURI();
	String protocol = request.getProtocol();
	String conPath=request.getContextPath();
	String serverName=request.getServerName();
	String serverPort=request.getRemoteAddr();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
#요청 URL: <%=reqUrl %><br>
#요청 URI: <%=reqUri %><br>
#요청 프로토콜: <%=protocol%><br>
#요청 컨텍스트 루트 경로: <%=conPath%><br>
#서버 이름: <%=serverName%><br>
#포트 번호: <%=serverPort%><br>
#요청 ip 주소: <%%><br>
</p>

</body>
</html>