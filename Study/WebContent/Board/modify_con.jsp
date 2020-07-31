<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@page import="kr.co.jsp.board.model.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/*
수정에 필요한 파라미터 값을 불러오서 그것을 토대로 Board 객체를 생성하세요
BoardDAO의 update()를 이용하여 수정한 객체를 DB에 적용시켜 주시고,
결과가 성공이라면 해당 글 상세보기 페이지로 이동시켜 주세요. (sendRedirect)
결과가 실패라면 list.jsp로 리다이렉팅 해주세요
*/
%>

<%
	request.setCharacterEncoding("utf-8");
	
	Board article = new Board();
	
	article.setBoardId(Integer.parseInt(request.getParameter("bId")));
	article.setWriter(request.getParameter("writer"));
	article.setTitle(request.getParameter("title"));
	article.setContent(request.getParameter("content"));
	
	
	if (BoardDAO.getInstance().update(article)) {
		response.sendRedirect("content.jsp?bId="+article.getBoardId());
	} else {
		response.sendRedirect("list.jsp");
	}
%>