<%@page import="kr.co.jsp.scores.model.Scores"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jsp.scores.model.ScoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%  /*   
	  	ScoreDAO dao = ScoreDAO.getInstance();
    	List<Scores> scoreList = dao.list();
    	 */
    	 
    	List<Scores> scoreList = ScoreDAO.getInstance().list();
    	
    	
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>학생들의 전체 성적 조회</h1>
	
	<form action="search.jsp">
		검색: <input type="text" name="keyword" placeholder="검색할 이름 입력">
		<input type="submit" value="확인">
	</form>
	
	
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>총점</th>
				<th>평균</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>
			<% for(Scores s : scoreList) { %>
				<tr>
					<td><%=s.getName() %></td>
					<td><%=s.getKor() %></td>
					<td><%=s.getEng() %></td>
					<td><%=s.getMath() %></td>
					<td><%=s.getTotal() %></td>
					<td><%=s.getAverage() %></td>
					<td>
						<a href="delete.jsp?id=<%=s.getId()%>">삭제</a>
					</td>
				</tr>	
			<% } %>
		</tbody>
	</table>
	<br>
	<a href="insert_form.jsp">새로운 점수 등록하기</a>

</body>
</html>














