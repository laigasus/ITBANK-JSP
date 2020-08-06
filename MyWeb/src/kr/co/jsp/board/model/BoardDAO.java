package kr.co.jsp.board.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO implements IBoardDAO {

	// 싱글톤 패턴 구현
	// 1.생성자 private로 바꾸기
	// 2. DataSource객체로 sql에 저장된 내용 불러오기
	// 3. JDBC에서 spl문법을 실행할 수 있도록 InitialContext 선언
	// 4. lookup을 통해 환경 불러오기
	// 5. 자기자신의 객체 생성(임시저장공간. 없으면 rs문 실행안됨)
	// 6. 인스턴스문 선언 getInstance()
	DataSource ds;

	private BoardDAO() {
		try {
			InitialContext ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/myOracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static BoardDAO dao = new BoardDAO();

	public static BoardDAO getInstance() {
		if (dao == null)
			dao = new BoardDAO();
		return dao;
	}

	/////////////////////////////////////////////////////////////
	@Override
	public void regist(String writer, String title, String content) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO my_board " + "(board_id, writer, title, content) " + "VALUES (bid_seq.NEXTVAL,?,?,?)";

		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<BoardVO> listBoard() {
		// TODO Auto-generated method stub
		List<BoardVO> articles = new ArrayList<>();
		String sql = "SELECT * FROM my_board ORDER BY board_id DESC";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BoardVO article = new BoardVO(
						rs.getInt("board_id"), 
						rs.getString("writer"), 
						rs.getString("title"),
						rs.getString("content"), 
						rs.getDate("reg_date"), 
						rs.getInt("hit")
						);
				articles.add(article);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return articles;
	}

	@Override
	public BoardVO contentBoard(int bId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateBoard(String title, String content, int bId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteBoard(int bId) {
		// TODO Auto-generated method stub

	}

}
