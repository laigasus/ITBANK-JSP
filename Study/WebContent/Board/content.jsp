<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@page import="kr.co.jsp.board.model.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int bId = Integer.parseInt(request.getParameter("bId"));
//파라미터 값을 얻어와서 selectOne()호출하여 객체 받아오기
Board article = BoardDAO.getInstance().selectOne(bId);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=article.getBoardId()%>번 게시물 내용
	</h1>
	<p>
		# 작성자:
		<%=article.getWriter()%>
		<br>
		# 제목:
		<%=article.getTitle()%>
		<br>
		# 내용:<br>
		<textarea rows="5" readonly>
		<%=article.getContent()%>
		</textarea>
		<br>
		# 작성일:
		<%=article.getCreateAt()%>
	</p>
	<a href="list.jsp">목록 보기</a>
	<a href="modified.jsp?bId=<%=article.getBoardId()%>">수정하기</a>
	<a href="delete.jsp?bId=<%=article.getBoardId()%>">삭제하기</a>

</body>
</html>