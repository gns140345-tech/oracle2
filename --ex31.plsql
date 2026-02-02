
--ex31.plsql

/*

        pl/sql
        -oracle procedural language extension to sql
        -기존의 ansi-sql+ 절차 지향(순서가있다) 언어 기능 추가(변수만들기,제어문 등)
        -a 업무 > 자바구현 or pl/sql 구현
        
        프로시저 , procedure
        -메서드, 함수 등...
        -순서가 있는 명령어들의 집합(***)

    종류
    1.익명 프로시저
        -이름이 없다=저장할 필요가 없다  >1회용 코드 작성
        
    2.실명 프로시저
        -저장을하고 재사용하겠다
        = 데이터베이스 객체(db object)
        pl/sql 프로시저 구조
        
    1.4개의 블록으로 구성
        -declare
        -begin
        -exception
        -end
    
    2.declare
    -선언부
    -프로시저 내에서 사용할 변수나 여러가지 객체 등을 선언하는 영역
    -생략 가능
    
    3.begin~end
        -구현부(메서드의 {} 역할)
        -구현된 코드를 작성하는 역할
        -생략 불가
        -구현된 코드란? >>안에다가 ansi sql(쿼리)가 들어있는 메서드 +pl/sql
        -try절 역할
        
        
    4.exception
     -예외처리부
     -catch절 역할
     -생략이 가능
     
    [ declare
            변수 선언;
            객체 선언;]--생략가능
        begin
            업무코드(쿼리 ;
            or pl/sql;
      [  exception
            예외처리;]
        end;
     
        1.자료형
        -ansi sql과 동일
        
        
        2.변수 선언하기
        - 변수명 자료형(길이) [not null][default 값];
        -컬럼 선언과 유사
        
        
        
                
*/

        --ansi-SQL 영억
        SELECT * FROM DUAL;
        
        
        --  DBMS_OUTPUT.PUT_LINE 특징> 옵션설정
        set serveroutput on; --현재 세션에(접속중)만 유효 
        --PL/SQL 영역 >>  프로시저 영역내에서만 실행가능
        DBMS_OUTPUT.PUT_LINE('안녕하세요'); -- SYSO라인
        
        begin
               DBMS_OUTPUT.PUT_LINE('안녕하세요');
               end;
               /
        --PL/SQL 프로시저가 성공적으로 완료되었습니다.



    declare
      --변수명 자료형(길이) [not null][default 값];
      num number;
      name varchar2(30);
      today date;
    begin
    --pl/sql의 대입연산자
       -- num=10;(x)
        num:=10;
        dbms_output.put_line(num);
        
        name :='홍길동';
        dbms_output.put_line(name);
        
        today :=sysdate;
        --today:= to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss');
        dbms_output.put_line( to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'));
    end;
    / --블록 잡아주는역할
    
    declare
        num1 number;
        num2 number;
        num3 number:=30;
        num4 number default 40; --권장
        num5 number not null:=50; -- > 무조건 선언과 동시에 초기화 필수(not null)
    begin
    
     num1:=10;
     dbms_output.put_line(num1);
     --초기화 안한 변수를 바로출력
      dbms_output.put_line('num2:' ||num2); -- null출력
       dbms_output.put_line('num3:' ||num3);
        dbms_output.put_line('num4:' ||num4); --null상태의 변수를 초기화 해주는 역할
       dbms_output.put_line('num5:' ||num5); -- NOT NULL로 정의된 변수는 초기치를 할당하여야 합니다 >
        num3 :=null;
           dbms_output.put_line('num3:' ||num3);  
           --not null은 변수의 상태가 늘 not null이어야한다
          -- num5:=null;
    end;
    /
    
    /*
            변수>>어떤 용도로 사용?
            -일반적인 값을 저장하는 용도
            - select 결과를 저장하는 용도***
            
    
    
    */
    declare 
        vbuseo varchar2(15); --v=variable
    begin
    --ORA-06550: 줄 4, 열9:PLS-00428: 해당 SELECT 문에 INTO 절이 필요합니다.
    --ansi sql의 select문의 결과셋을 pl/sql에게 전달할수없다
        --select buseo from tblinsa where name ='홍길동';
        
      --  vbuseo=   select buseo from tblinsa where name ='홍길동'; 존재 x
         select buseo into vbuseo from tblinsa where name ='홍길동'; --select buseo 값을 vbuseo변수에 넣는다
         dbms_output.put_line(vbuseo);
         
         --변수담는 과정없으면 x
         -- dbms_output.put_line(buseo);
         
         
    
    end;
    /
    --tblinsa > 성과급 받는 직원
    create table tblbonus(
    name varchar2(15)
    );
    
    --1.개발부 부장이 보너스 >select name ?
    --2. tblbonus + insert
    
    select * from tblinsa where buseo ='개발부'and jikwi ='부장';
    insert into tblbonus(name) 
    values('이순애');
    
      insert into tblbonus(name) 
            values(( select  name from tblinsa where buseo ='개발부'and jikwi ='부장'));
            
            
            select * from tblbonus;
            
            --
            
            declare
                    vname varchar(15);
            begin
                    --1
                    select name into vname from tblinsa where buseo ='총무부' and jikwi= '부장';  --into절로 변수보관하게 변경
                    dbms_output.put_line(vname);
                    
                    --2.
                    insert into tblbonus (name) values(vname);
            
            end;
            /
            select * from tblbonus;
            
            
            --select into 절
            --: select문의 결과셋이 1줄일때 
            --:select문의 결과셋이 n줄
            
            
            --1.원자값(단일컬럼)
            --2.다중값(다중컬럼)
            
            declare
--              vname varchar2(15);
--               vbuseo varchar2(15);
--                vjikwi varchar2(15);
--                 vbasicpay number;
            vname tblinsa.name%type;
             vbuseo tblinsa.buseo%type;
              vjikwi tblinsa.jikwi%type;
               vbasicpay tblinsa.basicpay%type;
            begin
            
--                select 
--                name into vnmae, buseo into vbuseo,jikwi into v,basicpay 
--                from tblinsa
--                where name ='홍길동';
--                

             select 
              name , buseo ,jikwi  ,basicpay into vname ,vbuseo, vjikwi, vbasicpay
              from tblinsa;
              where name ='홍길동';
              
              --select into 주의\
              --1. 컬럼의 개수와 변수의개수 일치
              --2. 컬럼순서와 변수 순서 일치
              --3.컬럼과 변수의 자료형 (길이)일치
              dbms_output.put_line(vname);
              dbms_output.put_line(vbuseo);
              dbms_output.put_line(vjikwi);
              dbms_output.put_line(vbasicpay);
            end;
            /
            
            
            /*
                타입 참조
            -사용하는 테이블의 특정 컬럼의 자료형+길이를 알아내서 변수에 적용
            -적용되는 정보
                1.자료형
                2.길이
            */
            declare
                vbuseo tblinsa.buseo%type; --->>자료형을 알아내주ㅜㅁ
            begin
                select buseo into vbuseo from tblinsa where name ='홍길동';
                dbms_output.put_line(vbuseo);
            end;
            /
            
            
                 declare
                --vbuseo tblinsa.buseo%type; --->>자료형을 알아내주ㅜㅁ
                --변수 일일이 다 치기 힘들다
                vrow tblinsa%rowtype; --레코드(모든 컬럼)를 담을 수 있는 변수 >> 집합(배열,객체)
            begin
              --  select num,name ,buseo,jikwi,ibsadate,city,ssn,tel,basicpay,sudang from tblinsa where name ='홍길동';
              --select*from tblinsa where name='홍길동;
              select * into row
              from tblinsa
                where name ='홍길동'; --
                dbms_output.put_line(vrow.name);
                   dbms_output.put_line(vrow.buseo);
                      dbms_output.put_line(vrow.jikwi);
                --가져올 컬럼이 적으면 1대1 가져올게 많으면  row
            end;
            /
            
            /*
            제어문
            1.조건문
                -if
                -case
                
            2.반복문
                -loop(단순 반복)
                -for loop(횟수 반복 - 자바 for문)
                -while loop(조건 반복 - 자바 while)
            
            
            3. 분기문
            
            
            */
            
            declare
                vnum number :=10;
            
            begin
            vnum:=10;
                if vnum >0 then
                    dbms_output.put_line('양수');
             elsif vnum <0 then    
                    dbms_output.put_line('음수');
            else
                dbms_output.put_line('영');
                end if;
                
            end;
            /
            
            drop table tblbonus;
            
            create table tblbonus(
            seq number primary key;         --번호(pk)
            num number not null references tblinsa(num), --직원번호
            bonus number not null  --성과금
            );
            
            --직원 1명 선택 >> 보너스 지급
            --차등 지급
            --a.과장/부장 >basicpay *1.5
            --b.사원/대리 > basicpay *2
            
            --
            declare
                vnum tblinsa.num%type;
                 vbasicpay tblinsa.basicpay%type;
                  vjikwi tblinsa.jikwi%type;
                   vbonus tblbonus.bonus%type;
            begin
            --1
                    select num, basicpay ,jikwi into vnum, vbasicpay, vjikwi
                    from tblinsa
                        where num=1001;
                        
                        --2
                        if(vjikwi ='과장'or vjikwi ='부장') then 
                        vbonus: basicpay *1.5;
                        elsif(vjikwi in('사원','대리')) then
                        vbonus := vbasicpay * 2;
                        end if;
                        
                insert into tblbonus(seq,num,bonus)
                values((selectnvl( max(seq),0)+1 from tblbonus),vnum,vbonus);
                
                end;
                /
                
                select nvl((max(seq),0) from tblbonus;
                select nv1(max(seq),0)+1 from tblbonus;
                
                select
                * 
                from tblbonus b
                inner join tblinsa i
                on i.num=b.num;
                
                
                ----------------------------------------------
                declare
                    vnum number := 1; --루프변수 역할
                
                begin
                
                        loop
                            dbms_output.put_line('vnum');  --0: ORU-10027: buffer overflow, limit of 1000000 bytes >> 무한루프
                            vnum := vnum+1;
                            
                            exit when vnum >10; --break
                        end loop;
                end;
            /
            
          ------------  --for loop
            
            begin
                -- intstream.range(1,10)
                --향상된 for문 역할
                    for i in 1..10 loop
                        dbms_output.put_line(i);
                    end loop;
                
            end;
            
            
            declare
                vnum number :=1;
            
            
            begin
               while vnum<=10 loop
                       dbms_output.put_line(vnum);
                       vnum:=vnum+1;
                end loop;
            end;
            /
            
            ---함수(input > output 둘다 존재)
            --public int sum(int a, int b) >>반드시 매개변수와 리턴값이 존재해야
            
            create or replace function fnsum(
            a  number, 
            b number
            ) return number
            
            is  --=declare
                 --변수 선언
                
      
            begin 
            
            return a+b;
            
            end fnsum;
            /
            
            select 10,20, fnsum(10,20) from dual;
            
            --1.성별 작업을 자주하는 업무 >>매번 작성해야함
            --2.성별작업을 다른 팀원들도 하는 경우 >>오타
            select 
            name,ssn,basicpay,
--            case
--                when substr(ssn,8,1) ='1' then '남자'
--                  when substr(ssn,8,1) ='2' then '여자'
--            end as gender
        fngender(ssn) as gender,
        
--        case
--            when jikwi in('과장','부장') then (basicpay+sudang) * 1.5
--             when jikwi in('사원','대리') then (basicpay+sudang) * 2
--        end as bonus
        fnbonus(jikwi,basicpay,sudang) as bonus
            from tblinsa;
            
            
            create or replace function fngender(
                ssn varchar2
            )return varchar2
            is
            
            begin
            
                    if substr(ssn,8,1)= '1' then
                    return '남자';
                    elsif substr(8,1) ='2' then
                    return '여자';
                    else
                        return null;
                    end if;
            end fngender;
            /
            
            create or replace function fnbonus(
                    jikwi varchar2,
                    basicpay number,
                    sudang number
            )return number
            is
                vbonus number;
            begin
                
                if jikwi in('과장','부장') then
                    vbonus :=( basicpay + sudang) * 1.5;
                elsif jikwi in('사원','대리') then
                    vbonus :=( basicpay + sudang) * 2;
                end if;
                
                return vbonus;
                
            end fnbonus;
            /
            
            
            /*
                trigger트리커
                -선언 > 호출(사용): x >> 일반적인 메서드나 함수
                -선언 > 감시 상태(대기상태) > 이벤트 발생 >> 호출(사용)
                
                -트리거 선언( 누구(=테이블)를 감시(insert/delete/update)해라!!+명령)
                    >이벤트 발생 > 트리거 자동으로 실행
                    
                    
            ㅡ트리거 호출
             -개발자가 아닌 오라클 시스템이 호출
             - 방범 시스템역할
             
             트리거 구문
             create or replace trigger  트리거명
                before |after
                insert update delete
                on table
                [for each row]
             declare
                선언부;
             begin
                구현부;
             end;
            */
            
            --tblinsa 직원 삭제(퇴사)
            --월요일에는 퇴사 불가능
            
            delete from tblinsa where num =1001;  --12:44:51트리거가 실행되었습니다
            
            create or replace trigger trginsa  --cctv 감시조건  >>tblinsa를 감시하고 있다가 delete되기 직전에 밑에 begin 구문을 실행
                before
                delete
                on tblinsa
                
                
            begin
                dbms_output.put_line(to_char(sysdate,'hh24:mi:ss') ||'트리거가 실행되었습니다.');
                
                --월요일 퇴사 불가능
                if to_char(sysdate,'dy') ='월' then
                
                --강제로 에러발생
                --throw new exception()// 예외 던지기
                
                -- -20000~29999
                raise_application_error(-20001,'월요일에 퇴사 불가능');
                
                end if;
            end trginsa;
            /
            
            --트리거 상태
            select trigger_name, status from user_triggers; --system테이블
            
            --트리거 중지
            alter trigger trginsa disable;
         
            --트리거 시작(cctv전원 on)   
           alter trigger trginsa enable;
           
           rollback;
           
           
           
           
           
           --로그 트리거
           --tbldiary > 트리거 > 사건 발생 > 로그
           
           select * from tbldiary;
           
           create table tbllogdiary(
            seq number primary key,  --pk
            message varchar2(500) not null, --메세지
            regdate date default sysdate not null -- 발생시각
           );
           
           create sequence seqlogdiary;
           
           --tbldiary >>사건발생기 >> tbldiary에 기록
           
           create or replace trigger trgdiary
                after       --사건이 터지고 난 이후에
                insert or update or delete
                on tbldiary
           declare
                vmessage tbllogdiary.message%type;
           begin
                dbms_output.put_line('trgdiary  호출됨');
                
            if inserting then 
                   dbms_output.put_line('trgdiary  호출됨-insert'); --insert에만 반응   trgdiary  호출됨-insert
                   vmessage :='새로운항목이 추가.';
            elsif updating then
                     dbms_output.put_line('trgdiary  호출됨-update');
                          vmessage :='기존항목이 수정.';
            elsif deleting then
                     dbms_output.put_line('trgdiary  호출됨-delete');
                          vmessage :='기존항목이 삭제.';
            end if;
              insert into tbllogdiary values(seqlogdiary.nextval,vmessage,default);
              
           end trgdiary;
           /
           
           insert into tbldiary values(11,'배불러요.','추움',sysdate);
           
           update tbldiary set subject ='너무 배불러요' where seq =11;
           
           rollback;
           
           delete from tbldiary where seq =9;
           
           select * from tbllogdiary; --통계 or 차트
           
           
 trgdiary  호출됨
1 행 이(가) 삽입되었습니다.
trgdiary  호출됨
1 행 이(가) 업데이트되었습니다.
trgdiary  호출됨
1 행 이(가) 삭제되었습니다.
           
           
           
           for each 유무
           
           1. 무 
           -문장 단위 트리거
           -table level trigger
           -테이블에서 발생한 사건 자체가 중요한 경우
           
           2. 유
           -행 단위 트리거
           -그 발생 사건이 어떤 레코드에서 적용되었는지 중요한 경우
           
           
           select * from tbldiary;
           
           create or replace trigger trgdiary
                after
                delete
                on tbldiary
               for each row
           declare
           
           begin
                --:old,  :new >의사 레코드, 상관 변수
                dbms_output.put_line('레코드가 삭제되었스빈다'|| :old.seq );  --레코드가 삭제되었스빈다9 삭제된 sequence값을 알려줌 for each row 가 붙었을때만
           end trgdiary;                                                  --ORA-04082: 테이블 레벨 트리거에서 NEW 혹은 OLD 참조는 허용되지 않습니다  >> for each row가 안붙으면 뜸
           /
           
           select * from tblmen; 
           
           create or replace trigger trgmen
                before
                --update >>old new 둘다 가능
                insert-->> new만 가능
                
                --delete  >> new가 없다?? old만 참조
                on tblmen
                for each row -- :old, 나 :new 를 사용하겟다
           
           
           declare
           
           begin
                dbms_output.put_line('----------------');
                 dbms_output.put_line('수정 전 나이:   '|| :old.age);    --old    --수정 전 레코드
                  dbms_output.put_line('수정 후 나이:   '|| :new.age);  --new     --수정 후 레코드
                   dbms_output.put_line('전 여친: ' || : old.couple);
                    dbms_output.put_line('현 여친: ' || : new.couple);
                     dbms_output.put_line('----------------');
           end trgmen;
           /
           
           update tblmen set age =age +1 where name ='홍길동';
           update tblmen set couple ='홍현희' where name ='홍길동 ';
           select * from tblwomen;
         
           
           insert into tblmen values('강아지',3,30,10,null);
           delete from tblmen where name='홍길동';
           
           
           --회원테이블, 게시판테이블
           --포인트 정책
           --1.글 작성 > 포인트 +100
           --2.글 삭제 > 포인트 -50
           
           drop table tbluser;
           
           drop table tblboard;
           drop table tbluserdetails;
           
           create table tbluser(
            id varchar2(30) primary key,
            point number not null
           );
           
           create table tblboard(
                seq number not null,
                subject varchar2(2000) not null,
                id varchar2(30) not null references tbluser(id)
           );
           
           insert into tbluser values('hong' ,1000);
           
           --1. 글을 쓴다(삭제한다)
           --2. 포인트를 더한다 (포인트를 뺀다)
           
           --case 1. 직접 제어
           --장점 :단순하다
           --단점 : 실수 > 일부 업무 누락가능성;;
           --1.1글쓰기
           insert into tblboard values(1,'안녕하세요.','hong'); --new
           
           --1.2 포인트 누적
           update tbluser set point =point +100 where id='hong';
           
           --1.3 글삭제
           delete from tblboard where seq =1;
                   update tbluser set point =point -50 where id='hong';
           select * from tblboard;
           select * from tbluser; --1000>1100
           
           
           
           ----------------------------------------
           
           --case2.트리거로 조작
           create or replace trigger trgboard
           after
           insert or delete
           on tblboard 
           for each row
           
           begin
           
            if inserting then --글쓰기
                update tbluser set point = point +100 where id = : new.id;
            elsif deleting then --글삭제
                   update tbluser set point = point -50 where id = : old.id;
            end if;
           
           
           end trgboard;
           /
           select * from tbluser;
           
           --장단점 견해 차이
           --1.본 업무에 집중할 수 있는 환경을 만들어 준다.(게시판 업무 집중, 포인트 업무  x)
           --2. 본 업무 이외의 사건을 알 수가 없다 (포인트 증감이 발생하는지 알 수 없다)
           insert into tblboard values(2, '게시판입니다.','hong');
           
                delete from tblboard where seq =2;
           --------------------------------------------------------------
           
           /*
           
           인덱스 ,index
           - 검색을 빠른 속도로 하기 위해 사용되는 도구
           
           데이터베이스의 데이터 검색 방식
           -어떤 데이터를 검색 >> 처음~끝까지 차례대로 검색> table full scan
           -검색을 위한 특정 컬럼 선택 > > 그 데이터만 별도의 테이블로 복사 > 정렬(가나다 순으로 정렬) >>이걸 인덱스(색인이라고 부름
           
           
           
           
           */
           select * from tblinsa where name='엄용수';
           
            select count(*) from tbladdressbook;
            
            create table tblindex
            as
            select * from tbladdressbook;
            
            select count(*) from tblindex;
            insert into tblindex select * from tblindex;
           
           
           --시간확인
           set timing on;
           
           --인덱스 없이 검색
           select count(*) from tblindex where name ='최민기';
           
           --> 14초
           
           --인덱스 생성
           create index idxname
            on tblindex(name);
         -->31초
           
           --인덱스 사용해서 검색
              select count(*) from tblindex where name ='최민기';
           
             --힌트 > 오라클에게 보조명령
                 select /*+ index(tblindex idxname) */
                 count(*) from tblindex where name ='최민기';
      --> 0.012초
           
           --단일 인덱스 (컬럼 1개 사용한것)
           create index idxhometown on tblindex(hometown);
           
               select /*+ index(tblindex idxhometown) */
                 count(*) from tblindex where hometown ='서울';
                 
                 --복합인덱스(컬럼2개사용)
                 create index idxhometownjob on tblindex(hometown,job);  -- 두 컬럼을 같이 인덱스로
                 
                    select /*+ index(tblindex idxhometownjob) */
                 count(*) from tblindex where hometown ='서울' and job='학생';  --index가 안걸린 컬럼과 같이 쓰면 느림
                 
                 select * from tbladdressbook  where rownum <= 10;
                 
                 --3.함수기반 인덱스
                 
                 create index idxemail on tblindex (substr(email,instr(email,'@')));
                 
                 drop index idxemail;
                 
                 select
                  count (*) from tblindex where substr(email,instr(email,'@')) ='@naver.com';
                  
                  
                  select  substr(email,instr(email,'@')) from tbladdressbook  where rownum <= 10;
                 
                 behavior@gmail.com
whole@daum.net
lead@naver.com
staff@daum.net
problem@yahoo.com
movie@daum.net
art@live.com
already@naver.com
answer_area@live.com
bank_well@daum.net
           
           
           
           --인덱스를 걸지 않아도 자동으로 걸리는 경우
           --1.pk
           --2.unique 은 그냥 기본으로 인덱스가 걸려있어서 기본검색 속도가 빠름
           select * from tblinsa where num = 1010;  -- pk 경과시간 0.003
                      
           select * from tblinsa where num = '최민기'; --데이터가 적어서 0.002
           
           select * from tbladdressbook where seq= 1900;
               select * from tbladdressbook where name= '박신영';
               
               drop index idxname;
               /*
               인덱스를 사용해야 하는 상황
               1.테이블에 레코드가 많을 때
               2.where 절에서 사용하는 횟수가 많은 컬럼에 적용(****
               3. 인덱스 손익분기점 >검색 결과가 원본 테이블의 10~15%이하인 경우 >> 오라클이란 단어가 500p중 3개만 있을때 이득
               
               
               인덱스를 사용하지 말아야 하는 상황
               1.테이블에 레코드가 적을 때( 풀스캔과 차이 거의 없음)
                2. 인덱스 손익분기점 >검색 결과가 원본 테이블의 15%이상인 경우 >>오라클이란 단어가 500p중에 100p에 있을 경우
                3. 해당 테이블이 삽입, 수정,삭제가 빈번할 경우 절대 인덱스 xxxx
                
                    프로젝트 마지막  >> 부하가걸리는 검색 작업 선별 >인덱스 생성  +시간차테스트
               
               */