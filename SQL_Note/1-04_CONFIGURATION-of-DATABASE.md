# 데이터베이스 시스템의 구성

## 데이터베이스 시스템의 구성

![데이터베이스 시스템의 구성을 보여주는 표](/SQL_picture/DATABASE_CONFIG.png)

## 데이터베이스 언어

데이터베이스 시스템은 전용언어인 ***SQL***을 사용함.

**SQL의 구성**

- 데이터 정의어<sub>_(DDL)_</sub>
> DBMS에 저장된 테이블 구조를 정의하는 데 사용됨

> > _CREATE, ALTER, DROP_

- 데이터 조작어<sub>_(DML)_</sub>
> 데이터를 검색, 삽입, 삭제, 수정하는 데 사용됨

> > _SELECT, INSERT, DELETE, UPDATE_

- 데이터 제어어<sub>_(DCL)_</sub>
> 데이터의 사용권한을 관리함

> > _GRENT, REVOKE_

**SQL의 핵심**

데이터 조작어 중 ```SELECT - FROM - WHERE``` 과 같은 질의문이다.
