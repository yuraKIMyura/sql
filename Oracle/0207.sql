--UPPER(), LOWER(), INITCAP()
SELECT ename, LOWER(ename), INITCAP(ename) FROM emp;
SELECT ename, LOWER(ename), INITCAP(ename) FROM emp WHERE ename=UPPER('king');

--LENGTH(), LENGTHB()
SELECT ename, job FROM emp WHERE LENGTH(job)>=6;
SELECT LENGTH('가') FROM DUAL;
SELECT LENGTHB('가') FROM DUAL;
SELECT LENGTHB('A') FROM DUAL;

--SUBSTR()
SELECT MIN(LENGTH(job)) FROM emp;
SELECT job, SUBSTR(job, 1, 2) FROM emp;
SELECT job, SUBSTR(job, 5) FROM emp;
SELECT job, LENGTH(job), SUBSTR(job, LENGTH(job)) AS last_letter FROM emp;
SELECT job, LENGTH(job), SUBSTR(job, -2) AS last_two FROM emp;

--INSTR()
SELECT INSTR('HELLO, ORACLE!', 'L') FROM DUAL;
SELECT INSTR('HELLO, ORACLE!', 'L', 5) FROM DUAL;
SELECT INSTR('HELLO, ORACLE!', 'L', 2, 2) FROM DUAL;

--INSTR()함수와 LIKE연산자 비교
SELECT ename FROM emp WHERE ename LIKE '%S%';
SELECT ename FROM emp WHERE INSTR(ename, 'S')>0;

--REPLACE()
SELECT REPLACE('010-1234-5678', '-') FROM DUAL;
SELECT REPLACE('010-1234-5678', '-', '*') FROM DUAL;
SELECT REPLACE(ename, SUBSTR(ename, 2), '***') FROM emp;
SELECT REPLACE(name, SUBSTR(name, 2, 1), '*') AS masked FROM score;

--LPAD(), RPAD()
SELECT LPAD('oracle', 10, '-') FROM DUAL;
SELECT RPAD('oracle', 10, '-') FROM DUAL;
SELECT LPAD('oracle', 10) FROM DUAL;
SELECT RPAD('oracle', 10) FROM DUAL;
SELECT LPAD(sal, 5) AS sal FROM emp;

--CONCAT()
SELECT CONCAT(empno, ename) AS alias FROM emp;
SELECT CONCAT(empno, CONCAT(' ', ename)) AS alias FROM emp;
SELECT empno || ' ' || ename FROM emp;

--TRIM()
SELECT TRIM('  가나 다_   ') AS trim FROM DUAL;
SELECT '[' || TRIM('     -ORA CLE  -       ') || ']' AS trim FROM DUAL;
SELECT TRIM(LEADING FROM '         -ORACLE -         ') AS trim_leading FROM DUAL;
SELECT TRIM(TRAILING FROM '         -ORACLE -         ') AS trim_trailing FROM DUAL;
SELECT TRIM(LEADING '-' FROM '-         -ORACLE -         -') AS trim_leading_char FROM DUAL;
SELECT TRIM(TRAILING '-' FROM '-         -ORACLE -         -') AS trim_trailing_char FROM DUAL;
SELECT RTRIM('-         -ORACLE -         -', ' -') AS rtrim FROM DUAL;
SELECT LTRIM('-         -ORACLE -         -', ' -') AS rtrim FROM DUAL;