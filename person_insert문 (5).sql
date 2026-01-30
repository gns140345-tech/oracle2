insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '홍길동', 'm', '1980-07-12');

--사람 번호, 사람 이름, 성별, 생년월일


insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '김도영', 'f', '1970-11-05'); --사람1, 김도영

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '구교환', 'm', '1982-12-14'); --사람2, 구교환

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '문가영', 'f', '1996-07-10'); --사람3, 문가영
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '신정근', 'm', '1966-09-26'); --사람4, 신정근

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '김형협', 'm', '1900-01-01'); --사람5, 김형협 --생년월일 불명

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '박시후', 'm', '1978-04-03'); --사람6, 박시후

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '정진운', 'm', '1991-05-02'); --사람7, 정진운

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '태항호', 'm', '1983-07-22'); --사람8, 정진운
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '제임스카메론', 'm', '1954-08-16'); --사람9, 제임스카메론

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '샘워싱턴', 'm', '1976-08-02'); --사람10, 샘워싱턴
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '조샐다나', 'f', '1978-06-19'); --사람11, 조샐다나
        
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '시고니위버', 'f', '1949-10-08'); --사람12, 시고니위버
        
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '존랜도', 'm', '1960-07-23'); --사람13, 존랜도     
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '릭자파', 'm', '1956-05-08'); --사람14, 릭자파     

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '딜런콜', 'm', '1900-01-01'); --사람15, 딜런콜 --생년월일 미정        
 
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '마저리심킨', 'f', '1952-01-01'); --사람16, 마저리심킨 --생년월일 미정        

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '이환', 'm', '1979-09-15'); --사람17, 이환         
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '한소희', 'f', '1994-11-18'); --사람18, 한소희     
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '전종서', 'f', '1994-07-05'); --사람19, 전종서    

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '김신록', 'f', '1981-03-24'); --사람20, 김신록  
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '오유경', 'f', '1900-01-01'); --사람21, 오유경 --생년월일 불명
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '이성화', 'm', '1986-12-08'); --사람22, 이성화 
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '최우석', 'm', '1900-01-01'); --사람23, 최우석  --생년월일 불명   
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '김종민', 'm', '1900-01-01'); --사람24, 김종민  --생년월일 불명  

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '신용우', 'm', '1976-03-19'); --사람25, 신용우  

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '재러드부시', 'm', '1974-06-12'); --사람26, 재러드부시 
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '지니퍼굿윈', 'f', '1978-05-22'); --사람27, 지니퍼굿윈 

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '최원섭', 'm', '1979-11-01'); --사람28, 최원섭

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '권상우', 'm', '1976-08-08'); --사람29, 권상우
    
insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '이베트메리노', 'f', '1900-01-01'); --사람29, 이베트메리노 --생년월일 불명    

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '마이클저키노', 'm', '1967-10-10'); --사람30, 마이클저키노     

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '미야자키하야오', 'm', '1941-01-05'); --사람31, 미야자키     

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '타나카마유미', 'f', '1955-01-15'); --사람32, 타나카마유미     

insert into person (seq, name, gender, birth)
    values (person_seqNum.nextval, '올리베르락세', 'm', '1982-04-11'); --사람33, 올리베르락세


------------------------------------------------------------------------------------------
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 1));
        
--배우 번호, 사람 번호

insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 2)); --배우1, 사람2 (구교환)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 3)); --배우2, 사람3 (문가영)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 4)); --배우3, 사람4 (신정근)
  
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 6)); --배우4, 사람6 (박시후)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 7)); --배우5, 사람7 (박시후)        
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 8)); --배우6, 사람8 (정진운)  
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 10)); --배우7, 사람10 (샘)     
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 11)); --배우8, 사람11 (샐다나) 
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 12)); --배우9, 사람12 (시고니)         
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 18)); --배우10, 사람18 (한소희)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 19)); --배우11, 사람19 (전종서)

insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 20)); --배우12, 사람20 (김신록)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 25)); --배우13, 사람25 (신용우)
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 27)); --배우14, 사람27 (지니퍼) 
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 29)); --배우15, 사람29 (권상우) 
        
insert into actor (seq, p_seq)
    values (actor_seqNum.nextVal, 
        (select seq from person where seq = 32)); --배우16, 사람32 (권상우)         

------------------------------------------------------------------------------------------
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '홍길동', '주역', 
            (select seq from actor where seq = 1),
                (select seq from movie where seq = 1));
                
-- (출연배우번호, 배역이름, 주/조연, 배우번호, 영화번호)

insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '은호', '주역',  --출연배우1
            (select seq from actor where seq = 1), --배우1(구교환)
                (select seq from movie where seq = (만약에 우리 영화번호))); --만약에우리 영화번호(미정)
  
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '정원', '조연',  --출연배우2
            (select seq from actor where seq = 2), --배우2(문가영)
                (select seq from movie where seq = (만약에 우리 영화번호))); --만약에우리 영화번호(미정)
   
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '은호', '조연',  --출연배우3
            (select seq from actor where seq = 3), --배우3(신정근)
                (select seq from movie where seq = (만약에 우리 영화번호))); --만약에우리 영화번호(미정)
  
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '교순', '주역',  --출연배우4
            (select seq from actor where seq = 4), --배우4(박시후)
                (select seq from movie where seq = (신의악단 영화번호))); --신의악단 영화번호(미정)
     
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '김대위', '조연',  --출연배우5
            (select seq from actor where seq = 5), --배우5(정진운)
                (select seq from movie where seq = (신의악단 영화번호))); --신의악단 영화번호(미정)
            
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '김성철', '조연',  --출연배우6
            (select seq from actor where seq = 6), --배우6(태항호)
                (select seq from movie where seq = (신의악단 영화번호))); --신의악단 영화번호(미정)
  
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '제이크설리', '주역',  --출연배우7
            (select seq from actor where seq = 7), --배우7(샘)
                (select seq from movie where seq = (아바타(불) 영화번호))); --아바타(불) 영화번호(미정)
     
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '네이터리', '조연',  --출연배우8
            (select seq from actor where seq = 8), --배우8(샐다나)
                (select seq from movie where seq = (아바타(불) 영화번호))); --아바타(불) 영화번호(미정)
         
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '키리', '조연',  --출연배우9
            (select seq from actor where seq = 9), --배우9(시고니)
                (select seq from movie where seq = (아바타(불) 영화번호))); --아바타(불) 영화번호(미정)
                 
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '미선', '주역',  --출연배우10
            (select seq from actor where seq = 10), --배우10(한소희)
                (select seq from movie where seq = (프로젝트y 영화번호))); --프로젝트y 영화번호(미정)
    
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '도경', '조연',  --출연배우11
            (select seq from actor where seq = 11), --배우11(전종서)
                (select seq from movie where seq = (프로젝트y 영화번호))); --프로젝트y 영화번호(미정)
   
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '가영', '조연',  --출연배우12
            (select seq from actor where seq = 12), --배우12(전종서)
                (select seq from movie where seq = (프로젝트y 영화번호))); --프로젝트y 영화번호(미정)
     
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '강림', '주역',  --출연배우13
            (select seq from actor where seq = 13), --배우13(전종서)
                (select seq from movie where seq = (신비아파트 영화번호))); --신비아파트 영화번호(미정)
      
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '주디', '주역',  --출연배우14
            (select seq from actor where seq = 14), --배우14(지니퍼)
                (select seq from movie where seq = (주토피아 영화번호))); --주토피아 영화번호(미정)
      
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '승민', '주역',  --출연배우15
            (select seq from actor where seq = 15), --배우15(권상우)
                (select seq from movie where seq = (하트맨 영화번호))); --하트맨 영화번호(미정)
          
insert into actorList (seq, name, main, a_seq, m_seq)
    values (actorList_seqNum, '파즈', '주역',  --출연배우16
            (select seq from actor where seq = 16), --배우16(타나카)
                (select seq from movie where seq = (라퓨타 영화번호))); --라퓨타 영화번호(미정)
             
    
      
                   
------------------------------------------------------------------------------------------
insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '감독');
    
-- (스태프직업번호, 직업명)

insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '감독'); --1, 감독

insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '제작'); --2, 제작

insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '각본'); --3, 각본
    
insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '미술'); --4, 미술
    
insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '캐스팅'); --5, 캐스팅
    
insert into staffRole (seq, name)
    values (staffRole_seqNum.nextVal, '음악'); --6, 음악

------------------------------------------------------------------------------------------
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal, 
            (select seq from person where seq = 1),
                (select seq from staffRole where seq = 1));

--(스태프번호, 사람번호, 스태프직업번호)

insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프1번
            (select seq from person where seq = 1), --김도영
                (select seq from staffRole where seq = 1)); --감독
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프2번
            (select seq from person where seq = 5), --김형협
                (select seq from staffRole where seq = 1)); --감독

insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프3번
            (select seq from person where seq = 9), --제임스
                (select seq from staffRole where seq = 1)); --감독
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프4번
            (select seq from person where seq = 13), --존랜도
                (select seq from staffRole where seq = 2)); --제작
            
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프5번
            (select seq from person where seq = 14), --릭자파
                (select seq from staffRole where seq = 3)); --각본     
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프6번
            (select seq from person where seq = 15), --딜런콜
                (select seq from staffRole where seq = 4)); --미술                    
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프7번
            (select seq from person where seq = 16), --마저리
                (select seq from staffRole where seq = 5)); --캐스팅     
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프8번
            (select seq from person where seq = 17), --이환
                (select seq from staffRole where seq = 1)); --감독     
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프9번
            (select seq from person where seq = 21), --오유경
                (select seq from staffRole where seq = 3)); --각본              
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프10번
            (select seq from person where seq = 22), --이성화
                (select seq from staffRole where seq = 6)); --음악    
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프11번
            (select seq from person where seq = 23), --최우석
                (select seq from staffRole where seq = 1)); --감독   
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프12번
            (select seq from person where seq = 24), --김종민
                (select seq from staffRole where seq = 3)); --각본  
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프13번
            (select seq from person where seq = 26), --재러드
                (select seq from staffRole where seq = 1)); --감독  
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프14번
            (select seq from person where seq = 28), --최원섭
                (select seq from staffRole where seq = 1)); --감독
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프15번
            (select seq from person where seq = 29), --이베트
                (select seq from staffRole where seq = 2)); --제작  
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프16번
            (select seq from person where seq = 30), --마이클
                (select seq from staffRole where seq = 6)); --음악
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프17번
            (select seq from person where seq = 31), --미야자키
                (select seq from staffRole where seq = 1)); --감독
                
insert into staff (seq, p_seq, sr_seq)
    values (staff_seqNum.nextVal,   --스태프18번
            (select seq from person where seq = 33), --올리베르
                (select seq from staffRole where seq = 1)); --감독
            
------------------------------------------------------------------------------------------
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum,
            (select seq from movie where seq = 1),
                (select seq from staff where seq = 1));

--(참여내용번호, 영화번호, 스태프번호)

insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum,    --참여내용1번
            (select seq from movie where seq = (만약에 우리 영화번호)), --만약에우리 영화번호(미정)
                (select seq from staff where seq = 1)); --스태프1번(김도영)
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용2번
            (select seq from movie where seq = (신의악단 영화번호)), --신의악단 영화번호(미정)
                (select seq from staff where seq = 2)); --스태프2번(김형협)
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용3번
            (select seq from movie where seq = (아바타(불) 영화번호)), --아바타(불) 영화번호(미정)
                (select seq from staff where seq = 3)); --스태프3번(제임스)       
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용4번
            (select seq from movie where seq = (아바타(불) 영화번호)), --아바타(불) 영화번호(미정)
                (select seq from staff where seq = 4)); --스태프4번(존랜도)  
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용5번
            (select seq from movie where seq = (아바타(불) 영화번호)), --아바타(불) 영화번호(미정)
                (select seq from staff where seq = 5)); --스태프5번(릭자파)                  
               
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용6번
            (select seq from movie where seq = (아바타(불) 영화번호)), --아바타(불) 영화번호(미정)
                (select seq from staff where seq = 6)); --스태프6번(딜런콜)                  
        
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용7번
            (select seq from movie where seq = (아바타(불) 영화번호)), --아바타(불) 영화번호(미정)
                (select seq from staff where seq = 7)); --스태프7번(마저리)                                
               
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용8번
            (select seq from movie where seq = (프로젝트y 영화번호)), --프로젝트y 영화번호(미정)
                (select seq from staff where seq = 8)); --스태프8번(이환)   
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용9번
            (select seq from movie where seq = (프로젝트y 영화번호)), --프로젝트y 영화번호(미정)
                (select seq from staff where seq = 9)); --스태프9번(오유경)
               
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용10번
            (select seq from movie where seq = (프로젝트y 영화번호)), --프로젝트y 영화번호(미정)
                (select seq from staff where seq = 10)); --스태프10번(이성화)
               
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용11번
            (select seq from movie where seq = (신비아파트 영화번호)), --신비아파트 영화번호(미정)
                (select seq from staff where seq = 11)); --스태프11번(최우석)
             
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용12번
            (select seq from movie where seq = (신비아파트 영화번호)), --신비아파트 영화번호(미정)
                (select seq from staff where seq = 12)); --스태프12번(김종민) 
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용13번
            (select seq from movie where seq = (주토피아 영화번호)), --주토피아 영화번호(미정)
                (select seq from staff where seq = 13)); --스태프13번(재러드)                 
             
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용14번
            (select seq from movie where seq = (하트맨 영화번호)), --하트맨 영화번호(미정)
                (select seq from staff where seq = 14)); --스태프14번(최원섭) 
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용15번
            (select seq from movie where seq = (주토피아 영화번호)), --주토피아 영화번호(미정)
                (select seq from staff where seq = 15)); --스태프15번(이베트)  
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용16번
            (select seq from movie where seq = (주토피아 영화번호)), --주토피아 영화번호(미정)
                (select seq from staff where seq = 16)); --스태프16번(마이클)  
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용17번
            (select seq from movie where seq = (라퓨타 영화번호)), --라퓨타 영화번호(미정)
                (select seq from staff where seq = 17)); --스태프17번(미야자키)  
                
insert into staff(seq, m_seq, s_seq)
    values(staffList_seqNum, --참여내용17번
            (select seq from movie where seq = (시라트 영화번호)), --시라트 영화번호(미정)
                (select seq from staff where seq = 18)); --스태프18번(올리베르)
                
