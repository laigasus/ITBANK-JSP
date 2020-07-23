<%@page import="kr.co.jsp.user.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
       request.setCharacterEncoding("utf-8");
    
       /* String id = request.getParameter("id");
       String pw = request.getParameter("pw");
       String name = request.getParameter("name");
       String email = request.getParameter("email"); */
       
       //UserBean user = new UserBean(id, pw, name, email);
       
       //request.setAttribute("user", user);
    %>
    <%--
       *useBean태그로 객체의 이름, 경로, 범위를 지정해 주시고
       setter역할을 하는 setProperty, getter역할을 하는 getProperty 속성을 이용하여
       객체에 데이터를 저장하고 참조합니다.
     --%>
    
    <%--
       id - jsp페이지에서 자바빈 객체에 접근할 때 사용할 이름을 지정.
       class - 자바빈 클래스 존재 경로를 완전한 경로로 입력.
       scope - 자바빈 객체를 저장할 영역 지정.
     --%>
    
    <jsp:useBean id="user" class="kr.co.jsp.user.UserBean" scope="request" />
    
    <%-- name="자바빈 객체 id" property="멤버변수명" value="실제 저장할 값 --%>
<%--
	<jsp:setProperty name="user" property="id" value="<%=id %>"/>
    <jsp:setProperty name="user" property="pw" value="<%=pw %>"/>
    <jsp:setProperty name="user" property="name" value="<%=name %>"/>
    <jsp:setProperty name="user" property="email" value="<%=email %>"/>
--%>    
    
    <%--
       - 파라미터 변수명과 자바빈 클래스의 멤버변수명이 서로 일치한다면
        액션태그 setProperty의 속성 property의 값을 *로 지정하면
        자동으로 파라미터값을 읽어서 자바빈 클래스에 저장합니다.
    --%>
    
    <jsp:setProperty name="user" property="*"/>
    
    
    <jsp:forward page="bean_use.jsp" />    
    
    
    
    
    
    
    
    
    
    
    
    
    
    