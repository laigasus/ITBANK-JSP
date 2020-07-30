package kr.co.jsp.board.model;

import java.util.List;

public interface IBoardDAO {
	//게시글 등록(c)
	boolean insert(Board article);
	
	//게시글 전체 목록 조회(R)
	List<Board> selectAll();
	
	//게시글 상세 조회(R)
	Board selectOne(int bId);
	
	//게시글 수정(U)
	boolean update(Board article);
	
	//게시글 삭제(D)
	boolean delete(int bId);
}
