--시퀀스 삭제문
DROP SEQUENCE article_seq;
DROP SEQUENCE preview_seq;
DROP SEQUENCE relatemovie_seq;

--테이블 삭제
DROP TABLE article;
DROP TABLE preview;
DROP TABLE relatemovie;

--기사 테이블
CREATE sequence article_seq;         -- 기사 시퀀스 생성
CREATE TABLE article (
    seq       NUMBER,                -- 일련번호 (PK)
    link      VARCHAR2(500),         -- 기사링크
    name      VARCHAR2(200),         -- 기사명
    writeday  DATE DEFAULT SYSDATE,  -- 작성일
    writer    VARCHAR2(100),         -- 필자
    m_seq     NUMBER,                -- 영화 일련번호 (FK)
    
    CONSTRAINT PK_ARTICLE PRIMARY KEY (seq),
    CONSTRAINT FK_ARTICLE_MOVIE FOREIGN KEY (m_seq) REFERENCES Movie(seq)
);

--기사 삽입 sql문
--INSERT INTO article (seq, link, name, writeday, writer, m_seq)
--    VALUES (article_seq.NEXTVAL, 'https://link.com', '제목', SYSDATE, '작성자', 1);

-- 기사 insert
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109278', '[송경원 편집장의 오프닝] 안녕, 양소룡, 로저 앨러스 그리고 벨러 터르', 
TO_DATE('2026-01-23', 'YYYY-MM-DD'), '송경원', 1);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109149', '로맨스의 정원, <만약에 우리> 배우 문가영', 
TO_DATE('2026-01-06', 'YYYY-MM-DD'), '조현나', 1);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109213', '극장의 무게중심을 찾아서 - 2026년 한국영화, 선택과 집중의 전략', 
TO_DATE('2026-01-16', 'YYYY-MM-DD'), '김소미', 1);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109206', '영화를 너무 사랑한 사람이 만든 것, 영화·콘텐츠 굿즈 전문 디자인 스튜디오 ‘또각’에 가다', 
TO_DATE('2026-01-15', 'YYYY-MM-DD'), '남선우', 3);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109178', '파격은 다시 새롭게 정의되는가, 유선아 평론가의 <아바타: 불과 재>', 
TO_DATE('2026-01-14', 'YYYY-MM-DD'), '유선아', 3);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109093', '행성 판도라로의 여행, “I SEE YOU”, 삼성 시네마 LED 오닉스 스크린 <아바타: 불과 재> 체험기', 
TO_DATE('2025-12-29', 'YYYY-MM-DD'), '송경원', 3);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109302', '내 마음을 궁금해하며 한 걸음 더, <프로젝트 Y > 배우 유아', 
TO_DATE('2026-01-29', 'YYYY-MM-DD'), '이유채', 4);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109254', '나만의 농도를 잃지 않으며, <프로젝트 Y> 이환 감독, 그레이 음악감독', 
TO_DATE('2026-01-22', 'YYYY-MM-DD'), '유선아', 4);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109213', '극장의 무게중심을 찾아서 - 2026년 한국영화, 선택과 집중의 전략', 
TO_DATE('2026-01-16', 'YYYY-MM-DD'), '김소미', 4);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109279', '올해엔 누구에게 갈까?, 제98회 아카데미 시상식 후보 공개부터 <어쩔수가없다>북미 흥행까지', 
TO_DATE('2026-01-23', 'YYYY-MM-DD'), '이자연', 6);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109206', '영화를 너무 사랑한 사람이 만든 것, 영화·콘텐츠 굿즈 전문 디자인 스튜디오 ‘또각’에 가다', 
TO_DATE('2026-01-15', 'YYYY-MM-DD'), '남선우', 6);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109145', '애니메이션 흥행 돌풍, 2025년 중국 영화시장 결산', 
TO_DATE('2026-01-05', 'YYYY-MM-DD'), '한희주', 6);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109213', '극장의 무게중심을 찾아서 - 2026년 한국영화, 선택과 집중의 전략', 
TO_DATE('2026-01-16', 'YYYY-MM-DD'), '김소미', 7);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=107765', '스튜디오 지브리는 어떻게 탄생했나요? <아니메쥬와 지브리展>, 다섯 가지 질문으로 들여다보기', 
TO_DATE('2025-06-17', 'YYYY-MM-DD'), '김경수', 8);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=107764', '우리가 직면한 중요한 문제를 다룬다는 것 - 스튜디오 지브리 대표작 제작 비하인드', 
TO_DATE('2025-06-17', 'YYYY-MM-DD'), '조현나', 8);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=107763', '세계사의 궤적을 좇아온 스튜디오 지브리', 
TO_DATE('2025-06-17', 'YYYY-MM-DD'), '이자연', 8);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109311', '우주 최초의 소리부터 사이키텔릭한 정화까지, <시라트>의 음악과 음향에 관하여', 
TO_DATE('2026-01-29', 'YYYY-MM-DD'), '정재현', 9);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109310', '생의 의미를 자각하는 오프로드, <시라트> 리뷰', 
TO_DATE('2026-01-29', 'YYYY-MM-DD'), '정재현', 9);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109309', '분출과 초월의 황홀경, 올리베르 락세 감독의 <시라트> 리뷰와 사운드 탐구', 
TO_DATE('2026-01-29', 'YYYY-MM-DD'), '정재현', 9);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109014', '씨네21 추천도서 - <데드 헤드 대드>', 
TO_DATE('2025-12-16', 'YYYY-MM-DD'), '김송희', 11);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=108799', '영화가, 사랑을 담아, 해외영화 베스트 9위부터의 영화들', 
TO_DATE('2025-11-11', 'YYYY-MM-DD'), '정재현', 11);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=108795', '다른 듯 비슷한, 1995-2024 영화 베스트 1위에 오른 <시><하나 그리고 둘>', 
TO_DATE('2025-11-11', 'YYYY-MM-DD'), '정재현', 11);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109290', ' 작품과 나의 상관관계, <시스터> 배우 차주영', 
TO_DATE('2026-01-27', 'YYYY-MM-DD'), '정재현', 12);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109289', '어떤 주저함도 없이, <시스터> 배우 이수혁', 
TO_DATE('2026-01-27', 'YYYY-MM-DD'), '조현나', 12);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109288', '가장 깊은 어둠을 그린 얼굴, <시스터> 배우 정지소', 
TO_DATE('2026-01-27', 'YYYY-MM-DD'), '이자연', 12);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109323', '[송경원 편집장의 오프닝] 듣는 존재', 
TO_DATE('2026-01-30', 'YYYY-MM-DD'), '송경원', 14);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109214', '우리가 모르던 단종을 만나기 위하여 - <왕과 사는 남자> 장항준 감독', 
TO_DATE('2026-01-29', 'YYYY-MM-DD'), '이자현', 14);
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109213', '극장의 무게중심을 찾아서 - 2026년 한국영화, 선택과 집중의 전략', 
TO_DATE('2026-01-16', 'YYYY-MM-DD'), '김소미', 14);

