<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 양식</h2>
	<hr>
	<%--
	사용자의 입력값을 서버로 전송하는 방법
	1. 사용자의 입력 데이터를 서버로 전송하려면 HTML의 form태그를 이용합니다
	2. form태그의 action 속성에 데이터를 전달받을 페이지의 URL주소를 작성합니다
	3. input 태그에 작성한 name속성으로 요청 파라미터의 이름을 지정할 수 있습니다
	 --%>

	<form action="req_user_info.jsp">
		<div>
			# 아이디: <input type="text" name="id" />
		</div>
		<div>
			# 비밀번호: <input type="password" name="pw" />
		</div>
		<div>
			# 성별: 
			<input type="radio" name="gender" value="남" />남&nbsp; 
			<input type="radio" name="gender" value="여" />여<br>
			<!--radio타입은 동그라미 체크 버튼을 만듭니다-->
			<!--&는 특수문자 출력을 합니다-->
		</div>
		<div>
			# 취미: 
			<input type="checkbox" name="hobby" value="독서" />독서&nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="수면" />수면&nbsp;&nbsp; 
			<input type="checkbox" name="hobby" value="축구" />축구&nbsp;&nbsp; 
			<input type="checkbox" name="hobby" value="게임" />게임<br>
		</div>
		<div>
			# 지역 <select name="region">
				<!--선택 양식을 제공. option에 선택지를 제공-->
				<option>서울</option>
				<option>부산</option>
				<option>대구</option>
				<option>대전</option>
			</select><br>
		</div>
		# 자기 소개 <br>
		<!-- textarea: 텍스트 작성 공간 영역 제공. cols는 너비, rows는 높이-->
		<textarea name="introduce" cols="40" rows="10"></textarea>
		<!--submit은 form 태그의 action에 작성한 경로로 폼 데이터의 양식을
    value는 버튼에 들어갈 텍스트를 작성-->
		<br> <input type="submit" value="회원가입" /> <input type="reset"
			value="초기화" />
	</form>

</body>
</html>