/*NYC Crime Data Extract -  November-December 2022*/

/* Make sure to pull the data in correctly */
SELECT  *
FROM Crime_Data cd 
LIMIT 20

/* Extracting records from NYP Historic Data - only from the year 2000 and on */
SELECT *
FROM Crime_Data 
WHERE CMPLNT_FR_DT NOT LIKE '%%/%%/1%%%';

/* Extracting records only from the year 2000 and on */
SELECT *
FROM Crime_Data 
WHERE CMPLNT_FR_DT LIKE '%%/%%/20%%';

SELECT *
FROM Crime_Data 
WHERE CMPLNT_FR_DT LIKE '%%/%%/2021';

/* Checking data entry */
SELECT count(*)
FROM murder_and_manslaughter mam 

/* Extracting records only from the year 2018-2022 and
  uniting the created tables*/
SELECT *
FROM murder_and_manslaughter mam  
WHERE RPT_DT LIKE '%%/%%/2018'
UNION
SELECT *
FROM murder_and_manslaughter mam  
WHERE RPT_DT LIKE '%%/%%/2019'
UNION
SELECT *
FROM murder_and_manslaughter mam  
WHERE RPT_DT LIKE '%%/%%/2020'
UNION
SELECT *
FROM murder_and_manslaughter mam  
WHERE RPT_DT LIKE '%%/%%/2021'
UNION
SELECT *
FROM murder_and_manslaughter mam  
WHERE RPT_DT LIKE '%%/%%/2022';

/* Checking data entry */
SELECT COUNT(*)
FROM NYPD_Shooting_Incident_Data nsid; 

/* Extracting records only from the year 2018-2022 and
  uniting the created tables */
SELECT *
FROM NYPD_Shooting_Incident_DataHistoric nsidh 
WHERE OCCUR_DATE LIKE '%%/%%/2018'
UNION
SELECT *
FROM NYPD_Shooting_Incident_DataHistoric nsidh 
WHERE OCCUR_DATE LIKE '%%/%%/2019'
UNION
SELECT *
FROM NYPD_Shooting_Incident_DataHistoric nsidh 
WHERE OCCUR_DATE LIKE '%%/%%/2020'
UNION
SELECT *
FROM NYPD_Shooting_Incident_DataHistoric nsidh 
WHERE OCCUR_DATE LIKE '%%/%%/2021';
