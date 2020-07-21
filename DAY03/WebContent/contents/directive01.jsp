<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
    	# directive (지시자)
    	 - jsp페이지의 전체적인 속성 등을 지정할 때 사용합니다.
    	 - page: 페이지에 대한 정보를 지정. (ex. 문서의 타입, 임포트, 인코딩 등...)
    	 - include: jsp 페이지의 특정 영역에 다른 문서를 포함시킵니다.
     --%>
     
    <%
    	Date date = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");	// 날짜 서식 문자
    	sdf.format(date);	// 리턴값 String 형태
    	String dayInfo = sdf.format(date);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= date %> <br>
	오늘은 <%=dayInfo %>입니다.
	
</body>
</html>