-- ORACLE DATA BASE

CREATE TABLE itpay(
payno   NUMBER(7)   NOT NULL,
    part    VARCHAR(20) NOT NULL,
    sawon   VARCHAR(10) NOT NULL,
    age     NUMBER(3)   NOT NULL,
    address VARCHAR(50) NOT NULL,
    month   CHAR(6)     NOT NULL,
    gdate   DATE        NOT NULL,
    bonbong NUMBER(8)   DEFAULT 0,
    tax     NUMBER(7)   DEFAULT 0,
    bonus   NUMBER(7)       NULL,
    family  NUMBER(7)       NULL,
    PRIMARY KEY(payno)
);

INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(1, '������', '���浿', 27, '��⵵ ������', '200801', sysdate, 1530000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(2, '������', '���浿', 30, '��õ�� ��籸', '200801', sysdate-5, 1840000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(3, '��ü������', '�ٱ浿', 34, '��⵵ ������', '200801', sysdate-3, 2690000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(4, '��ü������', '��浿', 36, '��⵵ ��õ��', '200802', sysdate-1, 3070000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(5, 'DB������', '���浿', 38, '��⵵ ��õ��', '200802', sysdate-0, 3460000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(6, '��ȹ������', '�ٱ浿', 40, '����� ������', '200802', sysdate-0, 3840000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(7, '������', '��浿', 42, '��õ�� ��籸', '200803', sysdate-0, 4230000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(8, 'DB������', '��浿', 42, '��⵵ ��õ��', '200803', sysdate-1, 4610000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus) VALUES(9, 'DB������', '�̱浿', 42, '����� ������', '200803', sysdate-1, 5000000, 0, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax) VALUES(10, '������', '�ű浿', 33, '����� ���Ǳ�', '200804', sysdate, 3000000, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax) VALUES(11, '������', '�ֱ浿', 31, '����� ���Ǳ�', '200804', sysdate, 2500000, 0);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax) VALUES(12, '������', '���浿', 29, '����� ���Ǳ�', '200804', sysdate, 2200000, 0);

ALTER TABLE itpay ADD(test VARCHAR2(9));
ALTER TABLE itpay MODIFY(test VARCHAR2(30));
ALTER TABLE itpay DROP COLUMN test;

SELECT * FROM itpay;
SELECT payno, part, sawon, age, bonbong FROM itpay;
SELECT payno, part, sawon, bonus, '(' || (bonus + 200000) || ')' as ���ʽ� FROM itpay;
SELECT sawon || '���� �޿��� ' || bonbong || '�Դϴ�.' as �޿� FROM itpay;
SELECT part FROM itpay;
SELECT DISTINCT part FROM itpay;

SELECT payno, part, sawon, age, bonbong FROM itpay WHERE payno=12;
SELECT payno, part, sawon, age, bonbong FROM itpay WHERE sawon='���浿';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE bonbong >= 1500000 and bonbong <= 2000000;
SELECT payno, part, sawon, age, address, bonbong FROM itpay WHERE bonbong BETWEEN 1500000 AND 2000000;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE part NOT IN('������', '��ü������');

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address = '����� ���Ǳ�';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '����� ���Ǳ�';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '��⵵ %';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '% ��õ��';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '%��õ��%';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay wHERE address LIKE '_��%';

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE bouns = NULL;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE bonus is NULL;

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '%����%' OR address LIKE '%��õ%';
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '%����%' AND bonbong >= 3000000;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE part = '������' AND address LIKE '%����%' AND bonbong >= 3000000;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE (part='������' OR part='��ü������') AND bonbong >= 3000000;

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY bonbong ASC;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY part ASC, bonbong ASC;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY age DESC, part ASC, bonbong ASC;

SELECT payno, LOWER(part), sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, UPPER(part), sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;

SELECT payno, CONCAT(part, '-' || sawon), age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, SUBSTR(address, 3), month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, SUBSTR(address, 1, 3), month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, SUBSTR(address, 2, 4), month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;
SELECT payno, LENGTH(address), month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon ASC;

SELECT bonbong, LPAD(bonbong, 10, 0) FROM itpay ORDER BY sawon ASC;
SELECT bonbong, RPAD(bonbong, 10, 0) FROM itpay ORDER BY sawon ASC;

SELECT payno, address, REPLACE(address, '��籸','������'), month, gdate, bonbong, tax, bonus FROM itpay WHERE address LIKE '%��õ%' ORDER BY sawon ASC;

SELECT ROUND(55.634, 2), ROUND(55.635, 2) FROM dual;
SELECT ROUND(23541, -1), ROUND(23541.25, -2) FROM dual;

SELECT sysdate FROM dual;
SELECT gdate, SUBSTR(gdate, 1, 10) FROM itpay;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay WHERE TO_CHAR(gdate, 'yyyy-mm-dd') = '2019-08-01';
SELECT MONTHS_BETWEEN(sysdate+1, sysdate) FROM dual;
SELECT MONTHS_BETWEEN(sysdate+31, sysdate) FROM dual;
SELECT ADD_MONTHS(sysdate, 1) FROM dual;
SELECT NEXT_DAY(sysdate, '������') FROM dual;
SELECT LAST_DAY(sysdate) FROM dual;

SELECT TO_CHAR(sysdate, 'yyyy-mm-dd hh:mi:ss') FROM dual;
SELECT TO_CHAR(sysdate, 'yyyy-mm-dd hh24:mi:ss') FROM dual;
SELECT TO_CHAR(1500, '0999999') FROM dual;
SELECT TO_CHAR(150000, '9,999') FROM dual;
SELECT TO_CHAR(150000, '999,999') FROM dual;
SELECT TO_CHAR(150000, 'S999,999') FROM dual;
SELECT TO_CHAR(1500.55, '9,999.99') FROM dual;
SELECT TO_CHAR(1500.55, '9,999.9') FROM dual;
SELECT TO_CHAR(1500.5, '9,999.999') FROM dual;

SELECT payno, part, sawon, age, address,
       month, gdate, bonbong, tax, bonus,
       family
FROM itpay;

SELECT payno, part, sawon, age, address,
       month, gdate, bonbong, tax, 
       NVL(bonus, 0) + 500000 as bonus,
       NVL(family, 0)
FROM itpay;

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax,
    CASE part
        WHEN '������' THEN 1.4*bonbong
        WHEN '��ü������' THEN 1.3*bonbong
        WHEN 'DB������' THEN 1.2*bonbong
        ELSE 1.1*bonbong
    END bonus
FROM itpay;

SELECT AVG(bonbong) FROM itpay WHERE part='������';
SELECT * FROM itpay WHERE bonbong >= (
    SELECT AVG(bonbong) FROM itpay WHERE part='������'
);
SELECT TRUNC(AVG(bonbong)) FROM itpay WHERE part = (
    SELECT part FROM itpay WHERE sawon='���浿'
);
SELECT * FROM itpay WHERE bonbong >= (
    SELECT AVG(bonbong) FROM itpay WHERE part=(
        SELECT part FROM itpay WHERE sawon='���浿'
    )
) AND part=(
    SELECT part FROM itpay WHERE sawon='���浿'
);

SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, rownum FROM itpay;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, rownum as r FROM(
    SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon
);
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, rownum as r FROM(
    SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon
) WHERE rownum >= 1 AND rownum <= 3;
---SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, rownum as r FROM(
---    SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon
---) WHERE rownum >= 4 AND rownum <= 6;
SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, r FROM(
    SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, rownum as r FROM(
        SELECT payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus FROM itpay ORDER BY sawon
    )
) WHERE r >= 4 AND r <= 6;

SELECT DISTINCT age FROM itpay WHERE bonbong >= 3500000;
SELECT * FROM itpay WHERE age IN(
    SELECT DISTINCT age FROM itpay WHERE bonbong >= 3500000
);

SELECT * FROM itpay WHERE bonbong > (
    SELECT MAX(partavg) FROM (
        SELECT AVG(bonbong) AS partavg FROM itpay GROUP BY part
    )
) AND age >= 40;

INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, family) VALUES(13, '������', '���浿', 29, '����� ���Ǳ�', '200805', sysdate, 2500000, 0, NULL, NULL);

-- INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, family) VALUES(14, '������', '���浿', 29, '����� ���Ǳ�', '200805', '2008-05-20 17:17:30', 2500000, 0, NULL, NULL);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, family) VALUES(14, '������', '���浿', 29, '����� ���Ǳ�', '200805', TO_DATE('2008-05-20 17:17:30', 'yyyy-mm-dd hh24:mi:ss'), 2500000, 0, NULL, NULL);
INSERT INTO itpay(payno, part, sawon, age, address, month, gdate, bonbong, tax, bonus, family) VALUES(15, '��ü������', '�ٱ浿', 29, '����� ���Ǳ�', '200805', TO_DATE('2008-05-20 05:17:30', 'yyyy-mm-dd hh:mi:ss'), 2500000, 0, NULL, NULL);

SELECT * FROM itpay;

DROP TABLE itpay PURGE;