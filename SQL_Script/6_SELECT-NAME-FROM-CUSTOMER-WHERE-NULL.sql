--이 스크립트는 'Customer' 테이블에서
--전화번호가 없는(NULL 상태인) 조건하인 튜플에서
--'고객 이름' 속성을 출력한다.
USE Madang;

--NULL은 특수한 명령어이기에 연산자로는 출력이 불가능하며,
--'WHERE [속성] IS NULL'(NULL인가)와 'WHERE [속성] IS NOT NULL'(NULL이 아닌가)
--로 출력이 가능하다.
SELECT name
FROM Customer
WHERE phone IS NULL;
