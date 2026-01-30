-- 국가
-- 시퀀스 생성
CREATE SEQUENCE country_seq;


-- 국가 테이블 생성
CREATE TABLE country (
   seq NUMBER PRIMARY KEY,
   name varchar2(30) unique NOT NULL   -- 국가명
);
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '대한민국');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '미국');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '일본');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '뉴질랜드');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '홍콩');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '프랑스');
         
INSERT INTO country (seq, name)
         VALUES (country_seq.nextVal, '라트비아');

INSERT INTO country (seq, name)
        VALUES (country_seq.nextVal, '중국');

INSERT INTO country (seq, name)
        VALUES (country_seq.nextVal, '콜롬비아');

INSERT INTO country (seq, name)
        VALUES (country_seq.nextVal, '이탈리아');




select * from country;