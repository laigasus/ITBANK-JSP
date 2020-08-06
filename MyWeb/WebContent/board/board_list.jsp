<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tbody {
	font-size: 20px;
}
</style>

</head>
<body>

	<%--회원이 아니라면 게시판에 들어올 수 없도록 로직을 작성 --%>
	<c:if test="${sessionScope.user_id==null}">
		<script>
			alert("회원만 이용 가능한 게시판입니다. 로그인 해주세요");
			location.href ="user/user_login.jsp";
		</script>
	</c:if>
	<jsp:include page="../include/header.jsp" />

	<div class="container">
		<h2>My Web게시판</h2>

		<table class="table table-secondary table-hover table-bordered">
			<thead style="font-size: 25px">
				<tr>
					<th>글 번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>


			<tbody>
				<c:forEach var="b" items="${boardList}">
					<tr>
						<td>${b.boardId}</td>
						<td>${b.writer}</td>
						<td>
							<a href="/MyWeb/content.board?bId=${b.boardId}">${b.title}</a>
						</td>
						<td>${b.regDate}</td>
						<td>${b.hit}</td>
					</tr>
				</c:forEach>
			</tbody>



			<tbody>
				<tr>
					<td colspan="5" align="right">
						<form action="" class="form-inline">
							<div class="form-group">
								<input type="text" name="search" placeholder="제목검색"
									class="form-control"> <input type="submit" value="검색"
									class="btn btn-default"> <input type="button"
									value="글 작성" class="btn btn-default"
									onclick="location.href='/MyWeb/write.board'">

							</div>
						</form>
					</td>
				</tr>
			</tbody>

		</table>
	</div>

	<jsp:include page="../include/footer.jsp" />

</body>
</html>







