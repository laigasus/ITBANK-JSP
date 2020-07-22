<%@page import="user.UserRepository"%>
<%@page import="user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
    	/*
    	package user.User
    	- 사용자의 입력값을 받아서 객체로 만들수 있는 클래스를 하나 제작하세요. (은닉)
    	멤버변수명은 파라미터 변수명과 일치하도록 제작하세요.
    	클래스 작성 후 실제 객체를 생성해서 사용자의 입력값을 객체의 멤버변수에
    	초기화를 해 보세요.
    	*/
    	
/*     	String id = request.getParameter("account");
    	String pw = request.getParameter("password");
    	String name = request.getParameter("name");
    	String nick = request.getParameter("nickname");
 */    	
    	/* User user = new User();
    	user.setAccount(id);
    	user.setPassword(pw);
    	user.setName(name);
    	user.setNickname(nick); 
    	
    	User user = new User(id, pw, name, nick);*/
    	
    	User user = new User(
    			request.getParameter("account"),
    			request.getParameter("password"),
    			request.getParameter("name"),
    			request.getParameter("nickname")
    			);
    	
    	UserRepository.save(user);
    	UserRepository.showUsers();
    	
    	response.sendRedirect("register_result.jsp");
    	
    	
    %>
    
    
    
    
    
    
    
    
    
    
    
    
    