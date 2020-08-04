<%@page import="kr.co.jsp.user.model.UserVO"%>
<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	/*
1. 폼 데이터 처리하세요
2.DAO 연동을 통해 updateUser()라는 메서드를 호출하여 회원 정보를 수정합니다
회원 정보 수정을 성공했다면 이름 세션 자시 제작해 주셔야 합니다
3.수정 성공시 "회원 정보가 수정되었습니다" 출력 후 마이 페이지로 이동
*/
%>
<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");
UserVO vo = new UserVO(id, pw, name, email, address);

/* UserVO vo = new UserVO();
vo.setId(request.getParameter("id"));
vo.setPw(request.getParameter("pw"));
vo.setName(request.getParameter("name"));
vo.setEmail(request.getParameter("email"));
vo.setAddress(request.getParameter("address")); */

UserDAO dao = UserDAO.getInstance();

if (dao.updateUser(vo)) {
%>
<script>
	alert("회원 정보가 수정되었습니다");
	location.href = "user_mypage.jsp";
</script>
<%
	session.invalidate();
} else {
%>
<script>
	alert("수정 실패!!");
</script>

<%
	response.sendRedirect("user_update.jsp");
}
%>