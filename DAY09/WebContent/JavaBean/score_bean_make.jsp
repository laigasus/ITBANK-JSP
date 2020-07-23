<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%--
액션태그를 사용하여 coreBean의 객체를 request 범위로 생성하시고
setProperty를 사용하여 객체 내부에 파라미터 데이터를 세팅한 뒤,
파라미터 데이터 3개와 총점, 평균을 구하여 총 5개의 데이터를 모두 객체에 담은 뒤
score_bean_use.jsp로 전송하세요
--%>
<%
	request.setCharacterEncoding("utf-8");
%>

    <jsp:useBean id="score" class="kr.co.jsp.score.ScoreBean" scope="request" />
    
    <jsp:setProperty name="score" property="*"/>
    
<%
    int total =  score.getKor()+score.getEng()+score.getMath();
    double avg=total/3.0;
    avg=Math.round(avg*100)/100.0;
%>

	<jsp:setProperty name="score" property="total" value="<%=total %>"/>
	<jsp:setProperty name="score" property="avg" value="<%=avg %>"/>
     
    <jsp:forward page="score_bean_use.jsp" />    