--이 스크립트는 'Orders' 테이블에서 
--'주문날짜'가 '2021-07-05'인 조건하에 맞는 튜플에서
--'도서번호'와 '고객번호' 속성을 출력한다.
USE Madang;

--날짜를 검색할려면,
--'WHERE [date가 포함된 테이블] {연산자} 'YEAR-MONTH-DAY''와 같이 검색하면 된다.
SELECT bookid, custid
FROM Orders
WHERE orderdate >= '2021-07-05';
