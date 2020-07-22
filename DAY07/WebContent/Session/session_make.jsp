<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/* 
    	- 세션은 쿠키와 마찬가지로 http통신 데이터를 유지하기 위한 수단으로
    	 사용합니다.
    	- 세션에 데이터를 저장할 때는 JSP 내장객체 session이 제공하는
    	setAttribute() 메서드를 사용합니다.
    	- 해당 메서드에 첫번째 매개값으로 세션의 이름을 정하고, 두 번째 매개값으로
    	세션에 저장할 값을 정해줍니다.
    	*/
    	
    	session.setAttribute("nickname", "홍길동");
    	session.setAttribute("hobby", new String[] {"축구", "독서", "게임"});

    %>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session_check.jsp">세션 데이터 확인하기.</a>

</body>
</html>











