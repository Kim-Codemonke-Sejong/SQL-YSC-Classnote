#무결성 제약조건

##키

> 키는 릴레이션에서 **특정 투플을 식별할 때 사용하는 속성(의 집합)**이다.

```

    +--------+--------------+-----------+-------+
    |도서번호|도서이름      |출판사     |가격   |
    +--------+--------------+-----------+-------+
    |1       |축구의 역사   |굿스포츠   |7000   |
    |2       |축구 아는 여자|나무수     |13000  |
    |3       |축구의 이해   |대한미디어 |22000  |
    |4       |골프 바이블   |대한미디어 |35000  |
    |5       |피겨 교본     |굿스포츠   |8000   |
    +--------+--------------+-----------+-------+
    ||
    \/
    키
```

> 키는 **릴레이션끼리의 관계를 맺는 곳**에서도 사용된다.

```

    Madang/Books
    +--------+--------------+-----------+-------+
    |도서번호|도서이름      |출판사     |가격   |
    +--------+--------------+-----------+-------+
    |1       |축구의 역사   |굿스포츠   |7000   |
    |2       |축구 아는 여자|나무수     |13000  |
    |3       |축구의 이해   |대한미디어 |22000  |
    |4       |골프 바이블   |대한미디어 |35000  |
    |5       |피겨 교본     |굿스포츠   |8000   |
    +--------+--------------+-----------+-------+
    
    Madang/Customers
    +--------+----------+--------------+----------------+-------------+
    |고객번호|고객이름  |주민번호      |주소            |전화번호     |
    +--------+----------+--------------+----------------+-------------+
    |1       |박지성    |810101-1111111|영국 맨체스터   |000-5000-0001|
    |2       |김연아    |900101-2222222|대한민국 서울   |000-6000-0001|
    |3       |장미란    |830101-2333333|대한민국 강원도 |000-7000-0001|
    |4       |추신수    |820101-1444444|미국 클리블랜드 |000-8000-0001|
    +--------+----------+--------------+----------------+-------------+

    Madang/Orders
    +--------+----------+-----------+-----------+
    |고객번호|도서번호  |판매가격   |주문일자   |
    +--------+----------+-----------+-----------+
    |1       |1         |7000       |2021-07-01 |
    |1       |2         |13000      |2021-07-03 |
    |2       |5         |8000       |2021-07-03 |
    |3       |2         |13000      |2021-07-04 |
    |4       |4         |35000      |2021-07-05 |
    |1       |3         |22000      |2021-07-07 |
    |4       |3         |22000      |2021-07-07 |
    +--------+----------+-----------+-----------+

```

##키의 종류

- 슈퍼키
- 후보키
- 기본키
- 대리키
- 대체키
- 외래키