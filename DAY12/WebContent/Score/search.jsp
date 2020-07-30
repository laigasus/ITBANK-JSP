<%@page import="kr.co.jsp.scores.model.ScoreDAO"%>
<%@page import="kr.co.jsp.scores.model.Scores"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String keyword = "%" + request.getParameter("keyword") + "%";
    /*
    	DAO의 search메서드를 완성해서, 메서드 호출 후 검색 결과를 리스트로 받아서
    	body태그 내부에 검색 결과를 출력해 주세요. (테이블 형식으로)
    	public List<Scores> search(???) {
    	
    }
    	테이블은 score_list에 있는 테이블을 재활용하세요.
    */
    
    List<Scores> scoreList = ScoreDAO.getInstance().search(keyword);
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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