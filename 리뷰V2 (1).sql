
-- 리뷰 시퀀스, 테이블 삭제
DROP SEQUENCE review_seq;
DROP TABLE review;

-- 리뷰
-- 시퀀스 생성
CREATE SEQUENCE review_seq;

-- 리뷰 테이블 생성
CREATE TABLE review (
	seq NUMBER PRIMARY KEY,
	expert number NOT NULL,
	name varchar2(30) NOT NULL,		-- 리뷰작성자
	grade number NOT NULL,			-- 별점
	content varchar2(1000) NOT NULL,	-- 리뷰내용
	m_seq number NOT NULL,
	 
	CONSTRAINT fk_review_movie FOREIGN KEY (m_seq) REFERENCES movie(seq)
);

-- 리뷰 insert문
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '남선우', 6, '한때 나의 집이 되어준 사람에게 묻는 안부', (SELECT seq FROM movie WHERE name = '만약에 우리'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '조현나', 7, '안고 갈 추억으로 남길 수 있다면', (SELECT seq FROM movie WHERE name = '만약에 우리'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '467*****', 9, '사랑의 잔상을 응시하는 영화,이별로 완성되는 사랑도 존재한다', (SELECT seq FROM movie WHERE name = '만약에 우리'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '001*****', 8, '그녀는 고향에 왔다는 느낌을 느꼈을까', (SELECT seq FROM movie WHERE name = '만약에 우리'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '최선', 2, '가짜 찬양단의 진짜 목적은', (SELECT seq FROM movie WHERE name = '신의악단'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '318*****', 9, '감동적인 영화입니다 두 번 보았는데 여운이 있네요 예수님믿는 분이든, 안믿는분이든 한번은 볼만한 영화입니다', (SELECT seq FROM movie WHERE name = '신의악단'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '202****', 10, '북한의 실상을 볼 수 있어서 좋았습니다', (SELECT seq FROM movie WHERE name = '신의악단'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '620*****', 10, '가슴을 울리는 감동, 영화 〈신의 악단〉. 꼭 보시길 추천합니다.', (SELECT seq FROM movie WHERE name = '신의악단'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '471***** ', 10, '너무 감동적입니다ㅠㅠ 눈물이 주륵주륵 흘렀네용~', (SELECT seq FROM movie WHERE name = '신의악단'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '송경원', 7, '증오와 분리를 넘어, 극장으로 연결되어, 다음 세대를 향해', (SELECT seq FROM movie WHERE name = '아바타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이자연', 6, '판도라의 화려함을 벗어나 서사로 승부 보는 순간, 음 나는 여기까지!', (SELECT seq FROM movie WHERE name = '아바타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이우빈', 8, '첨단과 고전 사이, 시네마의 유산을 몸소 지키려는 할리우드의 왕', (SELECT seq FROM movie WHERE name = '아바타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '467*****', 8, '연출과 영상미가 좋았다. 꼭 imax로 보시길 추천합니다.', (SELECT seq FROM movie WHERE name = '아바타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '송경원 ', 4, '속 빈 무드에도 살아남은 캐릭터들의 현란한 비주얼', (SELECT seq FROM movie WHERE name = '프로젝트 Y'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이유채', 5, '진탕 속에서도 욕망하는 여자들은 앞을 향한다', (SELECT seq FROM movie WHERE name = '프로젝트 Y'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김경수', 7, '‘신비아파트: 엔드게임’이라 해도 손색없는 팬 서비스, 세련된 비주얼에 오열(서브웨이 레시피는 덤)', (SELECT seq FROM movie WHERE name = '신비아파트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '조현나', 7, '포용, 이해의 태도를 겸비한 성장 서사가 반갑다', (SELECT seq FROM movie WHERE name = '주토피아 2'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이자연', 7, '역차별에 정지한 시즌1보다 소수자의 역사를 찾는 시즌2가 더 ‘유토피아’적', (SELECT seq FROM movie WHERE name = '주토피아 2'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '384*****', 6, '이러한 전개 방식이라면, 향후 코난과 같은 수사물 시리즈로 계속 만들어 질것 같다.', (SELECT seq FROM movie WHERE name = '주토피아 2'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '최선', 6, '충돌할수록 충만해지는 하트의 힘', (SELECT seq FROM movie WHERE name = '하트맨'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '471*****', 4, '저는 보는 내내 조금 불편했습니다 12세인데 애들과 보기엔 다소 불편한 지점들이 있습니다', (SELECT seq FROM movie WHERE name = '하트맨'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '156*****', 5, '사랑은 왔다갔다 반복해서 돌아오는 천국의 계단', (SELECT seq FROM movie WHERE name = '하트맨'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '최선', 7, '전능한 힘을 가질 수 있으나 그러지 않겠다는 의지', (SELECT seq FROM movie WHERE name = '천공의섬 라퓨타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, 'mj0***', 8, '언제 봐도 재밍있다.', (SELECT seq FROM movie WHERE name = '천공의섬 라퓨타'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김소미', 8, '순례자의 심장, 춤추는 장면, 박동하는 사운드로 초월에 다가간다', (SELECT seq FROM movie WHERE name = '시라트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '조현나', 9, '“나는 춤을 출 줄 아는 신만을 믿으리라”', (SELECT seq FROM movie WHERE name = '시라트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '정재현', 8, '통각수용기를 수시로 과부하하는 실용적 굉음', (SELECT seq FROM movie WHERE name = '시라트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이자연', 8, '몸을 부리고, 움직이고, 쓰는 모든 순간이 사실은 ‘광기’였음을', (SELECT seq FROM movie WHERE name = '시라트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 7, '환각과 악몽에 감겨 ‘니체의 밧줄’을 잡다', (SELECT seq FROM movie WHERE name = '시라트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 7, '편두통도 즐겁다. 카우프만의 빼어난 처방!', (SELECT seq FROM movie WHERE name = '이터널 선샤인'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '황진미', 8, '30세 이상, 연애전적 3전 이상 관람가. 사랑이란… 업보다', (SELECT seq FROM movie WHERE name = '이터널 선샤인'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '000*****', 10, '너를 자전한건 나였고, 나를 끌어당긴건 너와의 기억이었다', (SELECT seq FROM movie WHERE name = '이터널 선샤인'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김현수', 8, '오직 살겠다는 각오로, 죽여준다', (SELECT seq FROM movie WHERE name = '직장상사 길들이기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김경수', 7, '처질 때마다 망설임 없이 B급 호러 도파민을 쏟아붓는 샘 레이미 테마파크', (SELECT seq FROM movie WHERE name = '직장상사 길들이기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이자연', 4, '밀도 높은 긴장감에 다소 허름한 당위성', (SELECT seq FROM movie WHERE name = '시스터'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '정재현', 4, '인질과 함께 결박당한 인물별 행동의 동기', (SELECT seq FROM movie WHERE name = '시스터'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 5, '악랄한 폭력과 교활한 광기가 공식대로', (SELECT seq FROM movie WHERE name = '하우스메이드'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이용철', 6, '뒤집고 뒤집고 뒤집어 속 시원할 때까지', (SELECT seq FROM movie WHERE name = '하우스메이드'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김연우', 7, '허무하지만은 않은 헛웃음. 속편의 존재 이유를 납득했다', (SELECT seq FROM movie WHERE name = '하우스메이드'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 4, '몸서리쳐, 2026 액땜용 프레임', (SELECT seq FROM movie WHERE name = '프라이메이트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '최선', 6, '잔혹하고 묵직한 고자극 공포, 준비물은 흐린 눈', (SELECT seq FROM movie WHERE name = '프라이메이트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '317*****', 7, '우리 애도 물고 때린다니까요! https://blog.naver.com/directorhoon/224164208683', (SELECT seq FROM movie WHERE name = '프라이메이트'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이유채', 6, '해야 할 말이 신중한 이야기를 타고 퍼진다', (SELECT seq FROM movie WHERE name = '슈가'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 8, '‘꿈꿀 권리’를 확장시켜준 이들에게 갈채를!', (SELECT seq FROM movie WHERE name = '반지의 제왕: 왕의 귀환'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김봉석', 8, '완결편에 걸맞은 품격과 스펙터클', (SELECT seq FROM movie WHERE name = '반지의 제왕: 왕의 귀환'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '386*****', 10, '운명을 건 최후의 그날이 온다!', (SELECT seq FROM movie WHERE name = '반지의 제왕: 왕의 귀환'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '155*****', 10, '21세기 최고의 영화', (SELECT seq FROM movie WHERE name = '반지의 제왕: 왕의 귀환'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, 'dlt*****', 10, '환상적인 판타지라는 제왕', (SELECT seq FROM movie WHERE name = '반지의 제왕: 왕의 귀환'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이자연', 5, '(맹구 귀를 막으며) 조금만 더 과감했으면 어땠을까', (SELECT seq FROM movie WHERE name = '극장판 짱구는 못말려: 초화려! 작열하는 떡잎마을 댄서즈'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김경수', 6, '발리우드영화인지 뮤지컬인지 모르겠지만 어쨌든 친구가 되고 싶은', (SELECT seq FROM movie WHERE name = '극장판 짱구는 못말려: 초화려! 작열하는 떡잎마을 댄서즈'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '송경원', 8, '애니메이션이 아니다. 에반게리온이다', (SELECT seq FROM movie WHERE name = '에반게리온 신극장판 : Q'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김봉석', 7, '여전히 압도적인, 사실적인 전투, 그러나 산만함', (SELECT seq FROM movie WHERE name = '에반게리온 신극장판 : Q'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, 'mj0***', 7, '복잡하다...', (SELECT seq FROM movie WHERE name = '에반게리온 신극장판 : Q'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, 'ryu**', 8, '극장판은 스토리가 오리지널하고 달라서 언뜻 헷갈렸음요. 극장판 예전편을 보고 조금 이해가 되네요.', (SELECT seq FROM movie WHERE name = '에반게리온 신극장판 : Q'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, 'paj***', 8, '20년 가까이 안 떨어지는 이놈의 중2병', (SELECT seq FROM movie WHERE name = '에반게리온 신극장판 : Q'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '조현나', 6, '영원히 소유할 수 없고, 그래서 아름다운 무대 위의 시간', (SELECT seq FROM movie WHERE name = '국보'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '정재현', 6, '불꽃을 화마로 키우는 어느 예술가의 욕망', (SELECT seq FROM movie WHERE name = '국보'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '박평식', 7, '미치도록 간절하고 아름답게', (SELECT seq FROM movie WHERE name = '국보'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '203*****', 8, '하나만 파는 사람의 일생을 3시간안에 바라본다는건 아름답고 지독한 일이구나', (SELECT seq FROM movie WHERE name = '국보'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '601*****', 9, '아아 아름다워라 가짜가 진짜 보다 아름다울수있는가', (SELECT seq FROM movie WHERE name = '국보'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이용철', 9, '1994년的 화양연화', (SELECT seq FROM movie WHERE name = '화양연화 특별판'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '467*****', 8, '감각적 미장센과 분위기가 다 하는 영화 지나간 시간과 감정에 대해 여운을 남긴다', (SELECT seq FROM movie WHERE name = '화양연화 특별판'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '203*****', 8, '압도적인 음악과 함께 빠져드는', (SELECT seq FROM movie WHERE name = '화양연화 특별판'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이우빈', 7, '소년 만화의 고전성을 현대 애니메이션의 호흡으로', (SELECT seq FROM movie WHERE name = '극장판 귀멸의 칼날: 무한성편'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이용철', 7, '기대한 것과 몰랐던 걸 섞는 특유의 방식대로', (SELECT seq FROM movie WHERE name = '극장판 귀멸의 칼날: 무한성편'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '601*****', 7, '관객과 함께 울고 웃는 영화', (SELECT seq FROM movie WHERE name = '극장판 귀멸의 칼날: 무한성편'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '113*****', 10, '압도적인 영상미. 애니메이션 역사의 고점을 갱신함.', (SELECT seq FROM movie WHERE name = '극장판 귀멸의 칼날: 무한성편'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 0, '384*****', 9, '사운드와 그래픽이 미쳤다. 무조건 극장에서 봐야한다. 2년을 어떻게 기다리나~ T.T', (SELECT seq FROM movie WHERE name = '극장판 귀멸의 칼날: 무한성편'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '남선우', 7, '수렁에서 헤엄치던 여자는 어떻게 자신을 건지고, 말리고, 다시 적시는가', (SELECT seq FROM movie WHERE name = '물의 연대기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '정재현', 7, '증오의 유속, 의식의 흐름. 거세고 날카롭다', (SELECT seq FROM movie WHERE name = '물의 연대기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '김소미', 6, '몸의 기억을 관류하고 트라우마를 용해하는 물의 편집술', (SELECT seq FROM movie WHERE name = '물의 연대기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '이용철', 6, '내 책상 위의 악마: 물에서 나와 손으로 자유를 구하다', (SELECT seq FROM movie WHERE name = '물의 연대기'));
INSERT INTO review (seq, expert, name, grade, content, m_seq) VALUES (review_seq.NEXTVAL, 1, '문주화', 7, '격랑의 파도를 헤쳐나와 새로운 물결 위에 서다', (SELECT seq FROM movie WHERE name = '물의 연대기'));


SELECT * FROM review;
