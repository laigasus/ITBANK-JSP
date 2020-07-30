CREATE TABLE board (
    board_id NUMBER PRIMARY KEY,
    writer VARCHAR2(45) NOT NULL,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(300) NULL,
    create_at DATE DEFAULT SYSDATE
);

CREATE SEQUENCE bid_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 1000
    NOCYCLE
    NOCACHE;
    
    drop table board;
    drop sequence bid_seq;
    
select * from board order by board_id DESC;

UPDATE board SET title='ppaps', content='981103' WHERE board_id=1;