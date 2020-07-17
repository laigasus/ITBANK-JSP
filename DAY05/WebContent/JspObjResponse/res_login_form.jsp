<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%--
-태그에 내부 스타일 시트 방식으로 디자인을 적용하려면 선택자를 이용합니다.
-클래스 선택자: .class 이름
-아이디 선택자: #id 이름
-태그 선택자: 태그이름
--%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!--부트스트랩 활용=외부 CSS-->
<style>
/* .login-btn {
	height: 50px;
	width: 50px;
	padding: 2px;
	font-family: cursive;
	background-color: yellow;
} */
input {
	background-color: skyblue;
}
</style>
</head>
<body>
	<%--
	*CSS (Cascade Style Sheet)
	-HTML에 디자인 요소를 적용하는 언어는 CSS입니다
	-CSS를 HTML에 적용하는 방법은 3가지가 있습니다
	
	1. 인라인 스타일시트 - 태그 내부에 특정 태그에만 적용되는 스타일을 지정
	2. 내부 스타일 시트 -태그의 스타일을 HTML문서의 head태그에 따로 지정
	3. 외부 스타일 시트 - 외부에 .css 파일을 따로 만들어서 디자인 소스만 모두 지정한 뒤 
	나중에 HTML문서 내부에서 링크를 통해 로딩시킴
	--%>
	<div align="center"
		style="border: 2px dotted orange; width: 400px; padding: 30px;">
		<h3>sendRedirect 연습!!!</h3>
		<form action="res_login_con.jsp" method="post">
			<table border="1">
				<tr>
					<td><input type="text" name="id" size="10"
						placeholder="ID를 입력" /></td>
					<td rowspan="2"><input type="submit" class="btn btn-success"
						value="로그인" /></td>
				</tr>

				<tr>
					<td><input type="password" name="pw" size="10"
						placeholder="Pw를 입력" /></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>