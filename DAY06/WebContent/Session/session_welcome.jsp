<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	/* 
    	1.로그인하지 않는 사용자가 주소창에 이 페이지의 url을 직접 적고 들어왔을 경우 로그인창으로 돌려보내는 코드를 작성하세요.
    	(조건문을 사용하여 로그인 성공 시 생성되는 세션이 있는지를 확인.)
    	
    	2. 로그인한 회원 아이디와 별명을 통해 "nick(id)님 환영합니다!"를 출력하세요.
    	
    	3. a태그로 로그인창으로 돌아가는 링크와 request폴더에 앨범 선택 페이지로 갈 수 있는 링크 2개를 작성하세요.
    	
    	4. 로그인 폼 페이지에서 로그인 세션이 존재하는지를 확인하여 이미 로그인 중인 사용자와 그렇지 않은 사용자가 서로 다른 화면을 볼 수 있도록 작성해 주세요.
    	(로그인 성공 -> 이미 로그인 중이라는 화면, 로그인 x -> 폼)
    	*/
    	
    	/* String id = (String)session.getAttribute("user_id");
    	String nick = (String)session.getAttribute("user_nick");
    	
    	if(id == null){
    		response.sendRedirect("seesion_login.jsp");
    	} */
    	
    	if(session.getAttribute("user_id") == null){
    		response.sendRedirect("session_login.jsp");
    	}
    	
    	String id = (String)session.getAttribute("user_id");
    	String nick = (String)session.getAttribute("user_nick");
    	
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3><%=nick %>(<%=id%>) 님 환영합니다.</h3> <br>
	
	<a href="session_login.jsp">로그인 화면으로 돌아가기</a> <br>
	<a href="../JspObjRequest/req_album.jsp">앨범 선택 페이지</a>
	<a href="session_logout.jsp">로그아웃하기</a>
	
	
	
	
	
</body>
</html>