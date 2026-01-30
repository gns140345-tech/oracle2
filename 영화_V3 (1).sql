
-- 영화 시퀀스, 테이블 제거
DROP SEQUENCE movie_seq;
DROP TABLE movie;
--DROP TABLE movie CASCADE CONSTRAINTS;

-- 영화
-- 시퀀스 생성
CREATE SEQUENCE movie_seq;
--select * FROM country;
-- 영화 테이블 생성
CREATE TABLE movie (
	seq NUMBER PRIMARY KEY,
	name varchar2(200) NOT NULL,
	OPEN DATE NOT NULL,
	runtime NUMBER,
	audience NUMBER,
	synopsis varchar2(4000),
	g_seq NUMBER NOT NULL,
	ct_seq NUMBER NOT NULL,
	
	CONSTRAINT fk_movie_grade FOREIGN KEY (g_seq) REFERENCES grade(seq),
	CONSTRAINT fk_movie_country FOREIGN KEY (ct_seq) REFERENCES country(seq)
);

-- 영화 테이블 생성
--CREATE TABLE movie (
--	seq NUMBER PRIMARY KEY,
--	name varchar2(200) NOT NULL,
--	OPEN DATE NOT NULL,
--	runtime NUMBER NOT NULL,
--	audience NUMBER NOT NULL,
--	synopsis varchar2(4000) NOT NULL,
--	g_seq NUMBER NOT NULL,
--	ct_seq NUMBER NOT NULL,
--	
--	CONSTRAINT fk_movie_grade FOREIGN KEY (g_seq) REFERENCES grade(seq),
--	CONSTRAINT fk_movie_country FOREIGN KEY (ct_seq) REFERENCES country(seq)
--);

-- 영화 insert문
INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '만약에 우리', TO_DATE('2025-12-31', 'YYYY-MM-DD'), 114, 2142504, '가장 초라했던 그때,
가장 눈부시던 우리

고향 가는 고속버스에 올라탄 은호(구교환)와
휴학 후 어디론가 떠날 결심을 한 정원(문가영),
나란히 앉게 된 두 사람은 뜻밖의 인연을 맺는다.

서로의 꿈을 응원하며 의지하던 두 사람은
어느새 일상 깊숙이 스며들어 연인으로 발전한다.

웃고, 싸우고, 화해하며 세상을 다 가진 듯 뜨겁게 사랑하지만,
현실의 벽 앞에 두 사람은 결국 다른 길을 선택하게 된다.

그렇게 10년이 지난 후, 다시 마주한 순간
은호는 정원에게 오랫동안 묻어두었던 한마디를 꺼낸다.

“만약에 우리...”', (SELECT seq FROM grade WHERE name =15 ), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '신의악단', TO_DATE('2025-12-31', 'YYYY-MM-DD'), 110, 785699, '대북제재로 돈줄이 막힌 북한.
국제사회의 2억 달러 지원을 얻기 위한 마지막 방법은 단 하나!
보위부는 당의 명령을 받고, 북한 최초의 가짜 찬양단을 만드는 임무를 맡는다.', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '아바타: 불과 재', TO_DATE('2025-12-17', 'YYYY-MM-DD'), 197, 6612934, '월드 와이드 흥행 불멸의 1위 <아바타> 시리즈의 세 번째 이야기!
판도라를 위협하는 재의 부족, 더 이상 인간만이 적이 아니다!
12월, 모두의 운명을 뒤흔들 거대한 전투가 시작된다!

인간들과의 전쟁으로 첫째 아들 ‘네테이얌’을 잃은 후,
‘제이크’와 ‘네이티리’는 깊은 슬픔에 빠진다.

상실에 빠진 이들 앞에 ''바랑''이 이끄는 재의 부족이 등장하면서,
판도라는 더욱 큰 위험에 빠지게 되고, ‘설리’ 가족은 선택의 기로에 서게 되는데…

