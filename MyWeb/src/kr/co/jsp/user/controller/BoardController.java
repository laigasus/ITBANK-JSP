package kr.co.jsp.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jsp.board.model.BoardDAO;
import kr.co.jsp.board.model.BoardVO;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doRequest(request, response);
	}

	protected void doRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		uri = uri.substring(conPath.length() + 1, uri.lastIndexOf("."));// 정제
		System.out.println(uri);

		switch (uri) {
		case "write":
			System.out.println("글 쓰기 요청이 들어옴!");
			response.sendRedirect("board/board_write.jsp");
			break;

		case "regist":
			System.out.println("글 등록 요청이 들어옴!");
			String writer = request.getParameter("bWriter");
			String title = request.getParameter("bTitle");
			String content = request.getParameter("bContent");
			BoardDAO.getInstance().regist(writer, title, content);
			response.sendRedirect("/MyWeb/list.board");
			// 요청은 컨트롤러를 통해 전송되어야 함
			break;

		case "list":
			System.out.println("글 목록 요청이 들어옴!");
			List<BoardVO> boardList = BoardDAO.getInstance().listBoard();
			request.setAttribute("article", boardList);
			// request객체를 다음 화면 까지 운반하기 위한 forward기능을 제공하는 객체
			// -> requestDispatcher
			RequestDispatcher dp = request.getRequestDispatcher("board/board_list.jsp");
			dp.forward(request, response);
			break;

		}
	}

}
