<%@page import="kr.co.jsp.board.model.Board"%>
<%@page import="kr.co.jsp.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//사용자에게 본인이 썼던 글을 그비노적으로 제공을 하고
//수정할 수 있는 촘을 제공해야 하기 떄문에 
//selectOne()메서드를 호출하여 글 번호에 해당하는 모든 클 정보를 얻어옵니다
int bId = Integer.parseInt(request.getParameter("bId"));
Board article = BoardDAO.getInstance().selectOne(bId);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=article.getBoardId()%>번 게시물 내용 수정
	</h1>

	<form action="modify_con.jsp" method="post">
	<%--hidden type은 브라우저에 input 창을 노출하지 않고 데이터를 전송할때 사용하는 타입입니다 --%>
	<input type="hidden" name="bId" value="<%=article.getBoardId() %>">
		<p>
		# 작성자: <input type="text" name="writer" value="<%=article.getWriter()%>"/><br>
		# 제목: <input type="text" name="title" value="<%=article.getTitle()%>"/><br>
		# 내용: <br>
		<textarea rows="5" name="content">
		<%=article.getContent()%>
		</textarea><br>
		<input type="submit" value="수정">
		</p>
	</form>

</body>
</html>