역대급 스케일과 액션, 오직 <아바타>만이 선사할
압도적 시네마틱 경험을 반드시 극장에서 확인하라!
', (SELECT seq FROM grade WHERE name =12 ), (SELECT seq FROM country WHERE name ='미국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '프로젝트 Y', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 108, 124663, '화려한 도시 한가운데에서 다른 내일을 꿈꾸며 살아가던 미선과 도경.
하지만 그 희망마저 빼앗기고 벼랑 끝까지 내몰린 상황,
두 사람은 우연히 알게 된 검은 돈과 숨겨진 금괴를 훔쳐 새로운 기회를 만들고
돈과 금괴에 얽힌 이들이 미선과 도경을 뒤쫓기 시작하는데…', (SELECT seq FROM grade WHERE name =15 ), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '신비아파트 10주년 극장판: 한 번 더 소환', TO_DATE('2026-01-14', 'YYYY-MM-DD'), 86, 259605, '일곱 개의 빛이 하나로 모일 때,
비로소 어둠의 군주가 다시 깨어난다!

10년 후, 20살이 된 하리는 대학생활에 적응하느라 알바하느라 바쁜 시간을 보낸다.
예전과는 달라진 상황에 서운해 하던 신비는 결국 하리와 크게 다투게 된다.
그런 신비 앞에 나타난 ‘귀신헌터’ 채널의 안 PD가 신비를 스타로 만들어 주겠다고 유혹하고,
예상치 못한 반응과 함께 신비는 하루아침에 유명 스타가 된다.
신비가 세상에 모습을 드러내자 숨어살던 전 세계의 도깨비들이 하나 둘 세상 밖으로 나오고,
도깨비들은 광화문에 모여 ‘세계 도깨비 축제’를 연다.
화려한 축제를 즐기던 그 순간,
오랜 시간 잠들어 있던 어둠의 군주 ‘지하국대적’이 부활하고, 모두가 위험에 빠지고 마는데...!
과연 하리는 신비와의 우정을 되찾고, 세상을 구할 수 있을까?!', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));

--오류 발생 명령행: 403 열: 28
--오류 보고 -
--SQL 오류: ORA-12899: "HR"."MOVIE"."NAME" 열에 대한 값이 너무 큼(실제: 54, 최대값: 50)

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '주토피아 2', TO_DATE('2025-11-26', 'YYYY-MM-DD'), 108, 8539371, '더 화려해진 세계, 더 넓어진 주토피아!
디즈니의 가~~장 사랑스러운 콤비 ''주디''와 ''닉''이 돌아온다!

미스터리한 뱀 ''게리''가 나타난 순간,''
주토피아가 다시 흔들리기 시작했다!

혼란에 빠진 도시를 구하기 위해
환상의 콤비 ''주디'' & ''닉''이 잠입 수사에 나서고
상상 그 이상의 진실과 위협을 마주하게 되는데...!

11월, 초특급 추적 어드벤처가 펼쳐진다!', (SELECT seq FROM grade WHERE name =0), (SELECT seq FROM country WHERE name = '미국'));



INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '하트맨', TO_DATE('2026-01-14', 'YYYY-MM-DD'), 99, 239172, '돌아온 남자 승민(권상우)이 다시 만난 첫사랑을 놓치지 않기 위해 고군분투하지만,
그녀에게 절대 말할 수 없는 비밀이 생기며 벌어지는 코미디', (SELECT seq FROM grade WHERE name =12), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '천공의 성 라퓨타', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 124, 107936, '전설의 공중도시 ‘라퓨타’를 향한
거대한 여정이 시작된다!

해적 일당의 습격으로 비행선 아래로 떨어지게 된 소녀 ''시타''는
광산촌의 견습 기계공인 소년 ''파즈''에 의해 목숨을 구하게 된다.
둘은 하늘을 나는 전설 속 ''라퓨타''를 함께 찾기로 약속하지만
신비한 힘을 품은 ''시타''의 비행석 목걸이를 노리는 군대와
무자비한 해적들에게 쫓겨 위기를 겪게 되는데…!
', (SELECT seq FROM grade WHERE name =0), (SELECT seq FROM country WHERE name = '일본'));


INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '시라트', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 120, 34851, '
광활한 사막 한가운데에서 펼쳐지는 레이브 파티
그곳에서 루이스는 아들 에스테반과 함께 실종된 딸을 찾아 헤맨다.
하지만 곧 그 길은 신의 심판대로 이어지는데...

전례 없는 충격의 논쟁작
이 영화를 감당할 수 있는가', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '프랑스'));


INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '이터널 선샤인', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 107, 71480, '사랑은 그렇게 다시 기억된다.

