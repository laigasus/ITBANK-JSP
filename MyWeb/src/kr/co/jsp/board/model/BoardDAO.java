package kr.co.jsp.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO implements IBoardDAO {

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

	////////////////////////////////////////////////////////////////

	@Override
	public void regist(String writer, String title, String content) {
		String sql = "INSERT INTO my_board " + "(board_id, writer, title, content) "
				+ "VALUES(bid_seq.NEXTVAL, ?, ?, ?)";
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
		List<BoardVO> articles = new ArrayList<>();
		String sql = "SELECT * FROM my_board ORDER BY board_id DESC";

		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO article = new BoardVO(rs.getInt("board_id"), rs.getString("writer"), rs.getString("title"),
						rs.getString("content"), rs.getDate("reg_date"), rs.getInt("hit"));
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
		BoardVO vo = null;
		String sql = "SELECT * FROM my_board WHERE board_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, bId);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo=new BoardVO(
						rs.getInt("board_id"),
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("reg_date"),
						rs.getInt("hit")						
						);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return vo;
	}

	@Override
	public void updateBoard(String title, String content, int bId) {
		// TODO Auto-generated method stub
		String sql = "UPDATE my_board SET " + "title=?, content=? "
				+ "WHERE board_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, bId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteBoard(int bId) {
		// TODO Auto-generated method stub
		//DELETE FROM [테이블] WHERE [조건]
		String sql = "DELETE FROM my_board WHERE board_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, bId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public BoardVO searchBoard(String title) {
		// TODO Auto-generated method stub
		BoardVO vo = null;
		String sql = "SELECT * FROM my_board WHERE title LIKE ?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, "%"+title+"%");
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo=new BoardVO(
						rs.getInt("board_id"),
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getDate("reg_date"),
						rs.getInt("hit")						
						);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return vo;
	}

}
