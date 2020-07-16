<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--

    요청 파라미터(request parameter)

    -클라이언트 측에서 서버로 데이터를 요청할때 전달되는 것들을 담은 변수를 요청 파라미터라고 합니다 
    
    -요청 파라미터는 URL 주소 뒤에 ?를 붙인 후 [파라미터 변수명=값]의 형식을 통해 서버로 데이터를 전송하게 됩니다
    
    -요청 파라미터가 여러개라면 &기호를 사용하여 나열해서 전달합니다
    http://localhost:8181/DAY03/JspObjRequest/req_param.jsp?bf=토스트&lunch=냉면&dinner=삼겹살
--%>

<%
	//클라이언트에서 전송된 요청 파라미터 값을 가지고 오는 법
//내장객체 request의 메서드 get parameter("파라미터 변수명");
String breakfast = request.getParameter("bf");
String lunch = request.getParameter("lunch");
String dinner = request.getParameter("dinner");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		-아침밥:
		<%=breakfast%><br>
	</p>
	<p>
		-점심밥:
		<%=lunch%><br>
	</p>
	<p>
		-저녁밥:
		<%=dinner%><br>
	</p>
</body>
</html>