조엘은 아픈 기억만을 지워준다는 라쿠나사를 찾아가
헤어진 연인 클레멘타인의 기억을 지우기로 결심한다.
기억이 사라져 갈수록 조엘은 사랑이 시작되던 순간, 행복한 기억들,
가슴 속에 각인된 추억들을 지우기 싫어지기만 하는데...
당신을 지우면 이 아픔도 사라질까요?
사랑은 그렇게 다시 기억된다.', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '미국'));



INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '직장상사 길들이기', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 112, 21385, '
“아직도 여기가 회사인 줄 아나 봐?”
퇴근 없는 지옥의 무인도에서 펼쳐지는 예측 불가 고자극 서바이벌 스릴러!

직장에서 인정받지 못해 괴로워하는 ‘린다’는 죽일 만큼 미운 상사 ‘브래들리’와
출장 도중 비행기 추락 사고로 인해 무인도에 단둘이 고립된다.

와이파이도, 인사팀도, 직급도 없는 야생의 섬에서
이들의 권력관계는 완전히 뒤집히게 되는데…!

1월 28일, 샘 레이미 감독의 뒤틀린 천국으로 초대합니다!
', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '미국'));




INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '731', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 125,28421, '
중국 북동부에서 일본 제국군 731부대가 자행한 세균 실험을 배경으로,
평범한 개인이 겪는 격동의 운명을 통해 감춰진 범죄의 실체를 폭로하는 잔혹 역사 영화', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '중국'));


INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '왕과 사는 남자', TO_DATE('2026-02-04', 'YYYY-MM-DD'), 116, 19442, '“나는 이제 어디로 갑니까…”

계유정난이 조선을 뒤흔들고
어린 왕 이홍위는 왕위에서 쫓겨나 유배길에 오른다.

“무슨 수를 쓰더라도 그 대감을 우리 광천골로 오게 해야지”

한편, 강원도 영월 산골 마을 광천골의 촌장 엄흥도는
먹고 살기 힘든 마을 사람들을 위해 청령포를 유배지로 만들기 위해 노력한다.
그러나 촌장이 부푼 꿈으로 맞이한 이는 왕위에서 쫓겨난 이홍위였다.
유배지를 지키는 보수주인으로서 그의 모든 일상을 감시해야만 하는 촌장은
삶의 의지를 잃어버린 이홍위가 점점 신경 쓰이는데…

1457년 청령포, 역사가 지우려 했던 이야기
<왕과 사는 남자>
', (SELECT seq FROM grade WHERE name =12), (SELECT seq FROM country WHERE name = '대한민국'));


INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '시스터', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 86, 18183, '나는 오늘, 언니를 납치했다!

동생의 수술 비용을 마련하기 위해 거액의 돈이 필요한 ''해란''(정지소)은
''태수''(이수혁)와 이복언니 ''소진''(차주영)을 납치한다.
눈 떠보니 낯선 공간에 감금된 ''소진''.
''해란''과 ''태수''는 부잣집 딸 ''소진''의 몸값으로 10억 원을 요구한다.
납치범 ''해란''이 이복동생이라는 사실을 알게 된 ''소진''은
언니와 동생, 피해자와 가해자라는 위태로운 공조를 시작하고
무자비한 ''태수''를 상대로 반격을 가하는데…

하나씩 드러나는 진실, 끝이 없는 의심의 덫이 시작된다!
', (SELECT seq FROM grade WHERE name =15), (SELECT seq FROM country WHERE name = '대한민국'));


INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '고고다이노 극장판: 곤충세계 대모험', TO_DATE('2026-01-14', 'YYYY-MM-DD'), 65, 35017, '위기에 처한 곤충들을 구하기 위해
고고다이노 대원들이 작아졌어요!

고고다이노 탐험대는 우르르 행성을 탐험하며
미지의 숲속 세계에 떨어지고, 아주 작은 곤충의 세계를 발견한다.
그곳에서 대원들은 곤경에 처한 무당벌레, 길을 잃은 개미 등
곤충 친구들을 구조하는 특별 임무를 맡게 되는데…
토모의 새로운 발명품 ‘작아져라 기계’로 곤충만큼 작아진 고고다이노 대원들!

