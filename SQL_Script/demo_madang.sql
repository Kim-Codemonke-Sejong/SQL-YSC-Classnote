--이 스크립트는 
--'Book', 'Customer', 'Imported_book', 'Orders' 테이블이 들어있는
--'Madang' 데이터베이스를 생성한다.

CREATE DATABASE IF NOT EXISTS Madang;
-- GO

-- GO 명령어는 T-SQL 문은 아니지만 현재까지 명령어를 SQL Server에 보내서 실행시키는 역할을 한다. 
-- 즉 GO 명령어는 명령어를 묶어서 배치로 서버에 보내는 역할을 한다.
--만약 해당 명령문이 있는 체로 mySQL 등 다른 SQL 서버에서 실행된다면, 컴파일 오류를 발생시킨다.

-- Book, Customer, Orders 테이블 생성
USE Madang;
CREATE TABLE IF NOT EXISTS Book (
    bookid    INT PRIMARY KEY,
    bookname  VARCHAR(40),
    publisher VARCHAR(40),
    price     INT 
);

CREATE TABLE IF NOT EXISTS Customer (
    custid     INT PRIMARY KEY,
    name       VARCHAR(40),
    address    VARCHAR(40),
    phone      VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Orders (
    orderid	INT PRIMARY KEY,
    custid	INT REFERENCES Customer(custid),
    bookid	INT REFERENCES Book(bookid),
    saleprice   INT,
    orderdate   DATE
);


-- Book, Customer, Orders 데이터 생성
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구 아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '역도 단계별 기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전', NULL);

-- 주문(Orders) 테이블의 책값은 할인 판매를 가정함
INSERT INTO Orders VALUES (1, 1, 1, 6000, '2021-07-01'); 
INSERT INTO Orders VALUES (2, 1, 3, 21000, '2021-07-03');
INSERT INTO Orders VALUES (3, 2, 5, 8000, '2021-07-03'); 
INSERT INTO Orders VALUES (4, 3, 6, 6000, '2021-07-04'); 
INSERT INTO Orders VALUES (5, 4, 7, 20000, '2021-07-05');
INSERT INTO Orders VALUES (6, 1, 2, 12000, '2021-07-07');
INSERT INTO Orders VALUES (7, 4, 8, 13000, '2021-07-07');
INSERT INTO Orders VALUES (8, 3, 10, 12000, '2021-07-08'); 
INSERT INTO Orders VALUES (9,2, 10, 7000, '2021-07-09'); 
INSERT INTO Orders VALUES (10, 3, 8, 13000, '2021-07-10');
GO

-- 여기는 3장에서 사용되는 Imported_book 테이블
CREATE TABLE Imported_Book (
  bookid      INT,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       INT 
);
INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);
INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);


