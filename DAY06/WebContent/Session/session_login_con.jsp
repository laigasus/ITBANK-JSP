<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	request.setCharacterEncoding("utf-8");
    
    
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = request.getParameter("nick");
    	
    	
    	if(id.equals("abc1234") && pw.equals("aaa1111")){
    		session.setAttribute("user_id", id);
    		session.setAttribute("user_nick", nick);
    		response.sendRedirect("session_welcome.jsp");
    	} else { %>
    	
    	
    	<%--
    		* HTML 내부에 자바스크립트 코드를 사용하려면 <script>태그를 사용합니다.
    		- JS 내장함수 alert()는 브라우저에 경고창을 띄워줍니다.
    		    alert()괄호 안에 경고창에 띄우고 싶은 문구를 작성하시면 됩니다.
    		- JS 내장 객체 history가 제공하는 메서드 back()은 뒤로가기 기능을 수행합니다.
    		- location.href="원하는 URL" -> sendRedirect()와 비슷한 기능 수행.
    	--%>
    	
    	<script>
    		alert("로그인에 실패했습니다.");
    		//history.back();
    		location.href="session_login.jsp";
    	</script>
    	
    	<%} %>
    	