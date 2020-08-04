<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		data1:<%=session.getAttribute("data1")%><br> data2:<%=session.getAttribute("data2")%><br>
	</div>
	<hr>
	<%--
		EL에서 데이터를 참조할때  scope 영역을 명시하지 않는다면 
		page->request->session-> application순서대로 검색하여 찾아내 표현합니다
	 --%>
	<div>
		data1:${data1}<br>data2:${data2}<br>
		data2:${applicationScope.data2}<br>
	</div>
</body>
</html>