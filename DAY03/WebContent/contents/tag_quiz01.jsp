<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/*
ArrayList를 생성해서 1~45까지의 난수 6개를 리스트에 저장하세요
중복이 발생하면 안됩니다. 중복 방지 로직을 세워서 난수를 리스트에 삽입후 
body태그에 리스트 내부의 값을 출력해주세요
*/
ArrayList<Integer> arr1 = new ArrayList<>();
ArrayList<Integer> arr2 = new ArrayList<>();

double value = Math.random();
int random;

for(int i=0; i<6; i++)
{
	random = (int) (value * 45 + 1);
	
	arr1.add(random);
}

for(int i=0; i<arr1.size(); i++)
{
	if(arr2.contains(arr1.get(i)))
		arr2.add(arr1.get(i));
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>