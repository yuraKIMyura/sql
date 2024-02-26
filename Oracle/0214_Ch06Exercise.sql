--1
SELECT empno,
        RPAD(SUBSTR(empno, 1, 2), 4, '*') AS masking_ename,
        ename,
        RPAD(SUBSTR(ename, 1, 1), length(ename), '*') AS masking_ename
FROM emp
WHERE LENGTH(ename) BETWEEN 5 AND 6;

--2
SELECT empno, ename, sal,
    TRUNC(sal/21.5, 2) AS DAY_PAY,
    ROUND(sal/(21.5*8), 1) AS TIME_PAY
FROM emp
ORDER BY empno;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY/MM/DD';
--3
SELECT empno, ename, hiredate,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate, 3), '¿ù'), 'YYYY-MM-DD') AS r_job,
    NVL2(comm, TO_CHAR(comm), 'N/A') AS comm
FROM emp
ORDER BY empno;

--4
SELECT empno, ename, mgr,
DECODE(SUBSTR(mgr, 0, 2),
    null, '0000',
    '75', '5555',
    '76', '6666',
    '77', '7777',
    '78', '8888',
    mgr) AS chg_mgr
FROM emp
ORDER BY empno;