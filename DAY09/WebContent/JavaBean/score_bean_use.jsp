<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	score_bean_make에서 전송된 ScoreBean객체를 활용하여
    	5가지 데이터를 브라우저에 출력하세요. (getProperty)
     --%>
    
<jsp:useBean id="score" class="kr.co.jsp.score.ScoreBean" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	# 국어점수: <jsp:getProperty name="score" property="kor"/> <br>
	# 영어점수: <jsp:getProperty name="score" property="eng"/> <br>
	# 수학점수: <jsp:getProperty name="score" property="math"/> <br>
	<hr>
	# 총점: <jsp:getProperty name="score" property="total"/> <br>
	# 평균: <jsp:getProperty name="score" property="average"/> <br>

</body>
</html>














