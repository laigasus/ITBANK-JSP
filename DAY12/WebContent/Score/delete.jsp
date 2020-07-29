<%@page import="kr.co.jsp.scores.model.Scores"%>
<%@page import="kr.co.jsp.scores.model.ScoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/*
파라미터 데이터를 얻어오신 후 DAO에게 삭제 요청 해 주시면 됩니다
(주소값 받아와서 메서드 호출)
public bolean delete(???) <-DAO 클래스에 선언하세요
삭제가 완료되면 "score_list.jsp로 이동
삭제가 실패해도"score_list.jsp로 이동
삭제가 성공했는지. 실패했는지의 여부를 script 태그를 이용하여 경고창으로 출력해주세요
location.href="URL"로 이동시키기

*/

request.setCharacterEncoding("utf-8");
Scores scores = new Scores();
int id = Integer.parseInt(request.getParameter("id"));

ScoreDAO dao = ScoreDAO.getInstance();
boolean flag = dao.delete(id);
%>
<%
	if (flag) {
%>
<script>
	alert("삭제되었습니다");

	location.href = "score_list.jsp";
</script>

<%
	} else {
%>
<script>
	alert("실패하였습니다");
	location.href = "score_list.jsp";
</script>
<%
	}
%>