-- article 절반 sql문
INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109102', '[커버] 목소리(들)에 반했습니다, 추영우가 직접 완성한 12인 캐릭터의 목소리 피라미드', to_date('2025-12-30', 'YYYY-MM-DD'), '이유채', 16);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109101', '[인터뷰] 시작하면 일단 곁에 두고 포기하지 않는다, 배우 추영우', TO_DATE('2025-12-30', 'YYYY-MM-DD'), '백종헌', 16);


INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109100', '[커버] 단단한 신뢰를 얻는 방법, 2025 베스트 시리즈 신인 남자배우 추영우를 만나다', TO_DATE('2025-12-30', 'YYYY-MM-DD'),'백종헌', 16);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=107716', '[인터뷰] 성장하는 연인을 지켜보는 즐거움, <나를 모르는 그녀의 세계에서> 미키 다카히로 감독', TO_DATE('2025-06-12', 'YYYY-MM-DD'), '남선우', 20);



INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=102478', '[기획] 일본 애니메이션에 열광하는 관객에게 일어나고 있는 변화는, 강상욱, 김민하 인터뷰', TO_DATE('2023-04-13', 'YYYY-MM-DD'), '이자연', 20);


INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=102424', '[기획]극장 위기론 대두되는 2023년, ‘흥행 공식’이 깨졌다', TO_DATE('2023-04-07', 'YYYY-MM-DD'), '임수연', 20);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=94177', '본인 영화에 카메오 등장하기가 취미인 감독들', TO_DATE('2019-11-05', 'YYYY-MM-DD'), '심미성', 21);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=94133', '데뷔작 <블러드 심플>로 돌아온 코엔 형제에 관한 소소한 사실 13가지', TO_DATE('2019-10-27', 'YYYY-MM-DD'), '심미성', 21);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=93631', '[코믹콘 서울 2019에서 만난 사람들④] <반지의 제왕> 배우 빌리 보이드 - 피핀의 노래가 노래방에서 탄생한 사연', TO_DATE('2019-08-14', 'YYYY-MM-DD'), '김현수', 21);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=102375', '[이경희의 오늘은 SF] SF로 세계를 치유하기', TO_DATE('2023-04-06', 'YYYY-MM-DD'), '이경희', 25);
    
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=86755', '[스페셜] 사실은 블루레이만 모으고 있지는 않은 그의 영화 관련 온갖 것들 수집기', TO_DATE('2017-03-27', 'YYYY-MM-DD'), '김현수', 25);
    
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=77615', '[STAFF 37.5] 촬영 시 동물을 어떻게 대했을지도 고려했다', TO_DATE('2014-08-15', 'YYYY-MM-DD'), '윤혜지', 25);
    
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109162', '[기획] 말간 소년의 경계 너머, 배우 고시야마 게이타쓰', TO_DATE('2026-01-08', 'YYYY-MM-DD'), '홍수정', 28);
    
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109161', '[기획] 순수함의 격정, 배우 구로카와 소야', TO_DATE('2026-01-08', 'YYYY-MM-DD'), '김소미', 28);

INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109001', '[비평] 박제가 되어버린 국보, 이병현 평론가의 <국보>', TO_DATE('2025-12-17', 'YYYY-MM-DD'), '이병현', 28);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109145', '[베이징] 애니메이션 흥행 돌풍, 2025년 중국 영화시장 결산', TO_DATE('2026-01-05', 'YYYY-MM-DD'), '한희주', 30);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=109133', '[특집] (해외) 애니메이션이 살렸다', TO_DATE('2026-01-02', 'YYYY-MM-DD'), '이자연', 30);
    
    INSERT INTO article (seq, link, name, writeday, writer, m_seq)
    VALUES (article_seq.NEXTVAL, 'https://cine21.com/news/view/?mag_id=108289', '[특집] 더 화려하게, 더 개성 있게 - 웹계 애니메이터가 현대 애니메이션에 준 영향', TO_DATE('2025-09-12', 'YYYY-MM-DD'), '이우빈', 30);

SELECT * FROM article;

--예고편 테이블
CREATE SEQUENCE preview_seq;  --예고편 시퀀스 생성
CREATE TABLE preview (
    seq    NUMBER,            -- 일련번호 (PK)
    link   VARCHAR2(500),     -- 예고편링크
    m_seq  NUMBER,            -- 영화 일련번호 (FK)
    
    CONSTRAINT PK_PREVIEW PRIMARY KEY (seq),
    CONSTRAINT FK_PREVIEW_MOVIE FOREIGN KEY (m_seq) REFERENCES Movie(seq)
);

--예고편 테이블 삽입
--INSERT INTO preview (seq, link, m_seq)
--    VALUES (preview_seq.NEXTVAL, 'https://link.com', 1);

