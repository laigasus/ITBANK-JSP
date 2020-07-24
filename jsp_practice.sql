--테이블 생성 명령
--primary key   - 컬럼의 주요키를 뜻하며 중복된 데이터를 방지합니다
--not null      - 데이터에 null값이 들어오는 것을 방지합니다

CREATE TABLE members(
id VARCHAR2(20) PRIMARY KEY,
pw VARCHAR2(20) NOT NULL,
name VARCHAR2(30) NOT NULL,
email VARCHAR2(80)
);

--데이터 추가
INSERT INTO members(id, pw, name) VALUES('abc123', '1234', '홍길동');
INSERT INTO members VALUES('def456', '4433', '이순신', 'aaa@bbb.com');

insert into members values ('kkk456', '3456', '김철수', 'aaa@naver.com');
insert into members values ('ghi789', '6753', '장보고', 'bbb@naver.com');
insert into members values ('aaa123', '2432', '박찬호', 'ccc@naver.com');
insert into members values ('bbb456', '7653', '손흥민', 'ddd@naver.com');
insert into members values ('ccc789', '2398', '기성용', 'eee@naver.com');
insert into members values ('hhh012', '8547', '이순신', 'fff@naver.com');
insert into members values ('uuu012', '8547', '이성계', 'fff@naver.com');
insert into members values ('xxx012', '8547', '이의민', 'fff@naver.com');
insert into members values ('xyu012', '8547', '이의민', 'fff@naver.com');

--데이터 조회
SELECT * FROM members;              --전체 조회

SELECT id FROM members;             --부분 조회
SELECT name, email FROM members;

SELECT email FROM members           --조건부 조회
WHERE id='abc123';

SELECT * FROM members
WHERE id='kkk456';

SELECT * FROM members               --키워드 검색
WHERE name LIKE '이%';

SELECT * FROM members             
WHERE name LIKE '%민';

SELECT * FROM members               
WHERE name LIKE '%성%';

SELECT * FROM members               
WHERE email LIKE '%naver%';


--데이터 수정
UPDATE members SET name='고길동', email='ko123@daum.net'
WHERE id='abc123';

--데이터 삭제
DELETE FROM members
WHERE id='def456';

--데이터 조회
SELECT * FROM members;              --전체 조회

--검색 데이터 정렬

SELECT * FROM members ORDER BY name ASC; --오름차순 조회

SELECT * FROM members ORDER BY name DESC; --내림차순 조회

SELECT * FROM members
WHERE name LIKE '이%'
ORDER BY id ASC;

--트랜잭션 처리
SELECT * FROM members; 

COMMIT;

INSERT INTO members VALUES('park4321', 'ppp4321', '박영희', 'park@naver.com');

ROLLBACK;

--테이블 객체 삭제
DROP TABLE members;
