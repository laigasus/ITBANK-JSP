<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	text-align: center;
	width: 700px;
	align: center;
}

.image {
	width: 150px;
	height: 150px;
}
</style>
</head>
<body>
	<%--자신이 좋아하는 인물을 JspObjRequest에 넣고, 테이블을 제작해주세요--%>
	<%-- <form action="req_album_result.jsp"> --%>
		<table border="1">
			<thead>
				<tr>
				<!-- <th></th> -->
					<th>앨범 커버</th>
					<th>가수 이름</th>
					<th>앨범 제목</th>
					<th>발매일</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<!-- <td><input type="radio" name="title" value="IU" /></td> -->
					<td><img class="image" alt="사진을 찾을 수 없습니다" src="IU.jpg"></img></td>
					<td>아이유</td>
					<td><a href="req_album_result.jsp?title=IU">호텔델루나</a></td>
					<td>2020.05.06</td>
				</tr>
				<tr>
					<!-- <td><input type="radio" name="select" value="JJS" /></td> -->
					<td><img class="image" alt="사진을 찾을 수 없습니다" src="JJS.jpg"></img></td>
					<td>조정석</td>
					<td><a href="req_album_result.jsp?title=JJS">아로하</a></td>
					<td>2020.03.27</td>
				</tr>
				<!-- <tr>
					<td colspan="5" align="center"><input type="submit" value="확인" /></td>
				</tr> -->
			</tbody>
		</table>
	<!-- </form> -->
</body>
</html>