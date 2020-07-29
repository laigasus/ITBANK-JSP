<%@page import="java.util.List"%>
<%@page import="kr.co.jsp.scores.model.ScoreDAO"%>
<%@page import="kr.co.jsp.scores.model.Scores"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String keyword = "%"+request.getParameter("keyword")+"%";
/*
DAO의 search메서드를 완성해서, 메서드 호출 후 검색 결과를 리스트로 받아서 
body태그 내부에 검색 결과를 출력해주세요(테이블 형식으로)
public List<Scores>search(???){}
테이블은 score_list에 있는 테이블을 재활용하세요
*/

ScoreDAO dao = ScoreDAO.getInstance();
List<Scores> scoreList = ScoreDAO.getInstance().search();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>