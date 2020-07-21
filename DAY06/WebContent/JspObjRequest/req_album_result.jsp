<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
iframe {
	width: 605;
	height: 340;
	frameborder: 0;
}
</style>
</head>
<body>
	<% if (title.equals("IU")) {%>
	<div align="center">
		<h2>선택하신 앨범 정보</h2>
		<p>당신이 선택하신 앨범은 호텔델루나입니다</p>
		<hr>
		<h3>타이틀 곡 뮤직 비디오</h3>
		<iframe src="https://www.youtube.com/embed/ANfUH55XtbU?autoplay=1"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>

	<%} else if (title.equals("JJS")) {%>
	<div align="center">
		<h2>선택하신 앨범 정보</h2>
		<p>당신이 선택하신 앨범은 슬기로운 의사생활입니다</p>
		<hr>
		<h3>타이틀 곡 뮤직 비디오</h3>
		<iframe src="https://www.youtube.com/embed/g8oRKbYrZ6Q?autoplay=1"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
	<%}%>
</body>
</html>