--이 스크립트는 'Customer' 테이블에서
--'고객번호' 속성을 출력한다.

--MariaDB, mySQL 등의 커멘드라인 기반 SQL 서버 클라이언트에서는
--데이터베이스를 사용 하기 전, 'USE' 명령문으로 미리 데이터베이스를 불러와야 한다.
USE Madang;

--해당 명령문들은 'SELECT custid FROM Customer;'와 같이 붙혀도 정상 작동한다.
--하지만 붙이기엔 너무 작은 스크립트에, 분리해두면 학습에 도움이 되어 분리해둔다.
SELECT custid
FROM Customer;

