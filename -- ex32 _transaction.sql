
-- ex32 _transaction.sql


/*
    트랜잭션 transaction
    
    - 데이터를 조작하는 업무들의 시간적 단위
    - 1개 이상의  dml을 묶어 놓은 단위
    
    ex> 은행에서 >계좌 
     
     트랜잭션 명령어(dcl>tcl)
     
     1.commit 
     
     2.rollback
     
     3.savepoint
     
    
    
*/


    create table tbltrans
    as 
    select name ,buseo,jikwi from tblinsa where city='서울';
    
    select * from tbltrans;
    
    --우리가 하는 행동(sql-insert,update,delete) >어떤 행동을 했는지 반드시 시간순으로 기억
    
    --a
    --트랜잭션이 시작 >종료 > 또 다른 트랜잭션이 시작 > 종료 > 또 다른 트랜잭션 시작..
    
    select * from tbltrans;
    
    delete from tbltrans where name='김말숙';
    
    select * from tbltrans;
    
    --김말숙 되돌리기
    rollback; --현재 트랜잭션에서 발생한 모든 sql를 없었던 일로..
    
      select * from tbltrans;
      
       delete from tbltrans where name='김말숙';
    
      select * from tbltrans; --메모리에서만 사라짐 임시로
      
      commit;  --이전까지의 작업을 책임지고 승인 = 이전 작업은 되돌리지 않겠다.
      
       
        select * from tbltrans; 
    
    
    