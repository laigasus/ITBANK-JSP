CREATE TABLE my_user(
    user_id         VARCHAR2(30)    PRIMARY KEY,
    user_pw         VARCHAR2(30)    NOT NULL,
    user_name       VARCHAR2(30)    NOT NULL,
    user_email      VARCHAR2(80),
    user_address    VARCHAR2(80)
);

select * from my_user;

CREATE TABLE my_board(
board_id    NUMBER  PRIMARY KEY,
writer      VARCHAR2(30),
title       VARCHAR2(100),
content VARCHAR2(300),
reg_date    DATE DEFAULT SYSDATE,
hit NUMBER DEFAULT 0
);

DROP SEQUENCE bid_seq;

CREATE SEQUENCE bid_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 1000