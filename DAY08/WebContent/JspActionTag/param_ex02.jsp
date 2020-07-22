<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:forward page="param_ex03.jsp">
	<jsp:param name="grade" value="준회원" />
</jsp:forward>
<%--forward 가 아닌 sendRedirect를 이용하면 데이터가 모두 null이다--%>
