package kr.co.jsp.board.model;

import java.sql.Date;

public class BoardVO {
	
	private int board_id;
	private String writer;
	private String title;
	private String content;
	private Date regDate;
	private int hit;
	
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public BoardVO(int board_id, String writer, String title, String content, Date regDate, int hit) {
		super();
		this.board_id = board_id;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		this.hit = hit;
	}
	
	
}
