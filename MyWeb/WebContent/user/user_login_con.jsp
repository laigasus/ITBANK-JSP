<%@page import="kr.co.jsp.user.model.UserVO"%>
<%@page import="kr.co.jsp.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%
	/*
1. 파라미터값 얻어오기(id, pw)
2. DAO 주소값 얻어도기
3. 로그인 유효성 검증 메서드 userCheck 호출하기
//아이디가 없다면 스트립트로 경고창 출력후 회원가입 페이지로 이동(-1)
//비밀번호가 틀렸다면 비밀번호를 틀렸다고 경고창 출력 후 뒤로가기(0)
//로그인 성공일 겨우 user_mypage.jsp로 리다이렉팅(1)
4. 로그린 성공시 페이지 이동 전에 이름과 id값으로 각각 세션 하나씩 생성
//세션 이름: user_id, user_name
//이름 ->getUserInfo()를 호출하여 객체를 받은 후 이름을 뽑아서 세션 제작
*/
%>

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
PrintWriter s = response.getWriter();
UserDAO dao = UserDAO.getInstance();

switch (dao.userCheck(id, pw)) {
case -1:
	s.println("<script>");
	s.println("alert('없는 아이디 입니다')");
	s.println("location.href = 'user_join.jsp'");
	s.println("</script>");
	break;

case 0:
	s.println("<script>");
	s.println("alert('비밀번호가 틀렸습니다')");
	s.println("history.back()");
	s.println("</script>");
	break;

case 1:
	s.println("<script>");
	s.println("alert('로그인되었습니다')");
	s.println("</script>");
	UserVO vo=dao.getUserInfo(id);
	
	session.setAttribute("user_id", id);
	session.setAttribute("user_name", vo.getName());
	
	response.sendRedirect("user_mypage.jsp");
	break;
}
%>
