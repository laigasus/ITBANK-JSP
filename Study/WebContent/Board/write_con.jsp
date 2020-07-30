<%@page import="kr.co.jsp.board.model.Board"%>
<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@page import="kr.co.jsp.board.model.IBoardDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/*
1. 사용자의 입력값을 얻어오새요, 그리고 객체로 포장하세요
2. DAO클래스의 주소값을 받아 DB에 내용을 삽입하는 메서드를 호출하세요
3. 글 등록 성공시 list.jsp로 리다이렉팅.
4. 글 등록 실패시 write.jsp로 리다이렉팅 해주세요
*/
%>

<%
	request.setCharacterEncoding("utf-8");
	
	Board article = new Board();
	
	article.setWriter(request.getParameter("writer"));
	article.setTitle(request.getParameter("title"));
	article.setContent(request.getParameter("content"));
	
	if (BoardDAO.getInstance().insert(article)) {
		response.sendRedirect("list.jsp");
	} else {
		response.sendRedirect("write.jsp");
	}
%>