-- 예고편 insert문
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2026/01/oncewe_mv.mp4', 1);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/o1ncewe_str.mp4', 1);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/o1ncewe_lptr.mp4', 1);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/c1hoir_ctr.mp4', 2);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/11/c2hoir_mtr.mp4', 2);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/12/avatar3_rmk.mp4', 3);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/12/avatar3_tmk.mp4', 3);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/12/avatar3_tmk.mp4', 3);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/projy_pmk.mp4', 4);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/projy_cmk.mp4', 4);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/projy_mtr.mp4', 4);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/shinbi_2tr.mp4', 5);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/sinbi10_1tr.mp4', 5);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/zootopia2_rtr.mp4', 6);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/11/z2ootopia2_nvmk.mp4', 6);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/10/z2ootopia2_ftr.mp4', 6);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/heartman_rtr.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/heartman_sumk.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/h1eartman_mtr.mp4', 7);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/heartman_rtr.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/heartman_sumk.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/h1eartman_mtr.mp4', 7);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/heartman_rtr.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/heartman_sumk.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/h1eartman_mtr.mp4', 7);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/heartman_rtr.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/heartman_sumk.mp4', 7);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/h1eartman_mtr.mp4', 7);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/laputa_int_mk.mp4', 8);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/laputa_str.mp4', 8);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/laputa_mtr.mp4', 8);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/sirat_armk.mp4', 9);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/sirat_30tr.mp4', 9);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/sirat_mtr.mp4', 9);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/s1endhelp_datemk.mp4', 10);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/s1endhelp_spbmk.mp4', 10);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/s1endhelp_mtr.mp4', 10);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2015/11/sunshinebest_mak.mp4', 11);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2015/10/sunshine_mv.mp4', 11);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2015/10/Sunshine_tr.mp4', 11);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/s2ister_mtr.mp4', 12);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/s2ister_ttr.mp4', 12);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/housemaid_mtr.mp4', 13);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/housemaid_ttr.mp4', 13);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/kingwith_rtr.mp4', 14);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/wanggwa_otr.mp4', 14);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/w1anggwa_pmk.mp4', 14);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/731_mtr.mp4', 15);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/731_ttr.mp4', 15);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/primate_cpgmk.mp4', 16);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/primate_rtr.mp4', 16);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/primate_vmk.mp4', 16);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/gogodino_ctr.mp4', 17);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/gogodino_rptr.mp4', 17);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2026/01/gogodino_mv.mp4', 17);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2025/12/evenif_lmv.mp4', 18);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/12/evenif_imk.mp4', 18);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/e1venif_3mtr.mp4', 18);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2023/01/disappear_mv.mp4', 19);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2022/11/lovedisappea_oytr.mp4', 19);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2022/11/lovedisappear_o1tr.mp4', 19);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/sugar_30tr.mp4', 20);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/suagr_ctr.mp4', 20);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/suagr_ctr.mp4', 20);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21/multi/trailer/a-b/newbanzi.mp4', 21);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21/multi/trailer/a-b/banzi3_pre.mp4', 21);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/s1hinchan_cptr.mp4', 22);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/s1hinchan_bftr.mp4', 22);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/11/s1hinchan_mtr.mp4', 22);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/revival_mtr.mp4', 23);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/c1hronology_mtr.mp4', 24);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/water_1tr.mp4', 24);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2026/01/nomercy_cdmk.mp4', 26);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/n1omercy_mtr.mp4', 26);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2026/01/n1omercy_ttr.mp4', 26);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/mvideo/2025/12/pororo_mv.mp4', 27);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/11/pororo_30tr.mp4', 27);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/11/p1ororo_mtr.mp4', 27);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/12/imfl_mtr.mp4', 28);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/11/imfl_ttr.mp4', 28);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/11/kukbo_ccmk.mp4', 29);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/10/kukbo_mtr.mp4', 29);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/10/kukbo_krmk.mp4', 29);

INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/10/guikal_6kmk.mp4', 30);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/making/2025/09/guikal_vv2mk.mp4', 30);
INSERT INTO preview (seq, link, m_seq)
    VALUES (preview_seq.NEXTVAL, 'https://mp4.cine21.com//cine21.com/movie/trailer/2025/09/guikal_sotr.mp4', 30);

SELECT * FROM preview;

--관련 영화 테이블
--CREATE SEQUENCE relatemovie_seq;
--CREATE TABLE relatemovie(
--    seq NUMBER,
--    m_seq NUMBER, 
--    rm_seq NUMBER,
--
--    CONSTRAINT PK_RELATEMOVIE PRIMARY KEY (seq),
--    CONSTRAINT FK_RELATEMOVIE_M FOREIGN KEY (m_seq) REFERENCES Movie(seq),
--    CONSTRAINT FK_RELATEMOVIE_RM FOREIGN KEY (rm_seq) REFERENCES Movie(seq)
--);
--
--관련 영화 테이블 삽입문
--INSERT INTO relatemovie (seq,m_seq,rm_seq)
--    values (relatemovie_seq.NEXTVAL,1,2);