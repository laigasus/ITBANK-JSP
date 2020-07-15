<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/*
ArrayList를 생성해서 1~45까지의 난수 6개를 리스트에 저장하세요
중복이 발생하면 안됩니다. 중복 방지 로직을 세워서 난수를 리스트에 삽입후 
body태그에 리스트 내부의 값을 출력해주세요
*/
HashSet<Integer> set = new HashSet<>();
while (set.size() < 6) {
	Double d = Math.random() * 45 + 1;
	set.add(d.intValue());
}
ArrayList<Integer> list = new ArrayList<>(set);
Collections.sort(list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%out.print(list); %>
</body>
</html>