지금까지 본 적 없던 곤충탐험대의 작지만 아주 큰 모험이 펼쳐진다!
', (SELECT seq FROM grade WHERE name =0), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq)
VALUES (movie_seq.NEXTVAL, '오늘 밤, 세계에서 이 사랑이 사라진다 해도', TO_DATE('2025-12-24', 'YYYY-MM-DD'), 105, 858824, '매일 너의 기억을 채워주고 싶은 남자, 김재원(추영우)

학교를 가도 아무 의욕이 없던 나에게
어느 순간, 웃을 때마다 빛나는 긴 머리의 한 아이가
나의 심장 속에 들어오기 시작했다.

“시간이 지날수록 다른 건 다 모르겠고, 그냥 보고 싶기만 해.”

매일 나의 기억을 잃어버리는 여자, 한서윤(신시아)

매일 기억이 리셋되어 모든 것을 기록해야 하는 하루가 고단했던 나에게
키 크고 눈빛이 잊히지 않는 한 아이가
나의 기억 속에 들어오기 시작했다.

“안 하던 짓 좀 해보려고. 안 그럼 너무 지루하잖아.”

오늘 밤, 세계에서 이 사랑이 사라진다 해도
내일의 너를 다시 사랑할 거야', (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '대한민국'));
		
INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '하우스메이드', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 131, 18040, '전 세계 350만 부 이상 판매된 고자극 반전 스릴러!
뉴욕타임스 130주, 아마존 83주 연속 베스트셀러 원작!

과거를 숨긴 채 상류층의 저택에서 일하게 된 수상한 가정부 밀리.
화려한 저택에 입주해 살게 됐다는 기쁨도 잠시,
처음에는 친절했지만 점점 이상한 행동을 하는 비밀스러운 아내 니나에게 질려간다.
그리고 그때마다 자신을 도와주는 이상적인 남편 앤드루에게 호감을 갖기 시작한다.

완벽한 저택 안에서 세 사람의 관계는 은밀하게 얽히고,
점차 닫힌 문 뒤 숨겨져 있던 거짓이 드러나기 시작하는데…', (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '미국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '프라이메이트', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 89, 14184, '인간과 99% 동일한 DNA
성인 남성 2배의 괴력…
가족과 다름없던 침팬지 ‘벤’이 어딘가 이상하다

방학을 맞아 친구들과 함께 하와이 집으로 돌아온 ‘루시’는
오랫동안 가족과 함께 지내온 침팬지 ‘벤’과 재회한다.

‘루시’와 친구들은 아버지가 집을 비운 틈을 타 풀 파티를 열기로 하지만
갑자기 ‘벤’이 돌변, 잔혹한 공격과 함께 폭주를 시작한다.

도망칠 곳도, 도움을 청할 곳도 없는 상황.
‘벤’이 들어올 수 없는 유일한 공간, 수영장에 갇힌 ‘루시’와 친구들은
통제 불능이 된 ‘벤’의 광기 어린 폭주 속에서 필사의 생존을 시작하는데...', (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '미국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '슈가', TO_DATE('2026-01-21', 'YYYY-MM-DD'), 105, 15014, '1형 당뇨 판정을 받은 어린 아들 ‘동명’을 위해 고군분투하다
세상을 바꾸어 버린 엄마의 이야기', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '오늘 밤, 세계에서 이 사랑이 사라진다 해도', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 121, 1150897, '“카미야 토루에 대해 잊지 말 것”

자고 일어나면 전날의 기억을 잃는
‘선행성 기억상실증’에 걸린 소녀 ‘마오리’

“내일의 마오리도 내가 즐겁게 해줄 거야”

누구에게도 기억되지 않는
무색무취의 평범한 소년 ‘토루’

매일 밤 사랑이 사라지는 세계,
그럼에도 불구하고,
다음 날 서로를 향한 애틋한 고백을 반복하는
두 소년, 소녀의 가장 슬픈 청춘담', (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '반지의 제왕: 왕의 귀환', TO_DATE('2017-01-25', 'YYYY-MM-DD'), 263, 5974520, '21세기 가장 위대한 판타지 걸작의 귀환!
<반지의 제왕> 시리즈 확장판 스크린 최초개봉!

모든 힘을 지배할 악의 군주 ‘사우론’의 절대반지가 깨어나고
악의 세력이 세상을 지배해가며 중간계는 대혼란에 처한다.

호빗 ‘프로도’와 그의 친구들, 엘프 ‘레골라스’,
인간 전사 ‘아라곤’과 ‘보로미르’, 드워프 ‘김리’
그리고 마법사 ‘간달프’로 구성된 반지원정대는
평화를 지키기 위해 절대반지를 파괴할 유일한 방법인
반지가 만들어진 모르도르를 향해 목숨을 건 여정을 떠난다.

한편, 점점 세력을 넓혀온 사우론과의 피할 수 없는 전쟁을 앞둔
반지원정대는 드디어 거대한 최후의 전쟁을 시작하는데...', (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '뉴질랜드'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '극장판 짱구는 못말려: 초화려! 작열하는 떡잎마을 댄서즈', TO_DATE('2025-12-24', 'YYYY-MM-DD'), 105, 483495, '떡잎마을 어린이 엔터 페스티벌에서 우승한 떡잎마을 방범대 짱구, 맹구, 철수, 유리, 훈이는
우승 상품으로 인도 엔터 페스티벌 무대에 초청받아, 여행을 만끽한다.
짱구와 맹구는 수상한 잡화점에서 코 모양처럼 생긴 배낭을 발견하고,
맹구는 배낭의 콧구멍에 꽂혀 있는 휴지(?)를 홀린 듯이 자신의 코에 꽂아버린다.
그 순간, 알 수 없는 힘이 맹구에게서 뿜어져 나오는데…!

겉보기에는 평범한 휴지 같은 이 종이의 비밀은 바로,
종이를 코에 꽂는 사람에게 욕망을 불러일으켜
무자비하고 제멋대로인 폭군으로 만들어 버리는 것.

“나에 대해 다 아는 척하지 마”
순둥이 맹구, 흑화해서 폭군으로 대변신! 폭주를 시작한다!', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '부흥', TO_DATE('2026-01-01', 'YYYY-MM-DD'), 90, 22092, '부흥은 하나님이 생명을 살리시는 방법이며, 기독교 신앙은 곧 부흥의 역사이다.
한반도의 1903년 원산과 1907년 평양, 미국 LA 아주사 거리,
영국 웨일즈 탄광, 인도 국경의 카시랜드와 펀잡에서 120년 전,
20세기를 뒤흔든 세계적 부흥은 그렇게 시작되었다.
영화 〈부흥〉은 이 역사의 흐름을 따라
2년 7개월 동안 5개 대륙 70개 도시를 기록한 초대형 다큐멘터리다.
카메라는 과거의 부흥을 넘어서 21세기 지금 이 순간 벌어지고 있는
살아 있는 부흥의 현장을 직접 포착한다.
네팔의 산지에서, 북한의 지하교회에서, 브라질의 거리에서, 인도 델리의 시장 한복판에서…
예수 그리스도는 지금도 살아계시고, 부흥은 멈추지 않았다.
그리고 하나님은 오늘도 한 사람을 찾고 계신다.
ONE SOUL. 부흥을 일으킬 단 한 사람. 바로 당신이다.', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '에반게리온 신극장판 : Q', TO_DATE('2013-04-25', 'YYYY-MM-DD'), 96, 61423, '14년의 세월을 지나 깨어난 신지는
미사토 등 전 네르프 대원들이 결성한 반네르프 조직 “빌레”의 전함 AAA 분더에 있다.
초호기에서 발견된 것은 신지 혼자였고, 아야나미 레이는 없었다.
하지만 신지 탈환을 위해 급습해 온 에반게리온 마크 나인으로부터
레이의 목소리를 들은 신지는 분더를 떠나 네르프로 향한다.
그곳에서 만난 나기사 카오루는 신지에게 변해버린 대지의 모습을 보여주고,
신지는 레이를 구한 것이 지구에 대재앙을 가져온
“니어 서드 임팩트”를 초래했다는 것을 알게 된다.', (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '뽀로로 극장판 스위트캐슬 대모험', TO_DATE('2025-12-11', 'YYYY-MM-DD'), 66, 260738, '“이번 크리스마스가 위험해!”

마녀 ‘버니’의 마법으로 인형이 되어버린 산타 할아버지!
올해의 크리스마스 디저트를 완성할 마법 재료 ‘산타의 토핑’이
디저트 왕국에 전해지지 못하면, 크리스마스는 사라지고 만다.

산타를 대신해 디저트 왕국으로 떠난 뽀로로와 친구들!
하지만 모험 속에서 ‘포비’와 ‘패티’마저 인형으로 변하고,
악당 ‘닥터 초콜레오’로 인해 왕국은 온통 초콜릿에 뒤덮이고 마는데...

과연 뽀로로와 친구들은 모두가 기다리는 크리스마스를 지켜낼 수 있을까?
올겨울, 상상보다 더 달콤하고 짜릿한 디저트 어드벤처가 펼쳐진다!', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '국보', TO_DATE('2025-11-19', 'YYYY-MM-DD'), 175, 207755, '눈앞에서 아버지를 잃고 가부키 명문가
하나이 한지로(와타나베 켄)에게 맡겨진 소년 키쿠오(쿠로카와 소야).

운명이 결정짓는 세계에 이방인으로 뛰어든 키쿠오(요시자와 료)는
명문가의 아들 슌스케(요코하마 류세이)와 부딪히며 라이벌로 성장하게 된다.

서로의 길을 시험하는 치열한 경쟁에 놓인 두 사람.
세상에 단 하나뿐인 이름 국보를 향해 달리기 시작하는데…

최고를 향한 열망, 서로를 뛰어넘어야 한다.', (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '화양연화 특별판', TO_DATE('2025-12-31', 'YYYY-MM-DD'), 108, 48011, '25년 마지막을 장식할 25주년 기념
완벽한 화양연화를 만나다

1962년, 같은 날 같은 아파트로 이사 온 ‘첸 부인’과 ‘차우’.
이사 첫날부터 자주 마주치던 두 사람은
‘차우’의 넥타이와 ‘첸 부인’의 가방이
각자 배우자의 것과 똑같음을 깨닫고 그들의 관계를 눈치챈다.

그 관계의 시작이 궁금해진 두 사람은
비밀스러운 만남을 이어가다, 점점 빠져들고 만다.
안타까운 마음에도 불구하고 사랑하지 않겠다는 약속을 지키기 위해
그들은 결국 이별을 선택하게 된다.

그리고 2001년, 다른 모습으로 재회하게 된 두 사람은
다시 한번 서로를 마주보게 된다.', (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '홍콩'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '극장판 귀멸의 칼날: 무한성편', TO_DATE('2025-08-22', 'YYYY-MM-DD'), 155, 5701348, '혈귀로 변해버린 여동생 네즈코를 인간으로 되돌리기 위해
혈귀를 사냥하는 조직인 《귀살대》에 입대한 카마도 탄지로.
입대 후 동료인 아가츠마 젠이츠, 하시비라 이노스케와 함께
많은 혈귀와 싸우고, 성장하면서 세 사람의 우정과 유대는 깊어진다.

탄지로는 《귀살대》 최고위 검사인 《주》와도 함께 싸웠다.
「무한열차」에서는 염주・렌고쿠 쿄쥬로, 「유곽」에서는 음주・우즈이 텐겐,
「도공 마을」에서는 하주・토키토 무이치로, 연주・칸로지 미츠리와 함께
혈귀를 상대로 격렬한 전투를 벌였다.

그 후 다가올 혈귀와의 결전에 대비해 귀살대원들과 함께
《주》가 주도하는 합동 강화 훈련에 참가해 훈련을 받던 도중
《귀살대》의 본부인 우부야시키 저택에 나타난 키부츠지 무잔.
어르신의 위기에 달려온 《주》들과 탄지로였지만,
무잔의 술수로 의문의 공간으로 떨어지고 말았는데.

탄지로 일행이 떨어진 곳, 그곳은 혈귀의 본거지 《무한성》─
“귀살대”와 “혈귀”의 최종 결전의 포문이 열린다.', (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '물의 연대기', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 128, 3776, '우리는 모두 헤엄치며 살아간다

올림픽 메달을 꿈꾸던 수영 선수 ‘리디아’는
각종 대회에서 상을 휩쓸며 장학금으로 대학에 진학해
폭력과 고통으로 가득 찼던 부모에게서 비로소 벗어난다.

하지만 대학 입학 후 이어진 중독과 방황은
그를 끝없는 갈등으로 몰아넣고
난장판 같던 삶에서 허우적대던 ‘리디아’는
글을 쓰며 새로운 숨, 새로운 인생을 찾게 된다.', (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '프랑스'));

INSERT INTO movie(seq, name, OPEN, runtime, audience, synopsis, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '스노우 폭스 : 마법의 돌을 찾아서', TO_DATE('2026-01-10', 'YYYY-MM-DD'), 71, 18740, '빙하 동굴 속 마법의 돌이 뚝!
사라진 마법의 돌을 찾아 북극을 지켜라!

깊은 빙하 동굴 속, 고대 보물인 매직 퍼핀이 깨지며
마법의 돌 조각이 스노우타운에 떨어진다.
엄청난 힘을 지닌 마법의 돌로 마을은 온통 뒤죽박죽 마법에 걸리고
바다코끼리 ‘오토’는 이를 이용해 북극을 파괴하려는 음모를 꾸민다.

북극여우 ‘스위프티’는 모험가 염소의 도움을 받아
친구들과 함께 사라진 마법의 돌을 찾아 북극을 구하려고 하는데…

올겨울, 댕댕이 북극 여우와 함께 마법의 눈의 세계로 모험을 떠나자!', (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '미국'));


SELECT * FROM movie;
--SELECT * FROM country WHERE name ='콜롬비아';
--SELECT * FROM country WHERE name ='이탈리아';

-- 관련 영화 용 insert 문 @@@@@@@@@@@@@@@@@@@@@@@@
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '당신이 영화를 그만두면 안 되는 30가지 이유: 1막 Warm Up 예열', TO_DATE('2026-01-14', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '오! 마이 고스트', TO_DATE('2022-09-15', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '엘리오', TO_DATE('2025-06-18', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '미국'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '폭설', TO_DATE('2024-10-23', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '극장판 도라에몽: 진구의 그림이야기', TO_DATE('2025-07-16', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '일본'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '엔칸토: 마법의 세계', TO_DATE('2021-11-24', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '콜롬비아'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '귀시', TO_DATE('2025-09-17', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '극장판 닌자보이 란타로: 도쿠타케 닌자대 최강의 군사', TO_DATE('2025-05-14', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '일본'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '행복한 라짜로', TO_DATE('2019-06-20', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '이탈리아'));
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '65', TO_DATE('2023-04-20', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '미국'));
-- 10 개까지
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '수퍼 소닉3', TO_DATE('2025-01-01', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '거룩한 밤: 데몬 헌터스', TO_DATE('2025-04-30', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));


INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '이매큘레이트', TO_DATE('2024-07-17', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '미국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '소주전쟁', TO_DATE('2025-05-30', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '800', TO_DATE('2020-12-10', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '중국'));


INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '레지던트 이블: 라쿤시티', TO_DATE('2022-01-19', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '미국'));




INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '고고다이노 극장판: 얼음공룡의 비밀', TO_DATE('2022-10-05', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));


INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '파과', TO_DATE('2025-04-30', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '나를 모르는 그녀의 세계에서', TO_DATE('2025-05-22', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL,'뉴 노멀', TO_DATE('2023-11-08', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '대한민국'));

-- 20
INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '어벤져스: 둠스데이', TO_DATE('2026-12-31', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '미국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '극장판 엉덩이 탐정: 스타 앤드 문', TO_DATE('2026-02-07', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '지렁이', TO_DATE('2017-04-20', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '러브 라이즈 블리딩', TO_DATE('2024-07-10', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 19), (SELECT seq FROM country WHERE name = '영국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '신 가면라이더', TO_DATE('2024-04-03', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 12), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '슈퍼 마리오 갤럭시', TO_DATE('2026-04-29', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '미국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '이머시브 시네마: 뽀로로 극장판 스위트캐슬 대모험', TO_DATE('2025-12-13', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 0), (SELECT seq FROM country WHERE name = '대한민국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '폭스 헌트', TO_DATE('2025-08-13', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '중국'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '킹덤4: 대장군의 귀환', TO_DATE('2024-11-20', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '일본'));

INSERT INTO movie(seq, name, OPEN, g_seq, ct_seq) 
VALUES (movie_seq.NEXTVAL, '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로', TO_DATE('2024-02-14', 'YYYY-MM-DD'), (SELECT seq FROM grade WHERE name = 15), (SELECT seq FROM country WHERE name = '일본'));
-- 30

SELECT * FROM movie;
