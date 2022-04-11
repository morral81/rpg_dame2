--drop table PASO.PPRUEB55;

CREATE TABLE PASO.PPRUEB55 AS(
select * from guardbv1.blconvenio
WHERE BLCVESTATU = 'GEN') 
WITH DATA;