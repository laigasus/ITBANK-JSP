<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
/* 	-생성된 login 쿠키를 검색하여 쿠키가 이미 존재한다면
	로그인 폼 대신 브라우져에 '이미 로그인 한 사용자입니다'를 출력 후 
	welcome 페이지로 갈 수 있는 링크를 제공하세요  */
	
	Cookie[] cookies=request.getCookies();
	boolean flag=false;
	String userId="";
	if(cookies!=null)
	{
		for(Cookie c : cookies){
			if(c.getName().equals("login")){
				flag=true;
				break;
			}
			if(c.getName().equals("remember_id")){
				userId=c.getValue();
			}
		}
	}
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%if(!flag){%>
	<form action="cookie_login_con.jsp" method="post">
		<input type="text" name="id" size="10" placeholder="ID" value="<%=userId%>"><br>
		<input type="password" name="pw" size="10" placeholder="PW"><br><br>
		<input type="checkbox" name="id_remember" value="yes"><small>ID저장</small>
		<input type="submit" value="확인"><br>
	</form>
<%} else{%>
	<h2>이미 로그인한 사용자입니다</h2>
	<a href="cookie_welcome.jsp">welcome 페이지로 이동</a>
<%}%>
</body>
</html>