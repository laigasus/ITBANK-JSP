<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//int t = 10; 자바에서 사용하는 주석 가능
		/*
			여러 줄 주석입니다.
			아아아아아
		*/
		// 내부에 <!-- --> html주석 사용x.
	%>
	
	<!-- HTML 주석입니다.! html주석은 '페이지 소스보기'에서 보여지지만 JSP주석은 보여지지 않습니다.-->
	여기는 주석이 아니에요!~ <br>
	
	<%-- JSP주석입니다. --%>
	여기도 주석이 아니에요!~ <br>
	
	
</body>
</html>