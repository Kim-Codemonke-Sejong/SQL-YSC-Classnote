--이 스크립트는 'Orders' 테이블에서
--'중복 없이' '고객번호' 속성을 출력한다.

USE Madang;

--'중복 없이' 스크립트를 사용할려면,
--'DISTINCT'라는 추가 명령문을 SELECT 문 앞에 붙이면 된다.
SELECT DISTINCT custid
FROM Orders;
