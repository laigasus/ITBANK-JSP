<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="age" value="${param.age }" />
	이름: ${param.name} 나이 : ${param.age}
	<c:choose>
		<c:when test="${age>=20}">
		<b>당신은 성인 입니다</b>
		</c:when>
		<c:when test="${age>=17}">
		<b>당신은 고딩 입니다</b>
		</c:when>
		<c:when test="${age>=14}">
		<b>당신은 중딩 입니다</b>
		</c:when>
		<c:otherwise>
		<b>미진학 아동입니다</b>
		</c:otherwise>
		

	</c:choose>

</body>
</html>