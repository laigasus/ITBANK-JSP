<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%--
*jsp action tag 사용법
<jsp:forward 속성=값, 속성=값....></jsp:forward>
-닫은 태그는 태그 내부에 추가적으로 종속되어있는 태그나 텍스트가 없다면 
닫는 태그를 생락하고 열린 태그의 끝부분을 />로 마감할 수 있습니다    
--%>

<jsp:forward page="forward_ex02.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 forward_ex01 페이지 입니다</h3>
	<p>그런데, 포워드 기능 때문에 아마 이 메세지를 못 보실 거에요~</p>
	<p>sendRedirect와 같아 보이지만 페이지 이동이 안되어있는 상태이다. 그래도 ex01이다</p>
</body>
</html>