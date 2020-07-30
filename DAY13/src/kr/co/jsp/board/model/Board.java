package kr.co.jsp.board.model;

import java.sql.Date;

/*
CREATE TABLE board(
board_id    NUMBER PRIMARY KEY,
writer VARCHAR2(45) NOT NULL,
title VARCHAR2(100) NOT NULL,
content VARCHAR2(300) null,
create_at DATE DEFAULT SYSDATE
);

CREATE SEQUENCE bid_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 1000
NOCYCLE
NOCACHE;
*/

public class Board {
	
	private int boardId;
	private String writer;
	private String title;
	private String content;
	private Date createAt;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}
	
	public Board(int boardId, String writer, String title, String content, Date createAt) {
		super();
		this.boardId = boardId;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.createAt = createAt;
	}

	
	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

}
