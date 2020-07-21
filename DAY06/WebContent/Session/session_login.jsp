<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<%
    	if(session.getAttribute("user_id") != null){
    		String nick = (String) session.getAttribute("user_nick");
    %>

	<p>
		<%=nick %>님이 현재 로그인 중입니다.<br>
		<a href="session_welcome.jsp">웰컴 페이지로 돌아가기</a>
	</p>
	
	
	<%} else{ %>
	<form action="session_login_con.jsp" method="post"> <br>
		<input type="text" name="id" size="10" placeholder="ID" /> <br>
		<input type="password" name="pw" size="10" placeholder="PW" /> <br>
		<input type="text" name="nick" size="10" placeholder="별명" /> <br>
		<input type="submit" value="로그인" />
	</form>
	<%} %> 
</body>
</html>