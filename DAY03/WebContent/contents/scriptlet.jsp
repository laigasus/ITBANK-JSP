<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--
		# Scriptlet (스키립틀릿)
		 - 지역변수 및 메서드 내부의 코드를 작성하는 태그
	-->
	
	
	<% for(int i=1; i<=5; i++){ %>
	<h2>이클립스 내부에서 jsp 문서 작성하기!!!</h2>
	<p> <!-- p태그는 문단을 구성하는 태그입니다. (paragraph) -->
		안녕하세요. 오늘은 2020년 7월 14일 입니다. <br>
		지금은 jsp문서를 작성중입니다!
	</p>
	<% } %>
	
	<hr>
	
	<h2>구구단 2단</h2>
	<% for(int hang=1; hang<=9; hang++) { 
		// out.print메서드는 브라우저에 바로 출력을 실행하는 메서드입니다.
		// 브라우저에 출력할 텍스트를 ""에 감싸서 전달하시면 됩니다 --> <br>는 브라우저에 출력될 때 html문법에 의해 개행 됨.
		out.print("2 X " + hang + " = " + (2*hang) + "<br>");
	  } 
	 %>
	 
	<hr>
	
	<!-- 반복문, 조건문을 사용하여 구구단을 홀수단만 브라우저에 출력해 보세요. -->
	<!-- 첫번째 방법 -->
	<h2>구구단 출력(홀수단)</h2>
	<% for(int i=3; i<=9; i+=2){
		for(int j=1; j<=9; j++){
			out.print(i + " x " + j + " = " + (i*j) + "<br>");
		}
		out.print("<br>");
	}
	%>
	
	<!-- 두번째 방법 -->
	<% for(int dan=2; dan<=9; dan++){
		if(dan%2 != 0){
			out.print("<h2>구구단 " + dan + "단 </h2> <hr>");
			for(int hang=1; hang<=9; hang++){
				out.print(dan + " x " + hang + " = " + (dan*hang) + "<br>");
			}
		}
	}
	%>
	
</body>
</html>