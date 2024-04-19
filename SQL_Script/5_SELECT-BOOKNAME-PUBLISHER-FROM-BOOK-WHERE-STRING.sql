--이 스크립트는 'Books' 테이블에서
--'출판사' 속성이 '굿 스포츠'가 아닌 튜플에서
--'도서 이름'과 '출판사' 속성을 출력한다.

USE Madang;

--어떤 문자열이 특정 조건에 맞는 것들만 출력하고 싶으면
--'WHERE [속성] {연산자} '문자열''과 같이 입력하면 된다.
SELECT bookname, publisher
FROM Book
WHERE publisher != '굿스포츠';
