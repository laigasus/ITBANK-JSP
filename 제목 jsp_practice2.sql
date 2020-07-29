CREATE TABLE scores(
    id      NUMBER PRIMARY KEY,
    name    VARCHAR2(20) NOT NULL,
    kor     NUMBER DEFAULT 0,
    eng     NUMBER DEFAULT 0,
    math    NUMBER DEFAULT 0,
    total   NUMBER DEFAULT 0,   --NUMBER 기본값(38, 0)
    average number(5, 2)        --5는 표현 최대수(100.00) , 2는 소수 자릿수(.00)
);

select * from scores;

--원할때마다 자동으로 숫자를 올려주는 시퀀스 객체를 생성
CREATE SEQUENCE id_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 1000
NOCYCLE
NOCACHE;